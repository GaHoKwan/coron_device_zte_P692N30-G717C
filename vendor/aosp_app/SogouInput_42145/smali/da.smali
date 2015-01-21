.class public abstract Lda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a([I[II)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 253
    array-length v5, p0

    move v2, v1

    move v3, v1

    move v4, v1

    .line 256
    :goto_0
    if-ge v2, v5, :cond_0

    .line 257
    aget v6, p0, v2

    add-int/2addr v4, v6

    .line 258
    aget v6, p1, v2

    add-int/2addr v3, v6

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    :cond_0
    if-ge v4, v3, :cond_2

    .line 281
    :cond_1
    :goto_1
    return v0

    .line 268
    :cond_2
    shl-int/lit8 v2, v4, 0x8

    div-int v6, v2, v3

    .line 269
    mul-int v2, p2, v6

    shr-int/lit8 v7, v2, 0x8

    move v2, v1

    move v3, v1

    .line 272
    :goto_2
    if-ge v2, v5, :cond_4

    .line 273
    aget v1, p0, v2

    shl-int/lit8 v1, v1, 0x8

    .line 274
    aget v8, p1, v2

    mul-int/2addr v8, v6

    .line 275
    if-le v1, v8, :cond_3

    sub-int/2addr v1, v8

    .line 276
    :goto_3
    if-gt v1, v7, :cond_1

    .line 279
    add-int/2addr v3, v1

    .line 272
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 275
    :cond_3
    sub-int v1, v8, v1

    goto :goto_3

    .line 281
    :cond_4
    div-int v0, v3, v4

    goto :goto_1
.end method

.method protected static a(Lbd;I[I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    array-length v5, p2

    move v0, v2

    .line 190
    :goto_0
    if-ge v0, v5, :cond_0

    .line 191
    aput v2, p2, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lbd;->a()I

    move-result v6

    .line 194
    if-lt p1, v6, :cond_1

    .line 195
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 197
    :cond_1
    invoke-virtual {p0, p1}, Lbd;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v4, v0

    move v0, v2

    .line 200
    :goto_2
    if-ge p1, v6, :cond_8

    .line 201
    invoke-virtual {p0, p1}, Lbd;->a(I)Z

    move-result v3

    .line 202
    xor-int/2addr v3, v4

    if-eqz v3, :cond_3

    .line 203
    aget v3, p2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, p2, v0

    move v3, v4

    .line 213
    :goto_3
    add-int/lit8 p1, p1, 0x1

    move v4, v3

    .line 214
    goto :goto_2

    :cond_2
    move v0, v2

    .line 197
    goto :goto_1

    .line 205
    :cond_3
    add-int/lit8 v3, v0, 0x1

    .line 206
    if-ne v3, v5, :cond_5

    .line 217
    :goto_4
    if-eq v3, v5, :cond_7

    add-int/lit8 v0, v5, -0x1

    if-ne v3, v0, :cond_4

    if-eq p1, v6, :cond_7

    .line 218
    :cond_4
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 209
    :cond_5
    aput v1, p2, v3

    .line 210
    if-nez v4, :cond_6

    move v0, v1

    :goto_5
    move v7, v3

    move v3, v0

    move v0, v7

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_5

    .line 220
    :cond_7
    return-void

    :cond_8
    move v3, v0

    goto :goto_4
.end method

.method private b(Lc;Ljava/util/Hashtable;)Ln;
    .locals 17
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-virtual/range {p1 .. p1}, Lc;->a()I

    move-result v8

    .line 101
    invoke-virtual/range {p1 .. p1}, Lc;->b()I

    move-result v2

    .line 102
    new-instance v4, Lbd;

    invoke-direct {v4, v8}, Lbd;-><init>(I)V

    .line 104
    shr-int/lit8 v9, v2, 0x1

    .line 105
    if-eqz p2, :cond_1

    sget-object v1, Le;->d:Le;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v3, v1

    .line 106
    :goto_0
    const/4 v5, 0x1

    if-eqz v3, :cond_2

    const/16 v1, 0x8

    :goto_1
    shr-int v1, v2, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 108
    if-eqz v3, :cond_3

    move v1, v2

    .line 114
    :goto_2
    const/4 v3, 0x0

    move v7, v3

    move-object v3, v4

    move-object/from16 v4, p2

    :goto_3
    if-ge v7, v1, :cond_0

    .line 117
    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v5, v5, 0x1

    .line 118
    and-int/lit8 v6, v7, 0x1

    if-nez v6, :cond_4

    const/4 v6, 0x1

    .line 119
    :goto_4
    if-eqz v6, :cond_5

    :goto_5
    mul-int/2addr v5, v10

    add-int v11, v9, v5

    .line 120
    if-ltz v11, :cond_0

    if-lt v11, v2, :cond_6

    .line 172
    :cond_0
    invoke-static {}, Lk;->a()Lk;

    move-result-object v1

    throw v1

    .line 105
    :cond_1
    const/4 v1, 0x0

    move v3, v1

    goto :goto_0

    .line 106
    :cond_2
    const/4 v1, 0x5

    goto :goto_1

    .line 111
    :cond_3
    const/16 v1, 0xf

    goto :goto_2

    .line 118
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 119
    :cond_5
    neg-int v5, v5

    goto :goto_5

    .line 127
    :cond_6
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v3}, Lc;->a(ILbd;)Lbd;
    :try_end_0
    .catch Lk; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 134
    const/4 v5, 0x0

    move v6, v5

    :goto_6
    const/4 v5, 0x2

    if-ge v6, v5, :cond_b

    .line 135
    const/4 v5, 0x1

    if-ne v6, v5, :cond_9

    .line 136
    invoke-virtual {v3}, Lbd;->b()V

    .line 141
    if-eqz v4, :cond_9

    sget-object v5, Le;->h:Le;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 142
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 143
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v12

    .line 144
    :cond_7
    :goto_7
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 145
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    .line 146
    sget-object v14, Le;->h:Le;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 147
    invoke-virtual {v4, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    move-object v4, v5

    .line 155
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3, v4}, Lda;->a(ILbd;Ljava/util/Hashtable;)Ln;

    move-result-object v5

    .line 157
    const/4 v12, 0x1

    if-ne v6, v12, :cond_a

    .line 159
    sget-object v12, Lo;->b:Lo;

    new-instance v13, Ljava/lang/Integer;

    const/16 v14, 0xb4

    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v12, v13}, Ln;->a(Lo;Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v5}, Ln;->a()[Lp;

    move-result-object v12

    .line 162
    const/4 v13, 0x0

    new-instance v14, Lp;

    int-to-float v15, v8

    const/16 v16, 0x0

    aget-object v16, v12, v16

    invoke-virtual/range {v16 .. v16}, Lp;->a()F

    move-result v16

    sub-float v15, v15, v16

    const/high16 v16, 0x3f80

    sub-float v15, v15, v16

    const/16 v16, 0x0

    aget-object v16, v12, v16

    invoke-virtual/range {v16 .. v16}, Lp;->b()F

    move-result v16

    invoke-direct/range {v14 .. v16}, Lp;-><init>(FF)V

    aput-object v14, v12, v13

    .line 163
    const/4 v13, 0x1

    new-instance v14, Lp;

    int-to-float v15, v8

    const/16 v16, 0x1

    aget-object v16, v12, v16

    invoke-virtual/range {v16 .. v16}, Lp;->a()F

    move-result v16

    sub-float v15, v15, v16

    const/high16 v16, 0x3f80

    sub-float v15, v15, v16

    const/16 v16, 0x1

    aget-object v16, v12, v16

    invoke-virtual/range {v16 .. v16}, Lp;->b()F

    move-result v16

    invoke-direct/range {v14 .. v16}, Lp;-><init>(FF)V

    aput-object v14, v12, v13
    :try_end_1
    .catch Lm; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    :cond_a
    return-object v5

    .line 166
    :catch_0
    move-exception v5

    .line 134
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_6

    .line 128
    :catch_1
    move-exception v5

    .line 114
    :cond_b
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto/16 :goto_3
.end method

.method protected static b(Lbd;I[I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    array-length v1, p2

    .line 226
    invoke-virtual {p0, p1}, Lbd;->a(I)Z

    move-result v0

    .line 227
    :cond_0
    :goto_0
    if-lez p1, :cond_2

    if-ltz v1, :cond_2

    .line 228
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lbd;->a(I)Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 229
    add-int/lit8 v1, v1, -0x1

    .line 230
    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_2
    if-ltz v1, :cond_3

    .line 234
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 236
    :cond_3
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2}, Lda;->a(Lbd;I[I)V

    .line 237
    return-void
.end method


# virtual methods
.method public abstract a(ILbd;Ljava/util/Hashtable;)Ln;
.end method

.method public a(Lc;Ljava/util/Hashtable;)Ln;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 53
    :try_start_0
    invoke-direct {p0, p1, p2}, Lda;->b(Lc;Ljava/util/Hashtable;)Ln;
    :try_end_0
    .catch Lk; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    if-eqz p2, :cond_0

    sget-object v0, Le;->d:Le;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 56
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lc;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {p1}, Lc;->a()Lc;

    move-result-object v4

    .line 58
    invoke-direct {p0, v4, p2}, Lda;->b(Lc;Ljava/util/Hashtable;)Ln;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ln;->a()Ljava/util/Hashtable;

    move-result-object v0

    .line 61
    const/16 v1, 0x10e

    .line 62
    if-eqz v0, :cond_3

    sget-object v5, Lo;->b:Lo;

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 64
    sget-object v5, Lo;->b:Lo;

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 67
    :goto_2
    sget-object v1, Lo;->b:Lo;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v1, v5}, Ln;->a(Lo;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v3}, Ln;->a()[Lp;

    move-result-object v1

    .line 70
    invoke-virtual {v4}, Lc;->b()I

    move-result v4

    move v0, v2

    .line 71
    :goto_3
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 72
    new-instance v2, Lp;

    int-to-float v5, v4

    aget-object v6, v1, v0

    invoke-virtual {v6}, Lp;->b()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f80

    sub-float/2addr v5, v6

    aget-object v6, v1, v0

    invoke-virtual {v6}, Lp;->a()F

    move-result v6

    invoke-direct {v2, v5, v6}, Lp;-><init>(FF)V

    aput-object v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_0
    move v0, v2

    .line 55
    goto :goto_1

    :cond_1
    move-object v0, v3

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    throw v1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public a()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method
