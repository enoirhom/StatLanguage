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

"""

let inputStream = ANTLRInputStream(input)
let lexer = StatLexer(inputStream)
let tokenStream = CommonTokenStream(lexer)

let parser = try StatParser(tokenStream)
let programContext = try parser.program()

let visitor = StatFirstVisitor()
let _ = visitor.visit(programContext)
