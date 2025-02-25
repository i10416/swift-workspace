import Antlr4
import Core
import QueryParser
import QueryTranslator

let query = "(Financial AND Times OR Guardian) AND Economy"
let input = ANTLRInputStream(query)
let lexer = QueryLexer(input)
let tokenStream = CommonTokenStream(lexer)
let parser = try QueryParser(tokenStream)
let translator = QueryTranslator()
let _ = try parser.expr().enterRule(translator)
print(translator.exprs[0].asQuery())
