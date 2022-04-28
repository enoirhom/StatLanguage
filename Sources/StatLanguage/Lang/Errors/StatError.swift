
enum StatError: Error {
  case symbolAlreadyDefined(symbol: Symbol)
  case unknownType
}
