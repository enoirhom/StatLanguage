// Generated from Stat.g4 by ANTLR 4.10.1
import Antlr4

open class StatParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = StatParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(StatParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, LPAR = 1, RPAR = 2, LBRACES = 3, RBRACES = 4, COMMA = 5, 
                 CONST = 6, SEMICOLON = 7, DOT = 8, COLON = 9, RETURN = 10, 
                 PLUS = 11, MINUS = 12, TIMES = 13, DIVIDE = 14, MODULO = 15, 
                 AFFECT = 16, EQUAL = 17, DIFF = 18, LT = 19, GT = 20, LTOE = 21, 
                 GTOE = 22, NOT = 23, TRUE = 24, FALSE = 25, AND = 26, OR = 27, 
                 BOOLEANTYPE = 28, NUMBERTYPE = 29, DEVICETYPE = 30, IF = 31, 
                 ELSE = 32, ID = 33, NUMBER = 34, COMMENT = 35, WS = 36
	}

	public
	static let RULE_program = 0, RULE_varDecl = 1, RULE_funcDecl = 2, RULE_type = 3, 
            RULE_parameters = 4, RULE_varDef = 5, RULE_block = 6, RULE_statement = 7, 
            RULE_exprD = 8, RULE_exprG = 9

	public
	static let ruleNames: [String] = [
		"program", "varDecl", "funcDecl", "type", "parameters", "varDef", "block", 
		"statement", "exprD", "exprG"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'('", "')'", "'{'", "'}'", "','", "'const'", "';'", "'.'", "':'", 
		"'return'", "'+'", "'-'", "'*'", "'/'", "'%'", "'='", "'=='", "'!='", 
		"'<'", "'>'", "'<='", "'>='", "'!'", "'true'", "'false'", "'&&'", "'||'", 
		"'boolean'", "'number'", "'device'", "'if'", "'else'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "LPAR", "RPAR", "LBRACES", "RBRACES", "COMMA", "CONST", "SEMICOLON", 
		"DOT", "COLON", "RETURN", "PLUS", "MINUS", "TIMES", "DIVIDE", "MODULO", 
		"AFFECT", "EQUAL", "DIFF", "LT", "GT", "LTOE", "GTOE", "NOT", "TRUE", 
		"FALSE", "AND", "OR", "BOOLEANTYPE", "NUMBERTYPE", "DEVICETYPE", "IF", 
		"ELSE", "ID", "NUMBER", "COMMENT", "WS"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "Stat.g4" }

	override open
	func getRuleNames() -> [String] { return StatParser.ruleNames }

	override open
	func getSerializedATN() -> [Int] { return StatParser._serializedATN }

	override open
	func getATN() -> ATN { return StatParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return StatParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.10.1", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,StatParser._ATN,StatParser._decisionToDFA, StatParser._sharedContextCache)
	}


	public class ProgramContext: ParserRuleContext {
			open
			func EOF() -> TerminalNode? {
				return getToken(StatParser.Tokens.EOF.rawValue, 0)
			}
			open
			func varDecl() -> [VarDeclContext] {
				return getRuleContexts(VarDeclContext.self)
			}
			open
			func varDecl(_ i: Int) -> VarDeclContext? {
				return getRuleContext(VarDeclContext.self, i)
			}
			open
			func funcDecl() -> [FuncDeclContext] {
				return getRuleContexts(FuncDeclContext.self)
			}
			open
			func funcDecl(_ i: Int) -> FuncDeclContext? {
				return getRuleContext(FuncDeclContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return StatParser.RULE_program
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitProgram(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitProgram(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func program() throws -> ProgramContext {
		var _localctx: ProgramContext
		_localctx = ProgramContext(_ctx, getState())
		try enterRule(_localctx, 0, StatParser.RULE_program)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(23)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, StatParser.Tokens.CONST.rawValue,StatParser.Tokens.BOOLEANTYPE.rawValue,StatParser.Tokens.NUMBERTYPE.rawValue,StatParser.Tokens.DEVICETYPE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(20)
		 		try varDecl()


		 		setState(25)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(27) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(26)
		 		try funcDecl()


		 		setState(29); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == StatParser.Tokens.ID.rawValue
		 	      return testSet
		 	 }())
		 	setState(31)
		 	try match(StatParser.Tokens.EOF.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VarDeclContext: ParserRuleContext {
			open
			func varDef() -> VarDefContext? {
				return getRuleContext(VarDefContext.self, 0)
			}
			open
			func SEMICOLON() -> TerminalNode? {
				return getToken(StatParser.Tokens.SEMICOLON.rawValue, 0)
			}
			open
			func CONST() -> TerminalNode? {
				return getToken(StatParser.Tokens.CONST.rawValue, 0)
			}
			open
			func AFFECT() -> TerminalNode? {
				return getToken(StatParser.Tokens.AFFECT.rawValue, 0)
			}
			open
			func exprD() -> ExprDContext? {
				return getRuleContext(ExprDContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return StatParser.RULE_varDecl
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitVarDecl(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitVarDecl(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func varDecl() throws -> VarDeclContext {
		var _localctx: VarDeclContext
		_localctx = VarDeclContext(_ctx, getState())
		try enterRule(_localctx, 2, StatParser.RULE_varDecl)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(34)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == StatParser.Tokens.CONST.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(33)
		 		try match(StatParser.Tokens.CONST.rawValue)

		 	}

		 	setState(36)
		 	try varDef()
		 	setState(39)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == StatParser.Tokens.AFFECT.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(37)
		 		try match(StatParser.Tokens.AFFECT.rawValue)
		 		setState(38)
		 		try exprD(0)

		 	}

		 	setState(41)
		 	try match(StatParser.Tokens.SEMICOLON.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FuncDeclContext: ParserRuleContext {
			open
			func ID() -> TerminalNode? {
				return getToken(StatParser.Tokens.ID.rawValue, 0)
			}
			open
			func LPAR() -> TerminalNode? {
				return getToken(StatParser.Tokens.LPAR.rawValue, 0)
			}
			open
			func RPAR() -> TerminalNode? {
				return getToken(StatParser.Tokens.RPAR.rawValue, 0)
			}
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
			open
			func parameters() -> ParametersContext? {
				return getRuleContext(ParametersContext.self, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(StatParser.Tokens.COLON.rawValue, 0)
			}
			open
			func type() -> TypeContext? {
				return getRuleContext(TypeContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return StatParser.RULE_funcDecl
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitFuncDecl(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitFuncDecl(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func funcDecl() throws -> FuncDeclContext {
		var _localctx: FuncDeclContext
		_localctx = FuncDeclContext(_ctx, getState())
		try enterRule(_localctx, 4, StatParser.RULE_funcDecl)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(43)
		 	try match(StatParser.Tokens.ID.rawValue)
		 	setState(44)
		 	try match(StatParser.Tokens.LPAR.rawValue)
		 	setState(46)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, StatParser.Tokens.BOOLEANTYPE.rawValue,StatParser.Tokens.NUMBERTYPE.rawValue,StatParser.Tokens.DEVICETYPE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(45)
		 		try parameters()

		 	}

		 	setState(48)
		 	try match(StatParser.Tokens.RPAR.rawValue)
		 	setState(51)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == StatParser.Tokens.COLON.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(49)
		 		try match(StatParser.Tokens.COLON.rawValue)
		 		setState(50)
		 		try type()

		 	}

		 	setState(53)
		 	try block()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeContext: ParserRuleContext {
			open
			func BOOLEANTYPE() -> TerminalNode? {
				return getToken(StatParser.Tokens.BOOLEANTYPE.rawValue, 0)
			}
			open
			func NUMBERTYPE() -> TerminalNode? {
				return getToken(StatParser.Tokens.NUMBERTYPE.rawValue, 0)
			}
			open
			func DEVICETYPE() -> TerminalNode? {
				return getToken(StatParser.Tokens.DEVICETYPE.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return StatParser.RULE_type
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitType(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitType(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func type() throws -> TypeContext {
		var _localctx: TypeContext
		_localctx = TypeContext(_ctx, getState())
		try enterRule(_localctx, 6, StatParser.RULE_type)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(55)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, StatParser.Tokens.BOOLEANTYPE.rawValue,StatParser.Tokens.NUMBERTYPE.rawValue,StatParser.Tokens.DEVICETYPE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ParametersContext: ParserRuleContext {
			open
			func varDef() -> [VarDefContext] {
				return getRuleContexts(VarDefContext.self)
			}
			open
			func varDef(_ i: Int) -> VarDefContext? {
				return getRuleContext(VarDefContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(StatParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(StatParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return StatParser.RULE_parameters
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitParameters(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitParameters(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func parameters() throws -> ParametersContext {
		var _localctx: ParametersContext
		_localctx = ParametersContext(_ctx, getState())
		try enterRule(_localctx, 8, StatParser.RULE_parameters)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(57)
		 	try varDef()
		 	setState(62)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == StatParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(58)
		 		try match(StatParser.Tokens.COMMA.rawValue)
		 		setState(59)
		 		try varDef()


		 		setState(64)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VarDefContext: ParserRuleContext {
			open
			func type() -> TypeContext? {
				return getRuleContext(TypeContext.self, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(StatParser.Tokens.ID.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return StatParser.RULE_varDef
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitVarDef(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitVarDef(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func varDef() throws -> VarDefContext {
		var _localctx: VarDefContext
		_localctx = VarDefContext(_ctx, getState())
		try enterRule(_localctx, 10, StatParser.RULE_varDef)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(65)
		 	try type()
		 	setState(66)
		 	try match(StatParser.Tokens.ID.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BlockContext: ParserRuleContext {
			open
			func LBRACES() -> TerminalNode? {
				return getToken(StatParser.Tokens.LBRACES.rawValue, 0)
			}
			open
			func RBRACES() -> TerminalNode? {
				return getToken(StatParser.Tokens.RBRACES.rawValue, 0)
			}
			open
			func statement() -> [StatementContext] {
				return getRuleContexts(StatementContext.self)
			}
			open
			func statement(_ i: Int) -> StatementContext? {
				return getRuleContext(StatementContext.self, i)
			}
			open
			func varDecl() -> [VarDeclContext] {
				return getRuleContexts(VarDeclContext.self)
			}
			open
			func varDecl(_ i: Int) -> VarDeclContext? {
				return getRuleContext(VarDeclContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return StatParser.RULE_block
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitBlock(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitBlock(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func block() throws -> BlockContext {
		var _localctx: BlockContext
		_localctx = BlockContext(_ctx, getState())
		try enterRule(_localctx, 12, StatParser.RULE_block)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(68)
		 	try match(StatParser.Tokens.LBRACES.rawValue)
		 	setState(73)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, StatParser.Tokens.LPAR.rawValue,StatParser.Tokens.CONST.rawValue,StatParser.Tokens.RETURN.rawValue,StatParser.Tokens.MINUS.rawValue,StatParser.Tokens.NOT.rawValue,StatParser.Tokens.TRUE.rawValue,StatParser.Tokens.FALSE.rawValue,StatParser.Tokens.BOOLEANTYPE.rawValue,StatParser.Tokens.NUMBERTYPE.rawValue,StatParser.Tokens.DEVICETYPE.rawValue,StatParser.Tokens.IF.rawValue,StatParser.Tokens.ID.rawValue,StatParser.Tokens.NUMBER.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(71)
		 		try _errHandler.sync(self)
		 		switch (StatParser.Tokens(rawValue: try _input.LA(1))!) {
		 		case .LPAR:fallthrough
		 		case .RETURN:fallthrough
		 		case .MINUS:fallthrough
		 		case .NOT:fallthrough
		 		case .TRUE:fallthrough
		 		case .FALSE:fallthrough
		 		case .IF:fallthrough
		 		case .ID:fallthrough
		 		case .NUMBER:
		 			setState(69)
		 			try statement()

		 			break
		 		case .CONST:fallthrough
		 		case .BOOLEANTYPE:fallthrough
		 		case .NUMBERTYPE:fallthrough
		 		case .DEVICETYPE:
		 			setState(70)
		 			try varDecl()

		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}

		 		setState(75)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(76)
		 	try match(StatParser.Tokens.RBRACES.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class StatementContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return StatParser.RULE_statement
		}
	}
	public class ExprStmtContext: StatementContext {
			open
			func exprD() -> ExprDContext? {
				return getRuleContext(ExprDContext.self, 0)
			}
			open
			func SEMICOLON() -> TerminalNode? {
				return getToken(StatParser.Tokens.SEMICOLON.rawValue, 0)
			}

		public
		init(_ ctx: StatementContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitExprStmt(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitExprStmt(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class IfStmtContext: StatementContext {
			open
			func IF() -> TerminalNode? {
				return getToken(StatParser.Tokens.IF.rawValue, 0)
			}
			open
			func LPAR() -> TerminalNode? {
				return getToken(StatParser.Tokens.LPAR.rawValue, 0)
			}
			open
			func exprD() -> ExprDContext? {
				return getRuleContext(ExprDContext.self, 0)
			}
			open
			func RPAR() -> TerminalNode? {
				return getToken(StatParser.Tokens.RPAR.rawValue, 0)
			}
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}

		public
		init(_ ctx: StatementContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitIfStmt(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitIfStmt(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class IfElseStmtContext: StatementContext {
			open
			func IF() -> TerminalNode? {
				return getToken(StatParser.Tokens.IF.rawValue, 0)
			}
			open
			func LPAR() -> TerminalNode? {
				return getToken(StatParser.Tokens.LPAR.rawValue, 0)
			}
			open
			func exprD() -> ExprDContext? {
				return getRuleContext(ExprDContext.self, 0)
			}
			open
			func RPAR() -> TerminalNode? {
				return getToken(StatParser.Tokens.RPAR.rawValue, 0)
			}
			open
			func block() -> [BlockContext] {
				return getRuleContexts(BlockContext.self)
			}
			open
			func block(_ i: Int) -> BlockContext? {
				return getRuleContext(BlockContext.self, i)
			}
			open
			func ELSE() -> TerminalNode? {
				return getToken(StatParser.Tokens.ELSE.rawValue, 0)
			}

		public
		init(_ ctx: StatementContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitIfElseStmt(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitIfElseStmt(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class AssignStmtContext: StatementContext {
			open
			func exprG() -> ExprGContext? {
				return getRuleContext(ExprGContext.self, 0)
			}
			open
			func AFFECT() -> TerminalNode? {
				return getToken(StatParser.Tokens.AFFECT.rawValue, 0)
			}
			open
			func exprD() -> ExprDContext? {
				return getRuleContext(ExprDContext.self, 0)
			}
			open
			func SEMICOLON() -> TerminalNode? {
				return getToken(StatParser.Tokens.SEMICOLON.rawValue, 0)
			}

		public
		init(_ ctx: StatementContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitAssignStmt(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitAssignStmt(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class ReturnStmtContext: StatementContext {
			open
			func RETURN() -> TerminalNode? {
				return getToken(StatParser.Tokens.RETURN.rawValue, 0)
			}
			open
			func exprD() -> ExprDContext? {
				return getRuleContext(ExprDContext.self, 0)
			}
			open
			func SEMICOLON() -> TerminalNode? {
				return getToken(StatParser.Tokens.SEMICOLON.rawValue, 0)
			}

		public
		init(_ ctx: StatementContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitReturnStmt(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitReturnStmt(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func statement() throws -> StatementContext {
		var _localctx: StatementContext
		_localctx = StatementContext(_ctx, getState())
		try enterRule(_localctx, 14, StatParser.RULE_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(104)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,9, _ctx)) {
		 	case 1:
		 		_localctx =  IfStmtContext(_localctx);
		 		try enterOuterAlt(_localctx, 1)
		 		setState(78)
		 		try match(StatParser.Tokens.IF.rawValue)
		 		setState(79)
		 		try match(StatParser.Tokens.LPAR.rawValue)
		 		setState(80)
		 		try exprD(0)
		 		setState(81)
		 		try match(StatParser.Tokens.RPAR.rawValue)
		 		setState(82)
		 		try block()

		 		break
		 	case 2:
		 		_localctx =  IfElseStmtContext(_localctx);
		 		try enterOuterAlt(_localctx, 2)
		 		setState(84)
		 		try match(StatParser.Tokens.IF.rawValue)
		 		setState(85)
		 		try match(StatParser.Tokens.LPAR.rawValue)
		 		setState(86)
		 		try exprD(0)
		 		setState(87)
		 		try match(StatParser.Tokens.RPAR.rawValue)
		 		setState(88)
		 		try block()
		 		setState(89)
		 		try match(StatParser.Tokens.ELSE.rawValue)
		 		setState(90)
		 		try block()

		 		break
		 	case 3:
		 		_localctx =  AssignStmtContext(_localctx);
		 		try enterOuterAlt(_localctx, 3)
		 		setState(92)
		 		try exprG()
		 		setState(93)
		 		try match(StatParser.Tokens.AFFECT.rawValue)
		 		setState(94)
		 		try exprD(0)
		 		setState(95)
		 		try match(StatParser.Tokens.SEMICOLON.rawValue)

		 		break
		 	case 4:
		 		_localctx =  ExprStmtContext(_localctx);
		 		try enterOuterAlt(_localctx, 4)
		 		setState(97)
		 		try exprD(0)
		 		setState(98)
		 		try match(StatParser.Tokens.SEMICOLON.rawValue)

		 		break
		 	case 5:
		 		_localctx =  ReturnStmtContext(_localctx);
		 		try enterOuterAlt(_localctx, 5)
		 		setState(100)
		 		try match(StatParser.Tokens.RETURN.rawValue)
		 		setState(101)
		 		try exprD(0)
		 		setState(102)
		 		try match(StatParser.Tokens.SEMICOLON.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public class ExprDContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return StatParser.RULE_exprD
		}
	}
	public class ParensContext: ExprDContext {
			open
			func LPAR() -> TerminalNode? {
				return getToken(StatParser.Tokens.LPAR.rawValue, 0)
			}
			open
			func exprD() -> ExprDContext? {
				return getRuleContext(ExprDContext.self, 0)
			}
			open
			func RPAR() -> TerminalNode? {
				return getToken(StatParser.Tokens.RPAR.rawValue, 0)
			}

		public
		init(_ ctx: ExprDContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitParens(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitParens(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class TrueExprContext: ExprDContext {
			open
			func TRUE() -> TerminalNode? {
				return getToken(StatParser.Tokens.TRUE.rawValue, 0)
			}

		public
		init(_ ctx: ExprDContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitTrueExpr(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitTrueExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class NumberExprContext: ExprDContext {
			open
			func NUMBER() -> TerminalNode? {
				return getToken(StatParser.Tokens.NUMBER.rawValue, 0)
			}

		public
		init(_ ctx: ExprDContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitNumberExpr(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitNumberExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class PlusMinusExprContext: ExprDContext {
		public var op: Token!
			open
			func exprD() -> [ExprDContext] {
				return getRuleContexts(ExprDContext.self)
			}
			open
			func exprD(_ i: Int) -> ExprDContext? {
				return getRuleContext(ExprDContext.self, i)
			}
			open
			func PLUS() -> TerminalNode? {
				return getToken(StatParser.Tokens.PLUS.rawValue, 0)
			}
			open
			func MINUS() -> TerminalNode? {
				return getToken(StatParser.Tokens.MINUS.rawValue, 0)
			}

		public
		init(_ ctx: ExprDContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitPlusMinusExpr(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitPlusMinusExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class NotExprContext: ExprDContext {
			open
			func NOT() -> TerminalNode? {
				return getToken(StatParser.Tokens.NOT.rawValue, 0)
			}
			open
			func exprD() -> ExprDContext? {
				return getRuleContext(ExprDContext.self, 0)
			}

		public
		init(_ ctx: ExprDContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitNotExpr(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitNotExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class UnaryMinusExprContext: ExprDContext {
			open
			func MINUS() -> TerminalNode? {
				return getToken(StatParser.Tokens.MINUS.rawValue, 0)
			}
			open
			func exprD() -> ExprDContext? {
				return getRuleContext(ExprDContext.self, 0)
			}

		public
		init(_ ctx: ExprDContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitUnaryMinusExpr(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitUnaryMinusExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class TimesDivideExprContext: ExprDContext {
		public var op: Token!
			open
			func exprD() -> [ExprDContext] {
				return getRuleContexts(ExprDContext.self)
			}
			open
			func exprD(_ i: Int) -> ExprDContext? {
				return getRuleContext(ExprDContext.self, i)
			}
			open
			func TIMES() -> TerminalNode? {
				return getToken(StatParser.Tokens.TIMES.rawValue, 0)
			}
			open
			func DIVIDE() -> TerminalNode? {
				return getToken(StatParser.Tokens.DIVIDE.rawValue, 0)
			}
			open
			func MODULO() -> TerminalNode? {
				return getToken(StatParser.Tokens.MODULO.rawValue, 0)
			}

		public
		init(_ ctx: ExprDContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitTimesDivideExpr(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitTimesDivideExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class AndOrExprContext: ExprDContext {
		public var op: Token!
			open
			func exprD() -> [ExprDContext] {
				return getRuleContexts(ExprDContext.self)
			}
			open
			func exprD(_ i: Int) -> ExprDContext? {
				return getRuleContext(ExprDContext.self, i)
			}
			open
			func AND() -> TerminalNode? {
				return getToken(StatParser.Tokens.AND.rawValue, 0)
			}
			open
			func OR() -> TerminalNode? {
				return getToken(StatParser.Tokens.OR.rawValue, 0)
			}

		public
		init(_ ctx: ExprDContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitAndOrExpr(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitAndOrExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class CallExprContext: ExprDContext {
			open
			func ID() -> TerminalNode? {
				return getToken(StatParser.Tokens.ID.rawValue, 0)
			}
			open
			func LPAR() -> TerminalNode? {
				return getToken(StatParser.Tokens.LPAR.rawValue, 0)
			}
			open
			func RPAR() -> TerminalNode? {
				return getToken(StatParser.Tokens.RPAR.rawValue, 0)
			}
			open
			func exprD() -> [ExprDContext] {
				return getRuleContexts(ExprDContext.self)
			}
			open
			func exprD(_ i: Int) -> ExprDContext? {
				return getRuleContext(ExprDContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(StatParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(StatParser.Tokens.COMMA.rawValue, i)
			}

		public
		init(_ ctx: ExprDContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitCallExpr(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitCallExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class FalseExprContext: ExprDContext {
			open
			func FALSE() -> TerminalNode? {
				return getToken(StatParser.Tokens.FALSE.rawValue, 0)
			}

		public
		init(_ ctx: ExprDContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitFalseExpr(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitFalseExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class RelationExprContext: ExprDContext {
		public var op: Token!
			open
			func exprD() -> [ExprDContext] {
				return getRuleContexts(ExprDContext.self)
			}
			open
			func exprD(_ i: Int) -> ExprDContext? {
				return getRuleContext(ExprDContext.self, i)
			}
			open
			func LT() -> TerminalNode? {
				return getToken(StatParser.Tokens.LT.rawValue, 0)
			}
			open
			func GT() -> TerminalNode? {
				return getToken(StatParser.Tokens.GT.rawValue, 0)
			}
			open
			func LTOE() -> TerminalNode? {
				return getToken(StatParser.Tokens.LTOE.rawValue, 0)
			}
			open
			func GTOE() -> TerminalNode? {
				return getToken(StatParser.Tokens.GTOE.rawValue, 0)
			}

		public
		init(_ ctx: ExprDContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitRelationExpr(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitRelationExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class ExprGExprContext: ExprDContext {
			open
			func exprG() -> ExprGContext? {
				return getRuleContext(ExprGContext.self, 0)
			}

		public
		init(_ ctx: ExprDContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitExprGExpr(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitExprGExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class EqualExprContext: ExprDContext {
		public var op: Token!
			open
			func exprD() -> [ExprDContext] {
				return getRuleContexts(ExprDContext.self)
			}
			open
			func exprD(_ i: Int) -> ExprDContext? {
				return getRuleContext(ExprDContext.self, i)
			}
			open
			func EQUAL() -> TerminalNode? {
				return getToken(StatParser.Tokens.EQUAL.rawValue, 0)
			}
			open
			func DIFF() -> TerminalNode? {
				return getToken(StatParser.Tokens.DIFF.rawValue, 0)
			}

		public
		init(_ ctx: ExprDContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitEqualExpr(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitEqualExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}

	 public final  func exprD( ) throws -> ExprDContext   {
		return try exprD(0)
	}
	@discardableResult
	private func exprD(_ _p: Int) throws -> ExprDContext   {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: ExprDContext
		_localctx = ExprDContext(_ctx, _parentState)
		var _prevctx: ExprDContext = _localctx
		let _startState: Int = 16
		try enterRecursionRule(_localctx, 16, StatParser.RULE_exprD, _p)
		var _la: Int = 0
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(132)
			try _errHandler.sync(self)
			switch(try getInterpreter().adaptivePredict(_input,12, _ctx)) {
			case 1:
				_localctx = ParensContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx

				setState(107)
				try match(StatParser.Tokens.LPAR.rawValue)
				setState(108)
				try exprD(0)
				setState(109)
				try match(StatParser.Tokens.RPAR.rawValue)

				break
			case 2:
				_localctx = ExprGExprContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(111)
				try exprG()

				break
			case 3:
				_localctx = CallExprContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(112)
				try match(StatParser.Tokens.ID.rawValue)
				setState(113)
				try match(StatParser.Tokens.LPAR.rawValue)
				setState(122)
				try _errHandler.sync(self)
				_la = try _input.LA(1)
				if (//closure
				 { () -> Bool in
				      let testSet: Bool = {  () -> Bool in
				   let testArray: [Int] = [_la, StatParser.Tokens.LPAR.rawValue,StatParser.Tokens.MINUS.rawValue,StatParser.Tokens.NOT.rawValue,StatParser.Tokens.TRUE.rawValue,StatParser.Tokens.FALSE.rawValue,StatParser.Tokens.ID.rawValue,StatParser.Tokens.NUMBER.rawValue]
				    return  Utils.testBitLeftShiftArray(testArray, 0)
				}()
				      return testSet
				 }()) {
					setState(114)
					try exprD(0)
					setState(119)
					try _errHandler.sync(self)
					_la = try _input.LA(1)
					while (//closure
					 { () -> Bool in
					      let testSet: Bool = _la == StatParser.Tokens.COMMA.rawValue
					      return testSet
					 }()) {
						setState(115)
						try match(StatParser.Tokens.COMMA.rawValue)
						setState(116)
						try exprD(0)


						setState(121)
						try _errHandler.sync(self)
						_la = try _input.LA(1)
					}

				}

				setState(124)
				try match(StatParser.Tokens.RPAR.rawValue)

				break
			case 4:
				_localctx = NumberExprContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(125)
				try match(StatParser.Tokens.NUMBER.rawValue)

				break
			case 5:
				_localctx = UnaryMinusExprContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(126)
				try match(StatParser.Tokens.MINUS.rawValue)
				setState(127)
				try exprD(9)

				break
			case 6:
				_localctx = TrueExprContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(128)
				try match(StatParser.Tokens.TRUE.rawValue)

				break
			case 7:
				_localctx = FalseExprContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(129)
				try match(StatParser.Tokens.FALSE.rawValue)

				break
			case 8:
				_localctx = NotExprContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(130)
				try match(StatParser.Tokens.NOT.rawValue)
				setState(131)
				try exprD(1)

				break
			default: break
			}
			_ctx!.stop = try _input.LT(-1)
			setState(151)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,14,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					setState(149)
					try _errHandler.sync(self)
					switch(try getInterpreter().adaptivePredict(_input,13, _ctx)) {
					case 1:
						_localctx = TimesDivideExprContext(  ExprDContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, StatParser.RULE_exprD)
						setState(134)
						if (!(precpred(_ctx, 8))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 8)"))
						}
						setState(135)
						_localctx.castdown(TimesDivideExprContext.self).op = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = {  () -> Bool in
						   let testArray: [Int] = [_la, StatParser.Tokens.TIMES.rawValue,StatParser.Tokens.DIVIDE.rawValue,StatParser.Tokens.MODULO.rawValue]
						    return  Utils.testBitLeftShiftArray(testArray, 0)
						}()
						      return testSet
						 }())) {
							_localctx.castdown(TimesDivideExprContext.self).op = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(136)
						try exprD(9)

						break
					case 2:
						_localctx = PlusMinusExprContext(  ExprDContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, StatParser.RULE_exprD)
						setState(137)
						if (!(precpred(_ctx, 7))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 7)"))
						}
						setState(138)
						_localctx.castdown(PlusMinusExprContext.self).op = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = _la == StatParser.Tokens.PLUS.rawValue || _la == StatParser.Tokens.MINUS.rawValue
						      return testSet
						 }())) {
							_localctx.castdown(PlusMinusExprContext.self).op = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(139)
						try exprD(8)

						break
					case 3:
						_localctx = EqualExprContext(  ExprDContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, StatParser.RULE_exprD)
						setState(140)
						if (!(precpred(_ctx, 4))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 4)"))
						}
						setState(141)
						_localctx.castdown(EqualExprContext.self).op = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = _la == StatParser.Tokens.EQUAL.rawValue || _la == StatParser.Tokens.DIFF.rawValue
						      return testSet
						 }())) {
							_localctx.castdown(EqualExprContext.self).op = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(142)
						try exprD(5)

						break
					case 4:
						_localctx = RelationExprContext(  ExprDContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, StatParser.RULE_exprD)
						setState(143)
						if (!(precpred(_ctx, 3))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 3)"))
						}
						setState(144)
						_localctx.castdown(RelationExprContext.self).op = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = {  () -> Bool in
						   let testArray: [Int] = [_la, StatParser.Tokens.LT.rawValue,StatParser.Tokens.GT.rawValue,StatParser.Tokens.LTOE.rawValue,StatParser.Tokens.GTOE.rawValue]
						    return  Utils.testBitLeftShiftArray(testArray, 0)
						}()
						      return testSet
						 }())) {
							_localctx.castdown(RelationExprContext.self).op = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(145)
						try exprD(4)

						break
					case 5:
						_localctx = AndOrExprContext(  ExprDContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, StatParser.RULE_exprD)
						setState(146)
						if (!(precpred(_ctx, 2))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 2)"))
						}
						setState(147)
						_localctx.castdown(AndOrExprContext.self).op = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = _la == StatParser.Tokens.AND.rawValue || _la == StatParser.Tokens.OR.rawValue
						      return testSet
						 }())) {
							_localctx.castdown(AndOrExprContext.self).op = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(148)
						try exprD(3)

						break
					default: break
					}
			 
				}
				setState(153)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,14,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	public class ExprGContext: ParserRuleContext {
			open
			func ID() -> TerminalNode? {
				return getToken(StatParser.Tokens.ID.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return StatParser.RULE_exprG
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? StatVisitor {
			    return visitor.visitExprG(self)
			}
			else if let visitor = visitor as? StatBaseVisitor {
			    return visitor.visitExprG(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func exprG() throws -> ExprGContext {
		var _localctx: ExprGContext
		_localctx = ExprGContext(_ctx, getState())
		try enterRule(_localctx, 18, StatParser.RULE_exprG)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(154)
		 	try match(StatParser.Tokens.ID.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	override open
	func sempred(_ _localctx: RuleContext?, _ ruleIndex: Int,  _ predIndex: Int)throws -> Bool {
		switch (ruleIndex) {
		case  8:
			return try exprD_sempred(_localctx?.castdown(ExprDContext.self), predIndex)
	    default: return true
		}
	}
	private func exprD_sempred(_ _localctx: ExprDContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return precpred(_ctx, 8)
		    case 1:return precpred(_ctx, 7)
		    case 2:return precpred(_ctx, 4)
		    case 3:return precpred(_ctx, 3)
		    case 4:return precpred(_ctx, 2)
		    default: return true
		}
	}

	static let _serializedATN:[Int] = [
		4,1,36,157,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,2,7,
		7,7,2,8,7,8,2,9,7,9,1,0,5,0,22,8,0,10,0,12,0,25,9,0,1,0,4,0,28,8,0,11,
		0,12,0,29,1,0,1,0,1,1,3,1,35,8,1,1,1,1,1,1,1,3,1,40,8,1,1,1,1,1,1,2,1,
		2,1,2,3,2,47,8,2,1,2,1,2,1,2,3,2,52,8,2,1,2,1,2,1,3,1,3,1,4,1,4,1,4,5,
		4,61,8,4,10,4,12,4,64,9,4,1,5,1,5,1,5,1,6,1,6,1,6,5,6,72,8,6,10,6,12,6,
		75,9,6,1,6,1,6,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,
		1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,3,7,105,8,7,1,8,1,8,1,
		8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,5,8,118,8,8,10,8,12,8,121,9,8,3,8,123,
		8,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,3,8,133,8,8,1,8,1,8,1,8,1,8,1,8,1,
		8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,5,8,150,8,8,10,8,12,8,153,9,8,1,
		9,1,9,1,9,0,1,16,10,0,2,4,6,8,10,12,14,16,18,0,6,1,0,28,30,1,0,13,15,1,
		0,11,12,1,0,17,18,1,0,19,22,1,0,26,27,173,0,23,1,0,0,0,2,34,1,0,0,0,4,
		43,1,0,0,0,6,55,1,0,0,0,8,57,1,0,0,0,10,65,1,0,0,0,12,68,1,0,0,0,14,104,
		1,0,0,0,16,132,1,0,0,0,18,154,1,0,0,0,20,22,3,2,1,0,21,20,1,0,0,0,22,25,
		1,0,0,0,23,21,1,0,0,0,23,24,1,0,0,0,24,27,1,0,0,0,25,23,1,0,0,0,26,28,
		3,4,2,0,27,26,1,0,0,0,28,29,1,0,0,0,29,27,1,0,0,0,29,30,1,0,0,0,30,31,
		1,0,0,0,31,32,5,0,0,1,32,1,1,0,0,0,33,35,5,6,0,0,34,33,1,0,0,0,34,35,1,
		0,0,0,35,36,1,0,0,0,36,39,3,10,5,0,37,38,5,16,0,0,38,40,3,16,8,0,39,37,
		1,0,0,0,39,40,1,0,0,0,40,41,1,0,0,0,41,42,5,7,0,0,42,3,1,0,0,0,43,44,5,
		33,0,0,44,46,5,1,0,0,45,47,3,8,4,0,46,45,1,0,0,0,46,47,1,0,0,0,47,48,1,
		0,0,0,48,51,5,2,0,0,49,50,5,9,0,0,50,52,3,6,3,0,51,49,1,0,0,0,51,52,1,
		0,0,0,52,53,1,0,0,0,53,54,3,12,6,0,54,5,1,0,0,0,55,56,7,0,0,0,56,7,1,0,
		0,0,57,62,3,10,5,0,58,59,5,5,0,0,59,61,3,10,5,0,60,58,1,0,0,0,61,64,1,
		0,0,0,62,60,1,0,0,0,62,63,1,0,0,0,63,9,1,0,0,0,64,62,1,0,0,0,65,66,3,6,
		3,0,66,67,5,33,0,0,67,11,1,0,0,0,68,73,5,3,0,0,69,72,3,14,7,0,70,72,3,
		2,1,0,71,69,1,0,0,0,71,70,1,0,0,0,72,75,1,0,0,0,73,71,1,0,0,0,73,74,1,
		0,0,0,74,76,1,0,0,0,75,73,1,0,0,0,76,77,5,4,0,0,77,13,1,0,0,0,78,79,5,
		31,0,0,79,80,5,1,0,0,80,81,3,16,8,0,81,82,5,2,0,0,82,83,3,12,6,0,83,105,
		1,0,0,0,84,85,5,31,0,0,85,86,5,1,0,0,86,87,3,16,8,0,87,88,5,2,0,0,88,89,
		3,12,6,0,89,90,5,32,0,0,90,91,3,12,6,0,91,105,1,0,0,0,92,93,3,18,9,0,93,
		94,5,16,0,0,94,95,3,16,8,0,95,96,5,7,0,0,96,105,1,0,0,0,97,98,3,16,8,0,
		98,99,5,7,0,0,99,105,1,0,0,0,100,101,5,10,0,0,101,102,3,16,8,0,102,103,
		5,7,0,0,103,105,1,0,0,0,104,78,1,0,0,0,104,84,1,0,0,0,104,92,1,0,0,0,104,
		97,1,0,0,0,104,100,1,0,0,0,105,15,1,0,0,0,106,107,6,8,-1,0,107,108,5,1,
		0,0,108,109,3,16,8,0,109,110,5,2,0,0,110,133,1,0,0,0,111,133,3,18,9,0,
		112,113,5,33,0,0,113,122,5,1,0,0,114,119,3,16,8,0,115,116,5,5,0,0,116,
		118,3,16,8,0,117,115,1,0,0,0,118,121,1,0,0,0,119,117,1,0,0,0,119,120,1,
		0,0,0,120,123,1,0,0,0,121,119,1,0,0,0,122,114,1,0,0,0,122,123,1,0,0,0,
		123,124,1,0,0,0,124,133,5,2,0,0,125,133,5,34,0,0,126,127,5,12,0,0,127,
		133,3,16,8,9,128,133,5,24,0,0,129,133,5,25,0,0,130,131,5,23,0,0,131,133,
		3,16,8,1,132,106,1,0,0,0,132,111,1,0,0,0,132,112,1,0,0,0,132,125,1,0,0,
		0,132,126,1,0,0,0,132,128,1,0,0,0,132,129,1,0,0,0,132,130,1,0,0,0,133,
		151,1,0,0,0,134,135,10,8,0,0,135,136,7,1,0,0,136,150,3,16,8,9,137,138,
		10,7,0,0,138,139,7,2,0,0,139,150,3,16,8,8,140,141,10,4,0,0,141,142,7,3,
		0,0,142,150,3,16,8,5,143,144,10,3,0,0,144,145,7,4,0,0,145,150,3,16,8,4,
		146,147,10,2,0,0,147,148,7,5,0,0,148,150,3,16,8,3,149,134,1,0,0,0,149,
		137,1,0,0,0,149,140,1,0,0,0,149,143,1,0,0,0,149,146,1,0,0,0,150,153,1,
		0,0,0,151,149,1,0,0,0,151,152,1,0,0,0,152,17,1,0,0,0,153,151,1,0,0,0,154,
		155,5,33,0,0,155,19,1,0,0,0,15,23,29,34,39,46,51,62,71,73,104,119,122,
		132,149,151
	]

	public
	static let _ATN = try! ATNDeserializer().deserialize(_serializedATN)
}