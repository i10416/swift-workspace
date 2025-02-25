// Generated from Query.g4 by ANTLR 4.13.2
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link QueryParser}.
 */
public protocol QueryListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link QueryParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpr(_ ctx: QueryParser.ExprContext)
	/**
	 * Exit a parse tree produced by {@link QueryParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpr(_ ctx: QueryParser.ExprContext)
	/**
	 * Enter a parse tree produced by {@link QueryParser#term}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTerm(_ ctx: QueryParser.TermContext)
	/**
	 * Exit a parse tree produced by {@link QueryParser#term}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTerm(_ ctx: QueryParser.TermContext)
	/**
	 * Enter a parse tree produced by {@link QueryParser#factor}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFactor(_ ctx: QueryParser.FactorContext)
	/**
	 * Exit a parse tree produced by {@link QueryParser#factor}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFactor(_ ctx: QueryParser.FactorContext)
	/**
	 * Enter a parse tree produced by {@link QueryParser#keywords}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterKeywords(_ ctx: QueryParser.KeywordsContext)
	/**
	 * Exit a parse tree produced by {@link QueryParser#keywords}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitKeywords(_ ctx: QueryParser.KeywordsContext)
	/**
	 * Enter a parse tree produced by {@link QueryParser#keyword}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterKeyword(_ ctx: QueryParser.KeywordContext)
	/**
	 * Exit a parse tree produced by {@link QueryParser#keyword}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitKeyword(_ ctx: QueryParser.KeywordContext)
}