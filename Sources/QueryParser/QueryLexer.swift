// Generated from Query.g4 by ANTLR 4.13.2
@preconcurrency import Antlr4

open class QueryLexer: Lexer {
    nonisolated(unsafe) static var _decisionToDFA: [DFA] = {
        var decisionToDFA = [DFA]()
        let length = QueryLexer._ATN.getNumberOfDecisions()
        for i in 0 ..< length {
            decisionToDFA.append(DFA(QueryLexer._ATN.getDecisionState(i)!, i))
        }
        return decisionToDFA
    }()

    static let _sharedContextCache = PredictionContextCache()

    public
    static let T__0 = 1, T__1 = 2, AND_OP = 3, OR_OP = 4, NOT_OP = 5, QUOTED = 6, ANYCHARS = 7,
               WS = 8

    public
    static let channelNames: [String] = [
        "DEFAULT_TOKEN_CHANNEL", "HIDDEN",
    ]

    public
    static let modeNames: [String] = [
        "DEFAULT_MODE",
    ]

    public
    static let ruleNames: [String] = [
        "T__0", "T__1", "AND_OP", "OR_OP", "NOT_OP", "QUOTED", "ANYCHARS", "WS",
    ]

    private static let _LITERAL_NAMES: [String?] = [
        nil, "'('", "')'", "'AND'", "'OR'", "'NOT'",
    ]
    private static let _SYMBOLIC_NAMES: [String?] = [
        nil, nil, nil, "AND_OP", "OR_OP", "NOT_OP", "QUOTED", "ANYCHARS", "WS",
    ]
    public
    static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

    override open
    func getVocabulary() -> Vocabulary {
        return QueryLexer.VOCABULARY
    }

    public
    required init(_ input: CharStream) {
        RuntimeMetaData.checkVersion("4.13.2", RuntimeMetaData.VERSION)
        super.init(input)
        _interp = LexerATNSimulator(
            self, QueryLexer._ATN, QueryLexer._decisionToDFA, QueryLexer._sharedContextCache
        )
    }

    override open
    func getGrammarFileName() -> String
    { return "Query.g4" }

    override open
    func getRuleNames() -> [String]
    { return QueryLexer.ruleNames }

    override open
    func getSerializedATN() -> [Int]
    { return QueryLexer._serializedATN }

    override open
    func getChannelNames() -> [String]
    { return QueryLexer.channelNames }

    override open
    func getModeNames() -> [String]
    { return QueryLexer.modeNames }

    override open
    func getATN() -> ATN
    { return QueryLexer._ATN }

    static let _serializedATN: [Int] = [
        4, 0, 8, 53, 6, -1, 2, 0, 7, 0, 2, 1, 7, 1, 2, 2, 7, 2, 2, 3, 7, 3, 2, 4, 7, 4, 2, 5, 7, 5, 2,
        6, 7, 6,
        2, 7, 7, 7, 1, 0, 1, 0, 1, 1, 1, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 3, 1, 3, 1, 3, 1, 4, 1, 4, 1, 4,
        1, 4, 1,
        5, 1, 5, 5, 5, 35, 8, 5, 10, 5, 12, 5, 38, 9, 5, 1, 5, 1, 5, 1, 6, 4, 6, 43, 8, 6, 11, 6, 12, 6,
        44,
        1, 7, 4, 7, 48, 8, 7, 11, 7, 12, 7, 49, 1, 7, 1, 7, 0, 0, 8, 1, 1, 3, 2, 5, 3, 7, 4, 9, 5, 11,
        6, 13,
        7, 15, 8, 1, 0, 3, 1, 0, 34, 34, 6, 0, 10, 10, 13, 13, 32, 32, 34, 34, 40, 41, 47, 47, 3, 0, 9,
        10,
        13, 13, 32, 32, 55, 0, 1, 1, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 7, 1, 0, 0, 0, 0,
        9, 1, 0,
        0, 0, 0, 11, 1, 0, 0, 0, 0, 13, 1, 0, 0, 0, 0, 15, 1, 0, 0, 0, 1, 17, 1, 0, 0, 0, 3, 19, 1, 0,
        0, 0, 5,
        21, 1, 0, 0, 0, 7, 25, 1, 0, 0, 0, 9, 28, 1, 0, 0, 0, 11, 32, 1, 0, 0, 0, 13, 42, 1, 0, 0, 0,
        15, 47,
        1, 0, 0, 0, 17, 18, 5, 40, 0, 0, 18, 2, 1, 0, 0, 0, 19, 20, 5, 41, 0, 0, 20, 4, 1, 0, 0, 0, 21,
        22,
        5, 65, 0, 0, 22, 23, 5, 78, 0, 0, 23, 24, 5, 68, 0, 0, 24, 6, 1, 0, 0, 0, 25, 26, 5, 79, 0, 0,
        26,
        27, 5, 82, 0, 0, 27, 8, 1, 0, 0, 0, 28, 29, 5, 78, 0, 0, 29, 30, 5, 79, 0, 0, 30, 31, 5, 84, 0,
        0,
        31, 10, 1, 0, 0, 0, 32, 36, 5, 34, 0, 0, 33, 35, 8, 0, 0, 0, 34, 33, 1, 0, 0, 0, 35, 38, 1, 0,
        0, 0,
        36, 34, 1, 0, 0, 0, 36, 37, 1, 0, 0, 0, 37, 39, 1, 0, 0, 0, 38, 36, 1, 0, 0, 0, 39, 40, 5, 34,
        0, 0,
        40, 12, 1, 0, 0, 0, 41, 43, 8, 1, 0, 0, 42, 41, 1, 0, 0, 0, 43, 44, 1, 0, 0, 0, 44, 42, 1, 0, 0,
        0,
        44, 45, 1, 0, 0, 0, 45, 14, 1, 0, 0, 0, 46, 48, 7, 2, 0, 0, 47, 46, 1, 0, 0, 0, 48, 49, 1, 0, 0,
        0,
        49, 47, 1, 0, 0, 0, 49, 50, 1, 0, 0, 0, 50, 51, 1, 0, 0, 0, 51, 52, 6, 7, 0, 0, 52, 16, 1, 0, 0,
        0,
        4, 0, 36, 44, 49, 1, 6, 0, 0,
    ]

    public
    static let _ATN: ATN = try! ATNDeserializer().deserialize(_serializedATN)
}
