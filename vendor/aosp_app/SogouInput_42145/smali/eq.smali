.class final Leq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final a:[B


# direct methods
.method private constructor <init>(I[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Leq;->a:I

    .line 33
    iput-object p2, p0, Leq;->a:[B

    .line 34
    return-void
.end method

.method static a([BLfg;Lfd;)[Leq;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    array-length v0, p0

    invoke-virtual {p1}, Lfg;->b()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 57
    :cond_0
    invoke-virtual {p1, p2}, Lfg;->a(Lfd;)Lfi;

    move-result-object v5

    .line 61
    invoke-virtual {v5}, Lfi;->a()[Lfh;

    move-result-object v6

    move v0, v1

    move v2, v1

    .line 62
    :goto_0
    array-length v3, v6

    if-ge v0, v3, :cond_1

    .line 63
    aget-object v3, v6, v0

    invoke-virtual {v3}, Lfh;->a()I

    move-result v3

    add-int/2addr v2, v3

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    new-array v8, v2, [Leq;

    move v0, v1

    move v2, v1

    .line 69
    :goto_1
    array-length v3, v6

    if-ge v0, v3, :cond_3

    .line 70
    aget-object v7, v6, v0

    move v3, v1

    .line 71
    :goto_2
    invoke-virtual {v7}, Lfh;->a()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 72
    invoke-virtual {v7}, Lfh;->b()I

    move-result v9

    .line 73
    invoke-virtual {v5}, Lfi;->a()I

    move-result v4

    add-int v10, v4, v9

    .line 74
    add-int/lit8 v4, v2, 0x1

    new-instance v11, Leq;

    new-array v10, v10, [B

    invoke-direct {v11, v9, v10}, Leq;-><init>(I[B)V

    aput-object v11, v8, v2

    .line 71
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_2

    .line 69
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_3
    aget-object v0, v8, v1

    iget-object v0, v0, Leq;->a:[B

    array-length v3, v0

    .line 81
    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    .line 82
    :goto_3
    if-ltz v0, :cond_4

    .line 83
    aget-object v4, v8, v0

    iget-object v4, v4, Leq;->a:[B

    array-length v4, v4

    .line 84
    if-ne v4, v3, :cond_5

    .line 89
    :cond_4
    add-int/lit8 v7, v0, 0x1

    .line 91
    invoke-virtual {v5}, Lfi;->a()I

    move-result v0

    sub-int/2addr v3, v0

    move v6, v1

    move v0, v1

    .line 95
    :goto_4
    if-ge v6, v3, :cond_7

    move v4, v0

    move v0, v1

    .line 96
    :goto_5
    if-ge v0, v2, :cond_6

    .line 97
    aget-object v5, v8, v0

    iget-object v9, v5, Leq;->a:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    aput-byte v4, v9, v6

    .line 96
    add-int/lit8 v0, v0, 0x1

    move v4, v5

    goto :goto_5

    .line 87
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 88
    goto :goto_3

    .line 95
    :cond_6
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v0, v4

    goto :goto_4

    :cond_7
    move v4, v7

    .line 101
    :goto_6
    if-ge v4, v2, :cond_8

    .line 102
    aget-object v5, v8, v4

    iget-object v6, v5, Leq;->a:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, p0, v0

    aput-byte v0, v6, v3

    .line 101
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v5

    goto :goto_6

    .line 105
    :cond_8
    aget-object v4, v8, v1

    iget-object v4, v4, Leq;->a:[B

    array-length v9, v4

    .line 106
    :goto_7
    if-ge v3, v9, :cond_b

    move v4, v1

    move v5, v0

    .line 107
    :goto_8
    if-ge v4, v2, :cond_a

    .line 108
    if-ge v4, v7, :cond_9

    move v0, v3

    .line 109
    :goto_9
    aget-object v6, v8, v4

    iget-object v10, v6, Leq;->a:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v10, v0

    .line 107
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v5, v6

    goto :goto_8

    .line 108
    :cond_9
    add-int/lit8 v0, v3, 0x1

    goto :goto_9

    .line 106
    :cond_a
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_7

    .line 112
    :cond_b
    return-object v8
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Leq;->a:I

    return v0
.end method

.method a()[B
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Leq;->a:[B

    return-object v0
.end method
