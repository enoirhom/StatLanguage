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
  
  override func visitVarDecl(_ ctx: StatParser.VarDeclContext) -> StatType? {
    let varType = visitVarDef(ctx.varDef()!)
    guard let exprD = ctx.exprD(), let varType = varType else { return nil }
    let exprDType = visit(exprD)
    
    if varType != exprDType {
      print("type mismatch")
    }
    return varType
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
  
  override func visitCallExpr(_ ctx: StatParser.CallExprContext) -> StatType? {
    guard let id = ctx.ID()?.getText() else { return nil }
    guard let symbol = resolveSymbol(identifier: id) as? Function else { return nil }
    
    if symbol.parameters != getArgumentTypes(ctx) {
      print("Invalid argument types, expecting \(String(describing: symbol.parameters))")
    }
    
    return symbol.type
  }
  
  private func getArgumentTypes(_ ctx: StatParser.CallExprContext) -> [StatType] {
    var result: [StatType] = []
    
    for smth in ctx.exprD() {
      if let type = visit(smth) {
        result.append(type)
      }
    }
    
    return result
  }
  
  override func visitParens(_ ctx: StatParser.ParensContext) -> StatType? {
    return visitChildren(ctx)
  }
  
  override func visitExprG(_ ctx: StatParser.ExprGContext) -> StatType? {
    guard let id = ctx.ID()?.getText() else { return nil }
    return resolveSymbol(identifier: id)?.type
  }
  
  override func visitNumberExpr(_ ctx: StatParser.NumberExprContext) -> StatType? {
    return .number
  }
  
  override func visitUnaryMinusExpr(_ ctx: StatParser.UnaryMinusExprContext) -> StatType? {
    guard let exprDType = visitChildren(ctx) else { return .number }
    
    if exprDType != .number {
      print("Cannot invert expression of type \(exprDType.rawValue)")
    }
    
    return exprDType
  }
  
  override func visitTimesDivideExpr(_ ctx: StatParser.TimesDivideExprContext) -> StatType? {
    let _ = visitChildren(ctx)
    return .number
  }
  
  override func visitPlusMinusExpr(_ ctx: StatParser.PlusMinusExprContext) -> StatType? {
    let _ = visitChildren(ctx)
    return .number
  }
  
  override func visitTrueExpr(_ ctx: StatParser.TrueExprContext) -> StatType? {
    return .boolean
  }
  
  override func visitFalseExpr(_ ctx: StatParser.FalseExprContext) -> StatType? {
    return .boolean
  }
  
  override func visitEqualExpr(_ ctx: StatParser.EqualExprContext) -> StatType? {
    return .boolean
  }
  
  override func visitRelationExpr(_ ctx: StatParser.RelationExprContext) -> StatType? {
    return .boolean
  }
  
  override func visitAndOrExpr(_ ctx: StatParser.AndOrExprContext) -> StatType? {
    return .boolean
  }
  
  override func visitNotExpr(_ ctx: StatParser.NotExprContext) -> StatType? {
    return .boolean
  }
  
  private func resolveSymbol(identifier: String) -> Symbol? {
    print("resolving symbol \(identifier)")
    guard let symbol = currentScope.resolve(identifier: identifier) else {
      print("Symbol \(identifier) doesn't exist in semantic context")
      return nil
    }
    return symbol
  }
  
}
