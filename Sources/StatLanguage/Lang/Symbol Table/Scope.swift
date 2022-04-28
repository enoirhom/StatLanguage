
protocol Scope {
  var parent: Scope? { get }
  
  func define(symbol: Symbol) throws
  func resolve(identifier: String) -> Symbol?
}

class BaseScope: Scope {
  var parent: Scope?
  var symbols: [String:Symbol]
  
  init(parent: Scope? = nil) {
    self.parent = parent
    self.symbols = [:]
  }
  
  func define(symbol: Symbol) throws {
    if let _ = symbols[symbol.name] {
      throw StatError.symbolAlreadyDefined(symbol: symbol)
    }
    symbols[symbol.name] = symbol
  }
  
  func resolve(identifier: String) -> Symbol? {
    if let symbol = symbols[identifier] {
      return symbol
    }
    
    if let parent = parent {
      return parent.resolve(identifier: identifier)
    }
    
    return nil
  }
}
