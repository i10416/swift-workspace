import Antlr4
import Core
import QueryParser
import QueryTranslator

let query = "(Financial AND Times OR Guardian) AND Economy"
let input = ANTLRInputStream(query)
let lexer = QueryLexer(input)
let tokenStream = CommonTokenStream(lexer)
let parser = try QueryParser(tokenStream)
let translator = QueryVisitorTranslator()
let expr = translator.visit(try parser.expr())!
print(expr.asQuery())
