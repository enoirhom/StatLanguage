import Foundation
import Antlr4

let input = """
device gasSensor;
boolean start;

setup() {
  number x = -4;
  x = -x;
  setDevice(gasSensor, 1);
  start = false;
}

update(): number {
  setDevice(gasSensor, 1);
  start = false;
  number coucou;
  coucou = true;
}

test(number x) {
  boolean start;
}

setDevice(device d, number n) {
  boolean check = (n > 7);
  if (check && start) {
    gasSensor;
  }
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
