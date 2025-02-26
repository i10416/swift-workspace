// Generated from Query.g4 by ANTLR 4.13.2
import Antlr4

/// This class provides an empty implementation of {@link QueryVisitor},
/// which can be extended to create a visitor which only needs to handle a subset
/// of the available methods.
///
/// @param <T> The return type of the visit operation. Use {@link Void} for
/// operations with no return type.
open class QueryBaseVisitor<T>: AbstractParseTreeVisitor<T> {
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation returns the result of calling
     * {@link #visitChildren} on {@code ctx}.</p>
     */
    open func visitExpr(_ ctx: QueryParser.ExprContext) -> T? { return visitChildren(ctx) }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation returns the result of calling
     * {@link #visitChildren} on {@code ctx}.</p>
     */
    open func visitTerm(_ ctx: QueryParser.TermContext) -> T? { return visitChildren(ctx) }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation returns the result of calling
     * {@link #visitChildren} on {@code ctx}.</p>
     */
    open func visitFactor(_ ctx: QueryParser.FactorContext) -> T? { return visitChildren(ctx) }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation returns the result of calling
     * {@link #visitChildren} on {@code ctx}.</p>
     */
    open func visitKeywords(_ ctx: QueryParser.KeywordsContext) -> T? { return visitChildren(ctx) }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation returns the result of calling
     * {@link #visitChildren} on {@code ctx}.</p>
     */
    open func visitKeyword(_ ctx: QueryParser.KeywordContext) -> T? { return visitChildren(ctx) }
}
