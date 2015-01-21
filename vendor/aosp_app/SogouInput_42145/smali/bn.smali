.class public Lbn;
.super Lb;
.source "SourceFile"


# instance fields
.field private a:[B

.field private a:[I


# direct methods
.method public constructor <init>(Lh;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Lb;-><init>(Lh;)V

    .line 40
    iput-object v0, p0, Lbn;->a:[B

    .line 41
    iput-object v0, p0, Lbn;->a:[I

    .line 45
    return-void
.end method

.method private static a([I)I
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 139
    array-length v7, p0

    move v2, v4

    move v0, v4

    move v1, v4

    move v3, v4

    .line 143
    :goto_0
    if-ge v2, v7, :cond_2

    .line 144
    aget v5, p0, v2

    if-le v5, v0, :cond_0

    .line 146
    aget v0, p0, v2

    move v1, v2

    .line 148
    :cond_0
    aget v5, p0, v2

    if-le v5, v3, :cond_1

    .line 149
    aget v3, p0, v2

    .line 143
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    move v5, v4

    .line 156
    :goto_1
    if-ge v4, v7, :cond_3

    .line 157
    sub-int v0, v4, v1

    .line 159
    aget v6, p0, v4

    mul-int/2addr v6, v0

    mul-int/2addr v0, v6

    .line 160
    if-le v0, v2, :cond_8

    move v2, v4

    .line 156
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v5, v2

    move v2, v0

    goto :goto_1

    .line 167
    :cond_3
    if-le v1, v5, :cond_7

    move v6, v5

    move v5, v1

    .line 177
    :goto_3
    sub-int v0, v5, v6

    shr-int/lit8 v1, v7, 0x4

    if-gt v0, v1, :cond_4

    .line 178
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 182
    :cond_4
    add-int/lit8 v4, v5, -0x1

    .line 183
    const/4 v1, -0x1

    .line 184
    add-int/lit8 v2, v5, -0x1

    :goto_4
    if-le v2, v6, :cond_5

    .line 185
    sub-int v0, v2, v6

    .line 186
    mul-int/2addr v0, v0

    sub-int v7, v5, v2

    mul-int/2addr v0, v7

    aget v7, p0, v2

    sub-int v7, v3, v7

    mul-int/2addr v0, v7

    .line 187
    if-le v0, v1, :cond_6

    move v1, v2

    .line 184
    :goto_5
    add-int/lit8 v2, v2, -0x1

    move v4, v1

    move v1, v0

    goto :goto_4

    .line 193
    :cond_5
    shl-int/lit8 v0, v4, 0x3

    return v0

    :cond_6
    move v0, v1

    move v1, v4

    goto :goto_5

    :cond_7
    move v6, v1

    goto :goto_3

    :cond_8
    move v0, v2

    move v2, v5

    goto :goto_2
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lbn;->a:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbn;->a:[B

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 126
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lbn;->a:[B

    .line 128
    :cond_1
    iget-object v0, p0, Lbn;->a:[I

    if-nez v0, :cond_3

    .line 129
    new-array v0, v3, [I

    iput-object v0, p0, Lbn;->a:[I

    .line 135
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 131
    :goto_0
    if-ge v0, v3, :cond_2

    .line 132
    iget-object v2, p0, Lbn;->a:[I

    aput v1, v2, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lh;)Lb;
    .locals 1
    .parameter

    .prologue
    .line 121
    new-instance v0, Lbn;

    invoke-direct {v0, p1}, Lbn;-><init>(Lh;)V

    return-object v0
.end method

.method public a(ILbd;)Lbd;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p0}, Lbn;->a()Lh;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lh;->a()I

    move-result v4

    .line 51
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lbd;->a()I

    move-result v3

    if-ge v3, v4, :cond_1

    .line 52
    :cond_0
    new-instance p2, Lbd;

    invoke-direct {p2, v4}, Lbd;-><init>(I)V

    .line 57
    :goto_0
    invoke-direct {p0, v4}, Lbn;->a(I)V

    .line 58
    iget-object v3, p0, Lbn;->a:[B

    invoke-virtual {v1, p1, v3}, Lh;->a(I[B)[B

    move-result-object v5

    .line 59
    iget-object v3, p0, Lbn;->a:[I

    move v1, v2

    .line 60
    :goto_1
    if-ge v1, v4, :cond_2

    .line 61
    aget-byte v6, v5, v1

    and-int/lit16 v6, v6, 0xff

    .line 62
    shr-int/lit8 v6, v6, 0x3

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p2}, Lbd;->a()V

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {v3}, Lbn;->a([I)I

    move-result v6

    .line 66
    aget-byte v1, v5, v2

    and-int/lit16 v2, v1, 0xff

    .line 67
    aget-byte v1, v5, v0

    and-int/lit16 v1, v1, 0xff

    move v3, v2

    .line 68
    :goto_2
    add-int/lit8 v2, v4, -0x1

    if-ge v0, v2, :cond_4

    .line 69
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v5, v2

    and-int/lit16 v2, v2, 0xff

    .line 71
    shl-int/lit8 v7, v1, 0x2

    sub-int v3, v7, v3

    sub-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x1

    .line 72
    if-ge v3, v6, :cond_3

    .line 73
    invoke-virtual {p2, v0}, Lbd;->a(I)V

    .line 68
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v1, v2

    goto :goto_2

    .line 78
    :cond_4
    return-object p2
.end method

.method public a()Lbe;
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0}, Lbn;->a()Lh;

    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lh;->a()I

    move-result v4

    .line 85
    invoke-virtual {v3}, Lh;->b()I

    move-result v5

    .line 86
    new-instance v6, Lbe;

    invoke-direct {v6, v4, v5}, Lbe;-><init>(II)V

    .line 90
    invoke-direct {p0, v4}, Lbn;->a(I)V

    .line 91
    iget-object v7, p0, Lbn;->a:[I

    .line 92
    const/4 v0, 0x1

    move v2, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v2, v0, :cond_1

    .line 93
    mul-int v0, v5, v2

    div-int/lit8 v0, v0, 0x5

    .line 94
    iget-object v8, p0, Lbn;->a:[B

    invoke-virtual {v3, v0, v8}, Lh;->a(I[B)[B

    move-result-object v8

    .line 95
    shl-int/lit8 v0, v4, 0x2

    div-int/lit8 v9, v0, 0x5

    .line 96
    div-int/lit8 v0, v4, 0x5

    :goto_1
    if-ge v0, v9, :cond_0

    .line 97
    aget-byte v10, v8, v0

    and-int/lit16 v10, v10, 0xff

    .line 98
    shr-int/lit8 v10, v10, 0x3

    aget v11, v7, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v7, v10

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 101
    :cond_1
    invoke-static {v7}, Lbn;->a([I)I

    move-result v7

    .line 106
    invoke-virtual {v3}, Lh;->a()[B

    move-result-object v3

    move v2, v1

    .line 107
    :goto_2
    if-ge v2, v5, :cond_4

    .line 108
    mul-int v8, v2, v4

    move v0, v1

    .line 109
    :goto_3
    if-ge v0, v4, :cond_3

    .line 110
    add-int v9, v8, v0

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    .line 111
    if-ge v9, v7, :cond_2

    .line 112
    invoke-virtual {v6, v0, v2}, Lbe;->a(II)V

    .line 109
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 107
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 117
    :cond_4
    return-object v6
.end method
