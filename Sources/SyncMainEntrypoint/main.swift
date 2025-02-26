import Antlr4
import Core
import QueryParser
import QueryTranslator

let query = "(Apple AND Juice OR Beer OR \"Sparkling Water\") AND Premium"
let input = ANTLRInputStream(query)
let lexer = QueryLexer(input)
let tokenStream = CommonTokenStream(lexer)
let parser = try QueryParser(tokenStream)
let translator = QueryVisitorTranslator()
let expr = try translator.visit(parser.expr())!
print(expr.asQuery())
