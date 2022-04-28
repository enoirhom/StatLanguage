
class ScopedSymbol: BaseScope, Symbol {
  var name: String
  var type: StatType?
  var assignable: Bool
  
  init(name: String, parent: Scope, type: StatType?) {
    self.name = name
    self.type = type
    self.assignable = false
    super.init(parent: parent)
  }
}

class Function: ScopedSymbol {
  var parameters: [StatType]?
  
  init(name: String, parent: Scope, type: StatType?, parameters: [StatType]?) {
    self.parameters = parameters
    super.init(name: name, parent: parent, type: type)
  }
}
