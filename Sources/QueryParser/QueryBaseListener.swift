// Generated from Query.g4 by ANTLR 4.13.2

import Antlr4

/// This class provides an empty implementation of {@link QueryListener},
/// which can be extended to create a listener which only needs to handle a subset
/// of the available methods.
open class QueryBaseListener: QueryListener {
    public init() {}
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func enterExpr(_: QueryParser.ExprContext) {}
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func exitExpr(_: QueryParser.ExprContext) {}

    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func enterTerm(_: QueryParser.TermContext) {}
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func exitTerm(_: QueryParser.TermContext) {}

    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func enterFactor(_: QueryParser.FactorContext) {}
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func exitFactor(_: QueryParser.FactorContext) {}

    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func enterKeywords(_: QueryParser.KeywordsContext) {}
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func exitKeywords(_: QueryParser.KeywordsContext) {}

    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func enterKeyword(_: QueryParser.KeywordContext) {}
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func exitKeyword(_: QueryParser.KeywordContext) {}

    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func enterEveryRule(_: ParserRuleContext) throws {}
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func exitEveryRule(_: ParserRuleContext) throws {}
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func visitTerminal(_: TerminalNode) {}
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func visitErrorNode(_: ErrorNode) {}
}
