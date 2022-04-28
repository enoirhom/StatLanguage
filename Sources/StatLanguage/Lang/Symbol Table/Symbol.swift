
protocol Symbol {
  var name: String { get }
  var type: StatType? { get }
  var assignable: Bool { get }
}

class Variable: Symbol {
  var name: String
  var type: StatType?
  var assignable: Bool
  
  init(name: String, type: StatType) {
    self.name = name
    self.type = type
    self.assignable = true
  }
}

class Constant: Symbol {
  var name: String
  var type: StatType?
  var assignable: Bool
  
  init(name: String, type: StatType) {
    self.name = name
    self.type = type
    self.assignable = false
  }
}
