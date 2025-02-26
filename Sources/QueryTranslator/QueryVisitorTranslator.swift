import Antlr4
import Core
import QueryParser

public final class QueryVisitorTranslator: QueryBaseVisitor<Expr> {
    override public func visitExpr(_ ctx: QueryParser.ExprContext) -> Expr? {
        if ctx.OR_OP() != nil {
            let expr = visitExpr(ctx.expr()!)!
            let term = visitTerm(ctx.term()!)!
            return Expr.orExpr(expr, term)
        } else {
            return visitTerm(ctx.term()!)
        }
    }

    override public func visitTerm(_ ctx: QueryParser.TermContext) -> Expr? {
        if ctx.AND_OP() != nil {
            let term = visitTerm(ctx.term()!)!
            let factor = visitFactor(ctx.factor()!)!
            return Expr.andExpr(term, factor)
        } else {
            return visitFactor(ctx.factor()!)
        }
    }

    override public func visitFactor(_ ctx: QueryParser.FactorContext) -> Expr? {
        if ctx.NOT_OP() != nil {
            let keywords = visitKeywords(ctx.keywords()!)!
            return Expr.notExpr(keywords)
        } else {
            return visitKeywords(ctx.keywords()!)
        }
    }

    override public func visitKeywords(_ ctx: QueryParser.KeywordsContext) -> Expr? {
        switch ctx.getChildCount() {
        case 3:
            return visitExpr(ctx.expr()!)
        default:
            return visitKeyword(ctx.keyword()!)
        }
    }

    override public func visitKeyword(_ ctx: QueryParser.KeywordContext) -> Expr? {
        return Expr.keyword(ctx.getText())
    }
}
