.class public final Lel;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static a([I[II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    if-eqz p1, :cond_0

    array-length v0, p1

    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_1

    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x200

    if-le p2, v0, :cond_2

    .line 132
    :cond_1
    invoke-static {}, Lg;->a()Lg;

    move-result-object v0

    throw v0

    .line 136
    :cond_2
    const/4 v1, 0x0

    .line 137
    if-eqz p1, :cond_3

    .line 138
    array-length v0, p1

    .line 142
    const/4 v2, 0x3

    if-le v0, v2, :cond_3

    .line 144
    invoke-static {}, Lg;->a()Lg;

    move-result-object v0

    throw v0

    .line 147
    :cond_3
    return v1
.end method

.method private static a([II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 99
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 102
    invoke-static {}, Lg;->a()Lg;

    move-result-object v0

    throw v0

    .line 107
    :cond_0
    aget v0, p0, v2

    .line 108
    array-length v1, p0

    if-le v0, v1, :cond_1

    .line 109
    invoke-static {}, Lg;->a()Lg;

    move-result-object v0

    throw v0

    .line 111
    :cond_1
    if-nez v0, :cond_2

    .line 113
    array-length v0, p0

    if-ge p1, v0, :cond_3

    .line 114
    array-length v0, p0

    sub-int/2addr v0, p1

    aput v0, p0, v2

    .line 119
    :cond_2
    return-void

    .line 116
    :cond_3
    invoke-static {}, Lg;->a()Lg;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a(Lbe;)Lbj;
    .locals 4
    .parameter

    .prologue
    .line 74
    new-instance v0, Lej;

    invoke-direct {v0, p1}, Lej;-><init>(Lbe;)V

    .line 75
    invoke-virtual {v0}, Lej;->a()[I

    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 77
    :cond_0
    invoke-static {}, Lg;->a()Lg;

    move-result-object v0

    throw v0

    .line 80
    :cond_1
    invoke-virtual {v0}, Lej;->a()I

    move-result v2

    .line 81
    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    shl-int v2, v3, v2

    .line 82
    invoke-virtual {v0}, Lej;->b()[I

    move-result-object v0

    .line 84
    invoke-static {v1, v0, v2}, Lel;->a([I[II)I

    .line 85
    invoke-static {v1, v2}, Lel;->a([II)V

    .line 88
    invoke-static {v1}, Lek;->a([I)Lbj;

    move-result-object v0

    return-object v0
.end method
