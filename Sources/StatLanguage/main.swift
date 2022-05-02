import Foundation
import Antlr4

let input = """
device gasSensor;
bool start;

setup() {
  number x = 4;
  setDevice(gasSensor, 1);
  start = false;
}

update(): number {
  setDevice(gasSensor, 1);
  start = false;
}

test(number x) {
  bool start;
}

"""

let inputStream = ANTLRInputStream(input)
let lexer = StatLexer(inputStream)
let tokenStream = CommonTokenStream(lexer)

let parser = try StatParser(tokenStream)
let programContext = try parser.program()

let firstVisitor = FunctionDefinitionPhase()
let _ = firstVisitor.visit(programContext)

let secondVisitor = VariableDefinitionPhase(scopes: firstVisitor.scopes)
let _ = secondVisitor.visit(programContext)
