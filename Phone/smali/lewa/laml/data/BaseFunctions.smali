.class public Llewa/laml/data/BaseFunctions;
.super Llewa/laml/data/Expression$FunctionImpl;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/data/BaseFunctions$1;,
        Llewa/laml/data/BaseFunctions$Fun;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BaseFunctions"


# instance fields
.field private final mFun:Llewa/laml/data/BaseFunctions$Fun;


# direct methods
.method private constructor <init>(Llewa/laml/data/BaseFunctions$Fun;I)V
    .locals 0
    .parameter "fun"
    .parameter "i"

    .prologue
    .line 17
    invoke-direct {p0, p2}, Llewa/laml/data/Expression$FunctionImpl;-><init>(I)V

    .line 18
    iput-object p1, p0, Llewa/laml/data/BaseFunctions;->mFun:Llewa/laml/data/BaseFunctions$Fun;

    .line 19
    return-void
.end method

.method private digit(II)I
    .locals 2
    .parameter "number"
    .parameter "n"

    .prologue
    .line 22
    if-lez p2, :cond_2

    .line 23
    if-nez p1, :cond_0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 32
    :goto_0
    return v1

    .line 26
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lez p1, :cond_1

    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_1

    .line 27
    div-int/lit8 p1, p1, 0xa

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29
    :cond_1
    if-lez p1, :cond_2

    .line 30
    rem-int/lit8 v1, p1, 0xa

    goto :goto_0

    .line 32
    .end local v0           #i:I
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static load()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 36
    const-string v0, "rand"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->RAND:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 37
    const-string v0, "sin"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->SIN:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 38
    const-string v0, "cos"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->COS:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 39
    const-string v0, "tan"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->TAN:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 40
    const-string v0, "asin"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->ASIN:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 41
    const-string v0, "acos"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->ACOS:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 42
    const-string v0, "atan"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->ATAN:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 43
    const-string v0, "sinh"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->SINH:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 44
    const-string v0, "cosh"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->COSH:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 45
    const-string v0, "sqrt"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->SQRT:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 46
    const-string v0, "abs"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->ABS:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 47
    const-string v0, "len"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->LEN:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 48
    const-string v0, "round"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->ROUND:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 49
    const-string v0, "int"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->INT:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 50
    const-string v0, "isnull"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->ISNULL:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 51
    const-string v0, "not"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->NOT:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 53
    const-string v0, "min"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->MIN:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 54
    const-string v0, "max"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->MAX:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 55
    const-string v0, "digit"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->DIGIT:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 56
    const-string v0, "eq"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->EQ:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 57
    const-string v0, "ne"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->NE:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 58
    const-string v0, "ge"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->GE:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 59
    const-string v0, "gt"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->GT:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 60
    const-string v0, "le"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->LE:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 61
    const-string v0, "lt"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->LT:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 62
    const-string v0, "ifelse"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->IFELSE:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 63
    const-string v0, "eqs"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->EQS:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 64
    const-string v0, "substr"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->SUBSTR:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 65
    const-string v0, "replace"

    new-instance v1, Llewa/laml/data/BaseFunctions;

    sget-object v2, Llewa/laml/data/BaseFunctions$Fun;->REPLACE:Llewa/laml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Llewa/laml/data/BaseFunctions;-><init>(Llewa/laml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Llewa/laml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V

    .line 66
    return-void
.end method


# virtual methods
.method public evaluate([Llewa/laml/data/Expression;Llewa/laml/data/Variables;)D
    .locals 10
    .parameter "mParaExps"
    .parameter "var"

    .prologue
    const-wide/high16 v2, 0x3ff0

    const/4 v9, 0x1

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    .line 70
    sget-object v6, Llewa/laml/data/BaseFunctions$1;->$SwitchMap$lewa$laml$data$BaseFunctions$Fun:[I

    iget-object v7, p0, Llewa/laml/data/BaseFunctions;->mFun:Llewa/laml/data/BaseFunctions$Fun;

    invoke-virtual {v7}, Llewa/laml/data/BaseFunctions$Fun;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 139
    const-string v2, "BaseFunctions"

    const-string v3, "fail to evalute FunctionExpression, invalid function: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-wide v2, v4

    .line 142
    :cond_0
    :goto_1
    return-wide v2

    .line 72
    :pswitch_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    goto :goto_1

    .line 74
    :pswitch_1
    aget-object v2, p1, v8

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    goto :goto_1

    .line 76
    :pswitch_2
    aget-object v2, p1, v8

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    goto :goto_1

    .line 78
    :pswitch_3
    aget-object v2, p1, v8

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    goto :goto_1

    .line 80
    :pswitch_4
    aget-object v2, p1, v8

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    goto :goto_1

    .line 82
    :pswitch_5
    aget-object v2, p1, v8

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    goto :goto_1

    .line 84
    :pswitch_6
    aget-object v2, p1, v8

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    goto :goto_1

    .line 86
    :pswitch_7
    aget-object v2, p1, v8

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v2

    goto :goto_1

    .line 88
    :pswitch_8
    aget-object v2, p1, v8

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v2

    goto :goto_1

    .line 90
    :pswitch_9
    aget-object v2, p1, v8

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    goto :goto_1

    .line 92
    :pswitch_a
    aget-object v2, p1, v8

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    goto :goto_1

    .line 94
    :pswitch_b
    aget-object v2, p1, v8

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v2, v2

    goto :goto_1

    .line 96
    :pswitch_c
    aget-object v2, p1, v8

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    goto/16 :goto_1

    .line 98
    :pswitch_d
    aget-object v2, p1, v8

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v2, v2

    goto/16 :goto_1

    .line 100
    :pswitch_e
    aget-object v2, p1, v8

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    aget-object v4, p1, v9

    invoke-virtual {v4, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    goto/16 :goto_1

    .line 102
    :pswitch_f
    aget-object v2, p1, v8

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    aget-object v4, p1, v9

    invoke-virtual {v4, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    goto/16 :goto_1

    .line 104
    :pswitch_10
    aget-object v2, p1, v8

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    double-to-int v2, v2

    aget-object v3, p1, v9

    invoke-virtual {v3, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-direct {p0, v2, v3}, Llewa/laml/data/BaseFunctions;->digit(II)I

    move-result v2

    int-to-double v2, v2

    goto/16 :goto_1

    .line 106
    :pswitch_11
    aget-object v6, p1, v8

    invoke-virtual {v6, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v6

    aget-object v8, p1, v9

    invoke-virtual {v8, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_0

    move-wide v2, v4

    goto/16 :goto_1

    .line 108
    :pswitch_12
    aget-object v6, p1, v8

    invoke-virtual {v6, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v6

    aget-object v8, p1, v9

    invoke-virtual {v8, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    move-wide v2, v4

    goto/16 :goto_1

    .line 110
    :pswitch_13
    aget-object v6, p1, v8

    invoke-virtual {v6, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v6

    aget-object v8, p1, v9

    invoke-virtual {v8, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-gez v6, :cond_0

    move-wide v2, v4

    goto/16 :goto_1

    .line 112
    :pswitch_14
    aget-object v6, p1, v8

    invoke-virtual {v6, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v6

    aget-object v8, p1, v9

    invoke-virtual {v8, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-gtz v6, :cond_0

    move-wide v2, v4

    goto/16 :goto_1

    .line 114
    :pswitch_15
    aget-object v6, p1, v8

    invoke-virtual {v6, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v6

    aget-object v8, p1, v9

    invoke-virtual {v8, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-lez v6, :cond_0

    move-wide v2, v4

    goto/16 :goto_1

    .line 116
    :pswitch_16
    aget-object v6, p1, v8

    invoke-virtual {v6, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v6

    aget-object v8, p1, v9

    invoke-virtual {v8, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v2, v4

    goto/16 :goto_1

    .line 118
    :pswitch_17
    aget-object v6, p1, v8

    invoke-virtual {v6, p2}, Llewa/laml/data/Expression;->isNull(Llewa/laml/data/Variables;)Z

    move-result v6

    if-nez v6, :cond_0

    move-wide v2, v4

    goto/16 :goto_1

    .line 120
    :pswitch_18
    aget-object v6, p1, v8

    invoke-virtual {v6, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v6

    cmpg-double v6, v6, v4

    if-lez v6, :cond_0

    move-wide v2, v4

    goto/16 :goto_1

    .line 122
    :pswitch_19
    array-length v1, p1

    .line 123
    .local v1, len:I
    rem-int/lit8 v2, v1, 0x2

    if-eq v2, v9, :cond_1

    .line 124
    const-string v2, "BaseFunctions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "function parameter number should be 2*n+1: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Llewa/laml/data/BaseFunctions;->mFun:Llewa/laml/data/BaseFunctions$Fun;

    invoke-virtual {v6}, Llewa/laml/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    add-int/lit8 v2, v1, -0x1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_3

    .line 127
    mul-int/lit8 v2, v0, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 128
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    goto/16 :goto_1

    .line 126
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 129
    :cond_3
    add-int/lit8 v2, v1, -0x1

    aget-object v2, p1, v2

    invoke-virtual {v2, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    goto/16 :goto_1

    .line 133
    .end local v0           #i:I
    .end local v1           #len:I
    :pswitch_1a
    aget-object v6, p1, v8

    invoke-virtual {v6, p2}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v6

    aget-object v7, p1, v9

    invoke-virtual {v7, p2}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    move-wide v2, v4

    goto/16 :goto_1

    .line 135
    :pswitch_1b
    invoke-virtual {p0, p1, p2}, Llewa/laml/data/BaseFunctions;->evaluateStr([Llewa/laml/data/Expression;Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4, v5}, Llewa/laml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide v2

    goto/16 :goto_1

    .line 137
    :pswitch_1c
    invoke-virtual {p0, p1, p2}, Llewa/laml/data/BaseFunctions;->evaluateStr([Llewa/laml/data/Expression;Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4, v5}, Llewa/laml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide v2

    goto/16 :goto_1

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public evaluateStr([Llewa/laml/data/Expression;Llewa/laml/data/Variables;)Ljava/lang/String;
    .locals 13
    .parameter "mParaExps"
    .parameter "var"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 147
    const/4 v6, 0x0

    .line 148
    .local v6, str:Ljava/lang/String;
    array-length v3, p1

    .line 149
    .local v3, length:I
    sget-object v8, Llewa/laml/data/BaseFunctions$1;->$SwitchMap$lewa$laml$data$BaseFunctions$Fun:[I

    iget-object v9, p0, Llewa/laml/data/BaseFunctions;->mFun:Llewa/laml/data/BaseFunctions$Fun;

    invoke-virtual {v9}, Llewa/laml/data/BaseFunctions$Fun;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 192
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Llewa/laml/data/BaseFunctions;->evaluate([Llewa/laml/data/Expression;Llewa/laml/data/Variables;)D

    move-result-wide v8

    invoke-static {v8, v9}, Llewa/laml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v6

    :cond_0
    :goto_0
    move-object v8, v6

    .line 196
    :goto_1
    return-object v8

    .line 151
    :pswitch_1
    rem-int/lit8 v8, v3, 0x2

    if-eq v8, v10, :cond_1

    .line 152
    const-string v8, "BaseFunctions"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "function parameter number should be 2*n+1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Llewa/laml/data/BaseFunctions;->mFun:Llewa/laml/data/BaseFunctions$Fun;

    invoke-virtual {v10}, Llewa/laml/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    add-int/lit8 v8, v3, -0x1

    div-int/lit8 v8, v8, 0x2

    if-ge v1, v8, :cond_3

    .line 155
    mul-int/lit8 v8, v1, 0x2

    aget-object v8, p1, v8

    invoke-virtual {v8, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    .line 156
    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-object v8, p1, v8

    invoke-virtual {v8, p2}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 154
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 157
    :cond_3
    add-int/lit8 v8, v3, -0x1

    aget-object v8, p1, v8

    invoke-virtual {v8, p2}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 161
    .end local v1           #i:I
    :pswitch_2
    aget-object v8, p1, v11

    invoke-virtual {v8, p2}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, substr:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 164
    const/4 v8, 0x1

    :try_start_0
    aget-object v8, p1, v8

    invoke-virtual {v8, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v8

    double-to-int v2, v8

    .line 165
    .local v2, index:I
    array-length v8, p1

    if-lt v8, v12, :cond_4

    .line 166
    const/4 v8, 0x2

    aget-object v8, p1, v8

    invoke-virtual {v8, p2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v8

    double-to-int v8, v8

    add-int/2addr v8, v2

    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 168
    :cond_4
    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 170
    .end local v2           #index:I
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "BaseFunctions"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 176
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v7           #substr:Ljava/lang/String;
    :pswitch_3
    aget-object v8, p1, v11

    invoke-virtual {v8, p2}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v6

    .line 177
    if-eqz v6, :cond_0

    array-length v8, p1

    if-ne v8, v12, :cond_0

    .line 179
    const/4 v8, 0x1

    :try_start_1
    aget-object v8, p1, v8

    invoke-virtual {v8, p2}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, oldChar:Ljava/lang/String;
    const/4 v8, 0x2

    aget-object v8, p1, v8

    invoke-virtual {v8, p2}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, newChar:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 182
    if-nez v4, :cond_5

    .line 183
    const-string v4, ""

    .line 184
    :cond_5
    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto/16 :goto_0

    .line 186
    .end local v4           #newChar:Ljava/lang/String;
    .end local v5           #oldChar:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 187
    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "BaseFunctions"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Llewa/laml/data/BaseFunctions;->mFun:Llewa/laml/data/BaseFunctions$Fun;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llewa/laml/data/BaseFunctions;->mFun:Llewa/laml/data/BaseFunctions$Fun;

    invoke-virtual {v0}, Llewa/laml/data/BaseFunctions$Fun;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
