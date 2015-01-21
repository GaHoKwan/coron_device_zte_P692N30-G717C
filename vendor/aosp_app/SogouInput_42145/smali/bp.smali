.class public final Lbp;
.super Lbn;
.source "SourceFile"


# instance fields
.field private a:Lbe;


# direct methods
.method public constructor <init>(Lh;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lbn;-><init>(Lh;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lbp;->a:Lbe;

    .line 50
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/16 v2, 0x28

    .line 65
    iget-object v0, p0, Lbp;->a:Lbe;

    if-nez v0, :cond_2

    .line 66
    invoke-virtual {p0}, Lbp;->a()Lh;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lh;->a()I

    move-result v0

    if-lt v0, v2, :cond_3

    invoke-virtual {v1}, Lh;->b()I

    move-result v0

    if-lt v0, v2, :cond_3

    .line 68
    invoke-virtual {v1}, Lh;->a()[B

    move-result-object v0

    .line 69
    invoke-virtual {v1}, Lh;->a()I

    move-result v3

    .line 70
    invoke-virtual {v1}, Lh;->b()I

    move-result v4

    .line 71
    shr-int/lit8 v1, v3, 0x3

    .line 72
    and-int/lit8 v2, v3, 0x7

    if-eqz v2, :cond_0

    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 75
    :cond_0
    shr-int/lit8 v2, v4, 0x3

    .line 76
    and-int/lit8 v5, v4, 0x7

    if-eqz v5, :cond_1

    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 79
    :cond_1
    invoke-static {v0, v1, v2, v3, v4}, Lbp;->a([BIIII)[[I

    move-result-object v5

    .line 81
    new-instance v6, Lbe;

    invoke-direct {v6, v3, v4}, Lbe;-><init>(II)V

    iput-object v6, p0, Lbp;->a:Lbe;

    .line 82
    iget-object v6, p0, Lbp;->a:Lbe;

    invoke-static/range {v0 .. v6}, Lbp;->a([BIIII[[ILbe;)V

    .line 88
    :cond_2
    :goto_0
    return-void

    .line 85
    :cond_3
    invoke-super {p0}, Lbn;->a()Lbe;

    move-result-object v0

    iput-object v0, p0, Lbp;->a:Lbe;

    goto :goto_0
.end method

.method private static a([BIIIILbe;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 127
    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_2

    .line 128
    add-int v0, p2, v2

    mul-int/2addr v0, p4

    add-int v3, v0, p1

    move v0, v1

    .line 129
    :goto_1
    if-ge v0, v6, :cond_1

    .line 130
    add-int v4, v3, v0

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 131
    if-ge v4, p3, :cond_0

    .line 132
    add-int v4, p1, v0

    add-int v5, p2, v2

    invoke-virtual {p5, v4, v5}, Lbe;->a(II)V

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 136
    :cond_2
    return-void
.end method

.method private static a([BIIII[[ILbe;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    const/4 v6, 0x0

    :goto_0
    if-ge v6, p2, :cond_8

    .line 96
    shl-int/lit8 v2, v6, 0x3

    .line 97
    add-int/lit8 v0, v2, 0x8

    if-lt v0, p4, :cond_0

    .line 98
    add-int/lit8 v2, p4, -0x8

    .line 100
    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, p1, :cond_7

    .line 101
    shl-int/lit8 v1, v7, 0x3

    .line 102
    add-int/lit8 v0, v1, 0x8

    if-lt v0, p3, :cond_1

    .line 103
    add-int/lit8 v1, p3, -0x8

    .line 105
    :cond_1
    const/4 v0, 0x1

    if-le v7, v0, :cond_2

    move v0, v7

    .line 106
    :goto_2
    add-int/lit8 v3, p1, -0x2

    if-ge v0, v3, :cond_3

    move v5, v0

    .line 107
    :goto_3
    const/4 v0, 0x1

    if-le v6, v0, :cond_4

    move v0, v6

    .line 108
    :goto_4
    add-int/lit8 v3, p2, -0x2

    if-ge v0, v3, :cond_5

    .line 109
    :goto_5
    const/4 v4, 0x0

    .line 110
    const/4 v3, -0x2

    :goto_6
    const/4 v8, 0x2

    if-gt v3, v8, :cond_6

    .line 111
    add-int v8, v0, v3

    aget-object v8, p5, v8

    .line 112
    add-int/lit8 v9, v5, -0x2

    aget v9, v8, v9

    add-int/2addr v4, v9

    .line 113
    add-int/lit8 v9, v5, -0x1

    aget v9, v8, v9

    add-int/2addr v4, v9

    .line 114
    aget v9, v8, v5

    add-int/2addr v4, v9

    .line 115
    add-int/lit8 v9, v5, 0x1

    aget v9, v8, v9

    add-int/2addr v4, v9

    .line 116
    add-int/lit8 v9, v5, 0x2

    aget v8, v8, v9

    add-int/2addr v4, v8

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 105
    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    .line 106
    :cond_3
    add-int/lit8 v0, p1, -0x3

    move v5, v0

    goto :goto_3

    .line 107
    :cond_4
    const/4 v0, 0x2

    goto :goto_4

    .line 108
    :cond_5
    add-int/lit8 v0, p2, -0x3

    goto :goto_5

    .line 118
    :cond_6
    div-int/lit8 v3, v4, 0x19

    move-object v0, p0

    move v4, p3

    move-object/from16 v5, p6

    .line 119
    invoke-static/range {v0 .. v5}, Lbp;->a([BIIIILbe;)V

    .line 100
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 95
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 122
    :cond_8
    return-void
.end method

.method private static a([BIIII)[[I
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    filled-new-array {p2, p1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 142
    const/4 v2, 0x0

    move v11, v2

    :goto_0
    if-ge v11, p2, :cond_8

    .line 143
    shl-int/lit8 v2, v11, 0x3

    .line 144
    add-int/lit8 v3, v2, 0x8

    move/from16 v0, p4

    if-lt v3, v0, :cond_0

    .line 145
    add-int/lit8 v2, p4, -0x8

    .line 147
    :cond_0
    const/4 v3, 0x0

    move v10, v3

    :goto_1
    if-ge v10, p1, :cond_7

    .line 148
    shl-int/lit8 v3, v10, 0x3

    .line 149
    add-int/lit8 v4, v3, 0x8

    move/from16 v0, p3

    if-lt v4, v0, :cond_1

    .line 150
    add-int/lit8 v3, p3, -0x8

    .line 152
    :cond_1
    const/4 v7, 0x0

    .line 153
    const/16 v6, 0xff

    .line 154
    const/4 v5, 0x0

    .line 155
    const/4 v4, 0x0

    move v9, v4

    :goto_2
    const/16 v4, 0x8

    if-ge v9, v4, :cond_4

    .line 156
    add-int v4, v2, v9

    mul-int v4, v4, p3

    add-int v12, v4, v3

    .line 157
    const/4 v4, 0x0

    move v8, v7

    move v7, v4

    :goto_3
    const/16 v4, 0x8

    if-ge v7, v4, :cond_3

    .line 158
    add-int v4, v12, v7

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 159
    add-int/2addr v8, v4

    .line 160
    if-ge v4, v6, :cond_2

    move v6, v4

    .line 163
    :cond_2
    if-le v4, v5, :cond_9

    .line 157
    :goto_4
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v5, v4

    goto :goto_3

    .line 155
    :cond_3
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    move v7, v8

    goto :goto_2

    .line 173
    :cond_4
    sub-int v3, v5, v6

    const/16 v4, 0x18

    if-le v3, v4, :cond_5

    .line 174
    shr-int/lit8 v3, v7, 0x6

    .line 179
    :goto_5
    aget-object v4, v1, v11

    aput v3, v4, v10

    .line 147
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_1

    .line 177
    :cond_5
    if-nez v5, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    shr-int/lit8 v3, v6, 0x1

    goto :goto_5

    .line 142
    :cond_7
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_0

    .line 182
    :cond_8
    return-object v1

    :cond_9
    move v4, v5

    goto :goto_4
.end method


# virtual methods
.method public a(Lh;)Lb;
    .locals 1
    .parameter

    .prologue
    .line 58
    new-instance v0, Lbp;

    invoke-direct {v0, p1}, Lbp;-><init>(Lh;)V

    return-object v0
.end method

.method public a()Lbe;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lbp;->a()V

    .line 54
    iget-object v0, p0, Lbp;->a:Lbe;

    return-object v0
.end method
