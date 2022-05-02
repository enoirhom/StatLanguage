import Antlr4

class VariableDefinitionPhase: StatBaseVisitor<StatType> {
  let scopes: ParseTreeProperty<Scope>
  var currentScope: Scope!
  
  init(scopes: ParseTreeProperty<Scope>) {
    self.scopes = scopes
  }
  
  override func visitProgram(_ ctx: StatParser.ProgramContext) -> StatType? {
    currentScope = scopes.get(ctx)
    
    let _ = visitChildren(ctx)
    
    return nil
  }
  
  override func visitFuncDecl(_ ctx: StatParser.FuncDeclContext) -> StatType? {
    currentScope = scopes.get(ctx)
    
    let _ = visitChildren(ctx)
    
    currentScope = currentScope.parent
    return nil
  }
  
  override func visitVarDef(_ ctx: StatParser.VarDefContext) -> StatType? {
    guard let typeCtx = ctx.type(),
          let type = visitType(typeCtx),
          let name = ctx.ID()?.getText()
    else {
      return nil
    }
    
    do {
      try currentScope.define(symbol: Variable(name: name, type: type))
      print("variable \(name) defined in \(String(describing: currentScope)) scope.")
    } catch {
      print("Name '\(name)' already exists in scope.")
    }
    
    
    return type
  }
  
  override func visitType(_ ctx: StatParser.TypeContext) -> StatType? {
    if let _ = ctx.BOOLEANTYPE() {
      return .bool
    }
    if let _ = ctx.NUMBERTYPE() {
      return .number
    }
    if let _ = ctx.DEVICETYPE() {
      return .device
    }
    
      return nil
  }
  
}
