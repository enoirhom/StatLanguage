
import Antlr4

class FunctionDefinitionPhase: StatBaseVisitor<StatType> {
  let scopes: ParseTreeProperty = ParseTreeProperty<Scope>()
  var currentScope: Scope = BaseScope()
  
  override func visitProgram(_ ctx: StatParser.ProgramContext) -> StatType? {
    scopes.put(ctx, currentScope)
    for funcDecl in ctx.funcDecl() {
      let _ = visitFuncDecl(funcDecl)
    }
    return nil
  }
  
  override func visitFuncDecl(_ ctx: StatParser.FuncDeclContext) -> StatType? {
    guard let name = ctx.ID()?.getText() else {
      return nil
    }
    
    let function = Function(name: name, parent: currentScope, type: getReturnType(ctx), parameters: getParametersType(ctx))
    do {
      try currentScope.define(symbol: function)
      print("function \(name) defined in global scope.")
      scopes.put(ctx, function)
    } catch {
      print("Name '\(function.name)' already exists in scope.")
    }
    
    return nil
  }
  
  private func getReturnType(_ ctx: StatParser.FuncDeclContext) -> StatType? {
    if let typeCtx = ctx.type() {
      return visitType(typeCtx)
    }
    return nil
  }
  
  private func getParametersType(_ ctx: StatParser.FuncDeclContext) -> [StatType] {
    var parametersType: [StatType] = []
    
    if let varDefCtxs = ctx.parameters()?.varDef() {
      for varDefCtx in varDefCtxs {
        let paramType = visitVarDef(varDefCtx)
        if let paramType = paramType {
          parametersType.append(paramType)
        }
      }
    }
    return parametersType
  }
  
  override func visitVarDef(_ ctx: StatParser.VarDefContext) -> StatType? {
    if let typeCtx = ctx.type(), let type = visitType(typeCtx) {
      return type
    }
    
    return nil
  }
  
  override func visitType(_ ctx: StatParser.TypeContext) -> StatType? {
    if let _ = ctx.BOOLEANTYPE() {
      return .boolean
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
