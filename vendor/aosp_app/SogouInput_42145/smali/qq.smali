.class Lqq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:[F


# instance fields
.field final a:J

.field final a:Ljava/lang/String;

.field final a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lqq;->b:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xdbt 0xft 0x49t 0x3ft
        0xdbt 0xft 0xc9t 0x3ft
        0xe4t 0xcbt 0x16t 0x40t
        0xdbt 0xft 0x49t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0xdbt 0xft 0x49t 0xbft
        0xdbt 0xft 0xc9t 0xbft
        0xe4t 0xcbt 0x16t 0xc0t
        0xdbt 0xft 0x49t 0xc0t
    .end array-data
.end method

.method private constructor <init>(J[FLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lqq;->a:J

    .line 48
    iput-object p3, p0, Lqq;->a:[F

    .line 49
    iput-object p4, p0, Lqq;->a:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static a(IILcom/sohu/inputmethod/gesture/Gesture;Ljava/lang/String;)Lqq;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 78
    invoke-static {p1, p2}, Lqq;->a(ILcom/sohu/inputmethod/gesture/Gesture;)[F

    move-result-object v1

    .line 79
    new-instance v0, Lqq;

    invoke-virtual {p2}, Lcom/sohu/inputmethod/gesture/Gesture;->a()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1, p3}, Lqq;-><init>(J[FLjava/lang/String;)V

    .line 80
    invoke-direct {v0}, Lqq;->a()V

    .line 85
    :goto_0
    return-object v0

    .line 82
    :cond_0
    invoke-static {p2}, Lqq;->a(Lcom/sohu/inputmethod/gesture/Gesture;)[F

    move-result-object v1

    .line 83
    new-instance v0, Lqq;

    invoke-virtual {p2}, Lcom/sohu/inputmethod/gesture/Gesture;->a()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1, p3}, Lqq;-><init>(J[FLjava/lang/String;)V

    goto :goto_0
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-object v3, p0, Lqq;->a:[F

    .line 54
    const/4 v1, 0x0

    .line 56
    array-length v4, v3

    move v2, v1

    move v1, v0

    .line 57
    :goto_0
    if-ge v1, v4, :cond_0

    .line 58
    aget v5, v3, v1

    aget v6, v3, v1

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    .line 62
    :goto_1
    if-ge v0, v4, :cond_1

    .line 63
    aget v2, v3, v0

    div-float/2addr v2, v1

    aput v2, v3, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    :cond_1
    return-void
.end method

.method private static a(ILcom/sohu/inputmethod/gesture/Gesture;)[F
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-virtual {p1}, Lcom/sohu/inputmethod/gesture/Gesture;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqo;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lqp;->a(Lqo;I)[F

    move-result-object v4

    .line 95
    invoke-static {v4}, Lqp;->a([F)[F

    move-result-object v5

    .line 96
    aget v0, v4, v10

    aget v1, v5, v10

    sub-float/2addr v0, v1

    float-to-double v0, v0

    aget v2, v4, v3

    aget v6, v5, v3

    sub-float/2addr v2, v6

    float-to-double v6, v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v6, v0

    .line 98
    neg-float v1, v6

    .line 99
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 100
    sget-object v0, Lqq;->b:[F

    array-length v7, v0

    move v2, v3

    .line 101
    :goto_0
    if-ge v2, v7, :cond_0

    .line 102
    sget-object v0, Lqq;->b:[F

    aget v0, v0, v2

    sub-float/2addr v0, v6

    .line 103
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 101
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 109
    :cond_0
    aget v0, v5, v3

    neg-float v0, v0

    aget v2, v5, v10

    neg-float v2, v2

    invoke-static {v4, v0, v2}, Lqp;->a([FFF)[F

    .line 110
    float-to-double v0, v1

    invoke-static {v4, v0, v1}, Lqp;->a([FD)[F

    .line 112
    return-object v4

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static a(Lcom/sohu/inputmethod/gesture/Gesture;)[F
    .locals 1
    .parameter

    .prologue
    .line 89
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lqp;->a(Lcom/sohu/inputmethod/gesture/Gesture;I)[F

    move-result-object v0

    return-object v0
.end method
