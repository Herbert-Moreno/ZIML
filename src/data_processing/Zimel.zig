pub const ZimelObject = struct {
    identifier: []const u8,
    data: union {
        i: i64,
        f: f64,
        s: []const u8,
        b: bool,
    }
};

const TokenKind = enum {
    TK_IDENTIFIER,
    TK_TABLE,
    TK_TYPE_INT,
    TK_TYPE_FLOAT,
    TK_TYPE_STRING,
    TK_TYPE_BOOL,
    TK_PAREN_LEFT,
    TK_PAREN_RIGHT,
    TK_ENTER_TABLE,
    TK_COMMA,
};

const KeywordTuple = struct {
    v1: []const u8,
    v2: TokenKind,
};

pub const keywords = [_]KeywordTuple {
    .{"(", .TK_PAREN_LEFT},
    .{")", .TK_PAREN_RIGHT},
    .{":", .TK_ENTER_TABLE},
    .{",", .TK_COMMA},
    .{"float", .TK_TYPE_FLOAT},
    .{"int", .TK_TYPE_INT},
    .{"string", .TK_TYPE_STRING},
    .{"bool", .TK_TYPE_BOOL},
};

//residentes(int id, string nome):
//  0, junior
//  1, carlos