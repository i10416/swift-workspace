import Antlr4
import Core
import QueryParser

public final class QueryListenerTranslator: QueryBaseListener {
    private var stack: [Expr] = []
    public var exprs: [Expr] {
        stack
    }

    override public func enterExpr(_ ctx: QueryParser.ExprContext) {
        if ctx.OR_OP() != nil {
            enterExpr(ctx.expr()!)
            enterTerm(ctx.term()!)
            let rhs = stack.popLast()!
            let lhs = stack.popLast()!
            stack.append(Expr.orExpr(lhs, rhs))
        } else {
            enterTerm(ctx.term()!)
        }
    }

    override public func enterTerm(_ ctx: QueryParser.TermContext) {
        if ctx.AND_OP() != nil {
            enterTerm(ctx.term()!)
            enterFactor(ctx.factor()!)
            let rhs = stack.popLast()!
            let lhs = stack.popLast()!
            stack.append(Expr.andExpr(lhs, rhs))
        } else {
            enterFactor(ctx.factor()!)
        }
    }

    override public func enterFactor(_ ctx: QueryParser.FactorContext) {
        if ctx.NOT_OP() != nil {
            enterKeywords(ctx.keywords()!)
            let keywords = stack.popLast()!
            stack.append(Expr.notExpr(keywords))
        } else {
            enterKeywords(ctx.keywords()!)
        }
    }

    override public func enterKeywords(_ ctx: QueryParser.KeywordsContext) {
        switch ctx.getChildCount() {
        case 3:
            enterExpr(ctx.expr()!)
        default:
            enterKeyword(ctx.keyword()!)
        }
    }

    override public func enterKeyword(_ ctx: QueryParser.KeywordContext) {
        stack.append(Expr.keyword(ctx.getText()))
    }
}
