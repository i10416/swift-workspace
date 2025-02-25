public indirect enum Expr {
    case andExpr(Expr, Expr)
    case orExpr(Expr, Expr)
    case notExpr(Expr)
    case keyword(String)
}

extension Expr {
    public func and(_ another: Expr) -> Expr {
        .andExpr(self, another)
    }
    public func or(_ another: Expr) -> Expr {
        .orExpr(self, another)
    }
    public func asQuery() -> String {
        switch self {
        case let .andExpr(expr0, expr1):
            "\(expr0.asQuery()) AND \(expr1.asQuery())"
        case let .orExpr(expr0, expr1):
            "(\(expr0.asQuery()) OR \(expr1.asQuery()))"
        case let .notExpr(expr):
          "NOT \(expr.asQuery())"
        case let .keyword(keyword):
            keyword
        }
    }
}
