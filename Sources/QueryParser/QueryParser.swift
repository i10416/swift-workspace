// Generated from Query.g4 by ANTLR 4.13.2
@preconcurrency import Antlr4

open class QueryParser: Parser {

	nonisolated(unsafe) internal static var _decisionToDFA: [DFA] = {
		var decisionToDFA = [DFA]()
		let length = QueryParser._ATN.getNumberOfDecisions()
		for i in 0..<length {
			decisionToDFA.append(DFA(QueryParser._ATN.getDecisionState(i)!, i))
		}
		return decisionToDFA
	}()

	internal static let _sharedContextCache = PredictionContextCache()

	public
		enum Tokens: Int
	{
		case EOF = -1
		case T__0 = 1
		case T__1 = 2
		case AND_OP = 3
		case OR_OP = 4
		case NOT_OP = 5
		case
			ANYCHARS = 6
		case WS = 7
	}

	public
		static let RULE_expr = 0, RULE_term = 1, RULE_factor = 2, RULE_keywords = 3,
			RULE_anychars = 4

	public
		static let ruleNames: [String] = [
			"expr", "term", "factor", "keywords", "anychars",
		]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'('", "')'", "'AND'", "'OR'", "'NOT'",
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, "AND_OP", "OR_OP", "NOT_OP", "ANYCHARS", "WS",
	]
	public
		static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
		func getGrammarFileName() -> String
	{ return "Query.g4" }

	override open
		func getRuleNames() -> [String]
	{ return QueryParser.ruleNames }

	override open
		func getSerializedATN() -> [Int]
	{ return QueryParser._serializedATN }

	override open
		func getATN() -> ATN
	{ return QueryParser._ATN }

	override open
		func getVocabulary() -> Vocabulary
	{
		return QueryParser.VOCABULARY
	}

	override public
		init(_ input: TokenStream) throws
	{
		RuntimeMetaData.checkVersion("4.13.2", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(
			self, QueryParser._ATN, QueryParser._decisionToDFA, QueryParser._sharedContextCache)
	}

	public class ExprContext: ParserRuleContext {
		open
			func term() -> TermContext?
		{
			return getRuleContext(TermContext.self, 0)
		}
		open
			func expr() -> ExprContext?
		{
			return getRuleContext(ExprContext.self, 0)
		}
		open
			func OR_OP() -> TerminalNode?
		{
			return getToken(QueryParser.Tokens.OR_OP.rawValue, 0)
		}
		override open
			func getRuleIndex() -> Int
		{
			return QueryParser.RULE_expr
		}
		override open
			func enterRule(_ listener: ParseTreeListener)
		{
			if let listener = listener as? QueryListener {
				listener.enterExpr(self)
			}
		}
		override open
			func exitRule(_ listener: ParseTreeListener)
		{
			if let listener = listener as? QueryListener {
				listener.exitExpr(self)
			}
		}
	}

	public final func expr() throws -> ExprContext {
		return try expr(0)
	}
	@discardableResult
	private func expr(_ _p: Int) throws -> ExprContext {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: ExprContext
		_localctx = ExprContext(_ctx, _parentState)
		var _prevctx: ExprContext = _localctx
		let _startState: Int = 0
		try enterRecursionRule(_localctx, 0, QueryParser.RULE_expr, _p)
		defer {
			try! unrollRecursionContexts(_parentctx)
		}
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(11)
			try term(0)

			_ctx!.stop = try _input.LT(-1)
			setState(18)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input, 0, _ctx)
			while _alt != 2 && _alt != ATN.INVALID_ALT_NUMBER {
				if _alt == 1 {
					if _parseListeners != nil {
						try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					_localctx = ExprContext(_parentctx, _parentState)
					try pushNewRecursionContext(_localctx, _startState, QueryParser.RULE_expr)
					setState(13)
					if !(precpred(_ctx, 1)) {
						throw ANTLRException.recognition(
							e: FailedPredicateException(self, "precpred(_ctx, 1)"))
					}
					setState(14)
					try match(QueryParser.Tokens.OR_OP.rawValue)
					setState(15)
					try term(0)

				}
				setState(20)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input, 0, _ctx)
			}

		} catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TermContext: ParserRuleContext {
		open
			func factor() -> FactorContext?
		{
			return getRuleContext(FactorContext.self, 0)
		}
		open
			func term() -> TermContext?
		{
			return getRuleContext(TermContext.self, 0)
		}
		open
			func AND_OP() -> TerminalNode?
		{
			return getToken(QueryParser.Tokens.AND_OP.rawValue, 0)
		}
		override open
			func getRuleIndex() -> Int
		{
			return QueryParser.RULE_term
		}
		override open
			func enterRule(_ listener: ParseTreeListener)
		{
			if let listener = listener as? QueryListener {
				listener.enterTerm(self)
			}
		}
		override open
			func exitRule(_ listener: ParseTreeListener)
		{
			if let listener = listener as? QueryListener {
				listener.exitTerm(self)
			}
		}
	}

	public final func term() throws -> TermContext {
		return try term(0)
	}
	@discardableResult
	private func term(_ _p: Int) throws -> TermContext {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: TermContext
		_localctx = TermContext(_ctx, _parentState)
		var _prevctx: TermContext = _localctx
		let _startState: Int = 2
		try enterRecursionRule(_localctx, 2, QueryParser.RULE_term, _p)
		defer {
			try! unrollRecursionContexts(_parentctx)
		}
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(22)
			try factor()

			_ctx!.stop = try _input.LT(-1)
			setState(29)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input, 1, _ctx)
			while _alt != 2 && _alt != ATN.INVALID_ALT_NUMBER {
				if _alt == 1 {
					if _parseListeners != nil {
						try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					_localctx = TermContext(_parentctx, _parentState)
					try pushNewRecursionContext(_localctx, _startState, QueryParser.RULE_term)
					setState(24)
					if !(precpred(_ctx, 1)) {
						throw ANTLRException.recognition(
							e: FailedPredicateException(self, "precpred(_ctx, 1)"))
					}
					setState(25)
					try match(QueryParser.Tokens.AND_OP.rawValue)
					setState(26)
					try factor()

				}
				setState(31)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input, 1, _ctx)
			}

		} catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FactorContext: ParserRuleContext {
		open
			func keywords() -> KeywordsContext?
		{
			return getRuleContext(KeywordsContext.self, 0)
		}
		open
			func NOT_OP() -> TerminalNode?
		{
			return getToken(QueryParser.Tokens.NOT_OP.rawValue, 0)
		}
		override open
			func getRuleIndex() -> Int
		{
			return QueryParser.RULE_factor
		}
		override open
			func enterRule(_ listener: ParseTreeListener)
		{
			if let listener = listener as? QueryListener {
				listener.enterFactor(self)
			}
		}
		override open
			func exitRule(_ listener: ParseTreeListener)
		{
			if let listener = listener as? QueryListener {
				listener.exitFactor(self)
			}
		}
	}
	@discardableResult
	open func factor() throws -> FactorContext {
		var _localctx: FactorContext
		_localctx = FactorContext(_ctx, getState())
		try enterRule(_localctx, 4, QueryParser.RULE_factor)
		defer {
			try! exitRule()
		}
		do {
			setState(35)
			try _errHandler.sync(self)
			switch QueryParser.Tokens(rawValue: try _input.LA(1))! {
			case .T__0, .ANYCHARS:
				try enterOuterAlt(_localctx, 1)
				setState(32)
				try keywords()

				break

			case .NOT_OP:
				try enterOuterAlt(_localctx, 2)
				setState(33)
				try match(QueryParser.Tokens.NOT_OP.rawValue)
				setState(34)
				try keywords()

				break
			default:
				throw ANTLRException.recognition(e: NoViableAltException(self))
			}
		} catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class KeywordsContext: ParserRuleContext {
		open
			func expr() -> ExprContext?
		{
			return getRuleContext(ExprContext.self, 0)
		}
		open
			func anychars() -> AnycharsContext?
		{
			return getRuleContext(AnycharsContext.self, 0)
		}
		override open
			func getRuleIndex() -> Int
		{
			return QueryParser.RULE_keywords
		}
		override open
			func enterRule(_ listener: ParseTreeListener)
		{
			if let listener = listener as? QueryListener {
				listener.enterKeywords(self)
			}
		}
		override open
			func exitRule(_ listener: ParseTreeListener)
		{
			if let listener = listener as? QueryListener {
				listener.exitKeywords(self)
			}
		}
	}
	@discardableResult
	open func keywords() throws -> KeywordsContext {
		var _localctx: KeywordsContext
		_localctx = KeywordsContext(_ctx, getState())
		try enterRule(_localctx, 6, QueryParser.RULE_keywords)
		defer {
			try! exitRule()
		}
		do {
			setState(42)
			try _errHandler.sync(self)
			switch QueryParser.Tokens(rawValue: try _input.LA(1))! {
			case .T__0:
				try enterOuterAlt(_localctx, 1)
				setState(37)
				try match(QueryParser.Tokens.T__0.rawValue)
				setState(38)
				try expr(0)
				setState(39)
				try match(QueryParser.Tokens.T__1.rawValue)

				break

			case .ANYCHARS:
				try enterOuterAlt(_localctx, 2)
				setState(41)
				try anychars()

				break
			default:
				throw ANTLRException.recognition(e: NoViableAltException(self))
			}
		} catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class AnycharsContext: ParserRuleContext {
		open
			func ANYCHARS() -> TerminalNode?
		{
			return getToken(QueryParser.Tokens.ANYCHARS.rawValue, 0)
		}
		override open
			func getRuleIndex() -> Int
		{
			return QueryParser.RULE_anychars
		}
		override open
			func enterRule(_ listener: ParseTreeListener)
		{
			if let listener = listener as? QueryListener {
				listener.enterAnychars(self)
			}
		}
		override open
			func exitRule(_ listener: ParseTreeListener)
		{
			if let listener = listener as? QueryListener {
				listener.exitAnychars(self)
			}
		}
	}
	@discardableResult
	open func anychars() throws -> AnycharsContext {
		var _localctx: AnycharsContext
		_localctx = AnycharsContext(_ctx, getState())
		try enterRule(_localctx, 8, QueryParser.RULE_anychars)
		defer {
			try! exitRule()
		}
		do {
			try enterOuterAlt(_localctx, 1)
			setState(44)
			try match(QueryParser.Tokens.ANYCHARS.rawValue)

		} catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	override open
		func sempred(_ _localctx: RuleContext?, _ ruleIndex: Int, _ predIndex: Int) throws -> Bool
	{
		switch ruleIndex {
		case 0:
			return try expr_sempred(_localctx?.castdown(ExprContext.self), predIndex)
		case 1:
			return try term_sempred(_localctx?.castdown(TermContext.self), predIndex)
		default: return true
		}
	}
	private func expr_sempred(_ _localctx: ExprContext!, _ predIndex: Int) throws -> Bool {
		switch predIndex {
		case 0: return precpred(_ctx, 1)
		default: return true
		}
	}
	private func term_sempred(_ _localctx: TermContext!, _ predIndex: Int) throws -> Bool {
		switch predIndex {
		case 1: return precpred(_ctx, 1)
		default: return true
		}
	}

	static let _serializedATN: [Int] = [
		4, 1, 7, 47, 2, 0, 7, 0, 2, 1, 7, 1, 2, 2, 7, 2, 2, 3, 7, 3, 2, 4, 7, 4, 1, 0, 1, 0, 1, 0,
		1, 0, 1, 0, 1,
		0, 5, 0, 17, 8, 0, 10, 0, 12, 0, 20, 9, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5, 1, 28, 8,
		1, 10, 1,
		12, 1, 31, 9, 1, 1, 2, 1, 2, 1, 2, 3, 2, 36, 8, 2, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 3, 3, 43,
		8, 3, 1, 4,
		1, 4, 1, 4, 0, 2, 0, 2, 5, 0, 2, 4, 6, 8, 0, 0, 45, 0, 10, 1, 0, 0, 0, 2, 21, 1, 0, 0, 0, 4,
		35, 1, 0,
		0, 0, 6, 42, 1, 0, 0, 0, 8, 44, 1, 0, 0, 0, 10, 11, 6, 0, -1, 0, 11, 12, 3, 2, 1, 0, 12, 18,
		1, 0, 0,
		0, 13, 14, 10, 1, 0, 0, 14, 15, 5, 4, 0, 0, 15, 17, 3, 2, 1, 0, 16, 13, 1, 0, 0, 0, 17, 20,
		1, 0, 0,
		0, 18, 16, 1, 0, 0, 0, 18, 19, 1, 0, 0, 0, 19, 1, 1, 0, 0, 0, 20, 18, 1, 0, 0, 0, 21, 22, 6,
		1, -1,
		0, 22, 23, 3, 4, 2, 0, 23, 29, 1, 0, 0, 0, 24, 25, 10, 1, 0, 0, 25, 26, 5, 3, 0, 0, 26, 28,
		3, 4, 2,
		0, 27, 24, 1, 0, 0, 0, 28, 31, 1, 0, 0, 0, 29, 27, 1, 0, 0, 0, 29, 30, 1, 0, 0, 0, 30, 3, 1,
		0, 0, 0,
		31, 29, 1, 0, 0, 0, 32, 36, 3, 6, 3, 0, 33, 34, 5, 5, 0, 0, 34, 36, 3, 6, 3, 0, 35, 32, 1,
		0, 0, 0,
		35, 33, 1, 0, 0, 0, 36, 5, 1, 0, 0, 0, 37, 38, 5, 1, 0, 0, 38, 39, 3, 0, 0, 0, 39, 40, 5, 2,
		0, 0, 40,
		43, 1, 0, 0, 0, 41, 43, 3, 8, 4, 0, 42, 37, 1, 0, 0, 0, 42, 41, 1, 0, 0, 0, 43, 7, 1, 0, 0,
		0, 44, 45,
		5, 6, 0, 0, 45, 9, 1, 0, 0, 0, 4, 18, 29, 35, 42,
	]

	public
		static let _ATN = try! ATNDeserializer().deserialize(_serializedATN)
}
