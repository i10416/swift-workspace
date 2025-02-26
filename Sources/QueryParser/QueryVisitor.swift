// Generated from Query.g4 by ANTLR 4.13.2
import Antlr4

/// This interface defines a complete generic visitor for a parse tree produced
/// by {@link QueryParser}.
///
/// @param <T> The return type of the visit operation. Use {@link Void} for
/// operations with no return type.
open class QueryVisitor<T>: ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link QueryParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitExpr(_ ctx: QueryParser.ExprContext) -> T {
		fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link QueryParser#term}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitTerm(_ ctx: QueryParser.TermContext) -> T {
		fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link QueryParser#factor}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitFactor(_ ctx: QueryParser.FactorContext) -> T {
		fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link QueryParser#keywords}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitKeywords(_ ctx: QueryParser.KeywordsContext) -> T {
		fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link QueryParser#keyword}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitKeyword(_ ctx: QueryParser.KeywordContext) -> T {
		fatalError(#function + " must be overridden")
	}

}
