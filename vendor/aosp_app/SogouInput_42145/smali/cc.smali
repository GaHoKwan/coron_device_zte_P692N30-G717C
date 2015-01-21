.class public final Lcc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lbv;

    sget-object v1, Lbt;->b:Lbt;

    invoke-direct {v0, v1}, Lbv;-><init>(Lbt;)V

    iput-object v0, p0, Lcc;->a:Lbv;

    .line 39
    return-void
.end method

.method private a([BI)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 115
    array-length v2, p1

    .line 117
    new-array v3, v2, [I

    move v1, v0

    .line 118
    :goto_0
    if-ge v1, v2, :cond_0

    .line 119
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, p2

    .line 123
    :try_start_0
    iget-object v2, p0, Lcc;->a:Lbv;

    invoke-virtual {v2, v3, v1}, Lbv;->a([II)V
    :try_end_0
    .catch Lbx; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_1
    if-ge v0, p2, :cond_1

    .line 130
    aget v1, v3, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-static {}, Ld;->a()Ld;

    move-result-object v0

    throw v0

    .line 132
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lbe;)Lbj;
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 75
    new-instance v0, Lbz;

    invoke-direct {v0, p1}, Lbz;-><init>(Lbe;)V

    .line 76
    invoke-virtual {v0, p1}, Lbz;->a(Lbe;)Lcd;

    move-result-object v2

    .line 79
    invoke-virtual {v0}, Lbz;->a()[B

    move-result-object v0

    .line 81
    invoke-static {v0, v2}, Lca;->a([BLcd;)[Lca;

    move-result-object v5

    move v0, v1

    move v2, v1

    .line 85
    :goto_0
    array-length v3, v5

    if-ge v0, v3, :cond_0

    .line 86
    aget-object v3, v5, v0

    invoke-virtual {v3}, Lca;->a()I

    move-result v3

    add-int/2addr v2, v3

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    new-array v6, v2, [B

    move v0, v1

    move v2, v1

    .line 92
    :goto_1
    array-length v3, v5

    if-ge v0, v3, :cond_2

    .line 93
    aget-object v3, v5, v0

    .line 94
    invoke-virtual {v3}, Lca;->a()[B

    move-result-object v7

    .line 95
    invoke-virtual {v3}, Lca;->a()I

    move-result v8

    .line 96
    invoke-direct {p0, v7, v8}, Lcc;->a([BI)V

    move v3, v1

    .line 97
    :goto_2
    if-ge v3, v8, :cond_1

    .line 98
    add-int/lit8 v4, v2, 0x1

    aget-byte v9, v7, v3

    aput-byte v9, v6, v2

    .line 97
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_2

    .line 92
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_2
    invoke-static {v6}, Lcb;->a([B)Lbj;

    move-result-object v0

    return-object v0
.end method
