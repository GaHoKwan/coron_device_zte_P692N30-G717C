.class final Lbz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbe;

.field private final a:Lcd;

.field private final b:Lbe;


# direct methods
.method constructor <init>(Lbe;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lbe;->b()I

    move-result v0

    .line 37
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/16 v1, 0x90

    if-gt v0, v1, :cond_0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    invoke-static {}, Lg;->a()Lg;

    move-result-object v0

    throw v0

    .line 41
    :cond_1
    invoke-virtual {p0, p1}, Lbz;->a(Lbe;)Lcd;

    move-result-object v0

    iput-object v0, p0, Lbz;->a:Lcd;

    .line 42
    invoke-virtual {p0, p1}, Lbz;->a(Lbe;)Lbe;

    move-result-object v0

    iput-object v0, p0, Lbz;->a:Lbe;

    .line 44
    new-instance v0, Lbe;

    iget-object v1, p0, Lbz;->a:Lbe;

    invoke-virtual {v1}, Lbe;->b()I

    move-result v1

    invoke-direct {v0, v1}, Lbe;-><init>(I)V

    iput-object v0, p0, Lbz;->b:Lbe;

    .line 45
    return-void
.end method


# virtual methods
.method a(II)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    .line 230
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0, v2, p1, p2}, Lbz;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 233
    :goto_0
    shl-int/lit8 v0, v0, 0x1

    .line 234
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3, v1, p1, p2}, Lbz;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    or-int/lit8 v0, v0, 0x1

    .line 237
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 238
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3, v4, p1, p2}, Lbz;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    or-int/lit8 v0, v0, 0x1

    .line 241
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 242
    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p0, v2, v3, p1, p2}, Lbz;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    or-int/lit8 v0, v0, 0x1

    .line 245
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 246
    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v2, v3, p1, p2}, Lbz;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 247
    or-int/lit8 v0, v0, 0x1

    .line 249
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 250
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lbz;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 251
    or-int/lit8 v0, v0, 0x1

    .line 253
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 254
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v4, v1, p1, p2}, Lbz;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 255
    or-int/lit8 v0, v0, 0x1

    .line 257
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 258
    const/4 v1, 0x3

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lbz;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 259
    or-int/lit8 v0, v0, 0x1

    .line 261
    :cond_6
    return v0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method a(IIII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p3, p4}, Lbz;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const/4 v0, 0x1

    .line 188
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 189
    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p3, p4}, Lbz;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    or-int/lit8 v0, v0, 0x1

    .line 192
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 193
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p3, p4}, Lbz;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    or-int/lit8 v0, v0, 0x1

    .line 196
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 197
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p3, p4}, Lbz;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    or-int/lit8 v0, v0, 0x1

    .line 200
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 201
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, p2, p3, p4}, Lbz;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    or-int/lit8 v0, v0, 0x1

    .line 204
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 205
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, p1, v1, p3, p4}, Lbz;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 206
    or-int/lit8 v0, v0, 0x1

    .line 208
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 209
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, p1, v1, p3, p4}, Lbz;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 210
    or-int/lit8 v0, v0, 0x1

    .line 212
    :cond_6
    shl-int/lit8 v0, v0, 0x1

    .line 213
    invoke-virtual {p0, p1, p2, p3, p4}, Lbz;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 214
    or-int/lit8 v0, v0, 0x1

    .line 216
    :cond_7
    return v0
.end method

.method a(Lbe;)Lbe;
    .locals 14
    .parameter

    .prologue
    .line 407
    iget-object v0, p0, Lbz;->a:Lcd;

    invoke-virtual {v0}, Lcd;->b()I

    move-result v0

    .line 408
    iget-object v1, p0, Lbz;->a:Lcd;

    invoke-virtual {v1}, Lcd;->c()I

    move-result v1

    .line 411
    invoke-virtual {p1}, Lbe;->b()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 412
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dimension of bitMarix must match the version size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    iget-object v2, p0, Lbz;->a:Lcd;

    invoke-virtual {v2}, Lcd;->d()I

    move-result v4

    .line 416
    iget-object v2, p0, Lbz;->a:Lcd;

    invoke-virtual {v2}, Lcd;->e()I

    move-result v5

    .line 418
    div-int v6, v0, v4

    .line 419
    div-int v7, v1, v5

    .line 421
    mul-int v0, v6, v4

    .line 425
    new-instance v8, Lbe;

    invoke-direct {v8, v0}, Lbe;-><init>(I)V

    .line 426
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_5

    .line 427
    mul-int v9, v3, v4

    .line 428
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_4

    .line 429
    mul-int v10, v2, v5

    .line 430
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_3

    .line 431
    add-int/lit8 v0, v4, 0x2

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    add-int v11, v0, v1

    .line 432
    add-int v12, v9, v1

    .line 433
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_2

    .line 434
    add-int/lit8 v13, v5, 0x2

    mul-int/2addr v13, v2

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v13, v0

    .line 435
    invoke-virtual {p1, v13, v11}, Lbe;->a(II)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 436
    add-int v13, v10, v0

    .line 437
    invoke-virtual {v8, v13, v12}, Lbe;->a(II)V

    .line 433
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 430
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 428
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 426
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 443
    :cond_5
    return-object v8
.end method

.method a(Lbe;)Lcd;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lbz;->a:Lcd;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lbz;->a:Lcd;

    .line 68
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p1}, Lbe;->b()I

    move-result v0

    .line 68
    invoke-static {v0, v0}, Lcd;->a(II)Lcd;

    move-result-object v0

    goto :goto_0
.end method

.method a(IIII)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    if-gez p1, :cond_1

    .line 161
    add-int v1, p1, p3

    .line 162
    add-int/lit8 v0, p3, 0x4

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p2

    .line 164
    :goto_0
    if-gez v0, :cond_0

    .line 165
    add-int/2addr v0, p4

    .line 166
    add-int/lit8 v2, p4, 0x4

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 168
    :cond_0
    iget-object v2, p0, Lbz;->b:Lbe;

    invoke-virtual {v2, v0, v1}, Lbe;->a(II)V

    .line 169
    iget-object v2, p0, Lbz;->a:Lbe;

    invoke-virtual {v2, v0, v1}, Lbe;->a(II)Z

    move-result v0

    return v0

    :cond_1
    move v0, p2

    move v1, p1

    goto :goto_0
.end method

.method a()[B
    .locals 14

    .prologue
    const/4 v9, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 81
    iget-object v2, p0, Lbz;->a:Lcd;

    invoke-virtual {v2}, Lcd;->f()I

    move-result v2

    new-array v10, v2, [B

    .line 87
    iget-object v2, p0, Lbz;->a:Lbe;

    invoke-virtual {v2}, Lbe;->b()I

    move-result v11

    move v2, v0

    move v3, v0

    move v4, v0

    move v7, v0

    move v5, v9

    move v8, v0

    .line 98
    :goto_0
    if-ne v5, v11, :cond_0

    if-nez v7, :cond_0

    if-nez v4, :cond_0

    .line 99
    add-int/lit8 v6, v8, 0x1

    invoke-virtual {p0, v11, v11}, Lbz;->a(II)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v10, v8

    .line 100
    add-int/lit8 v5, v5, -0x2

    .line 101
    add-int/lit8 v4, v7, 0x2

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v1

    .line 141
    :goto_1
    if-lt v6, v11, :cond_7

    if-lt v5, v11, :cond_7

    .line 143
    iget-object v0, p0, Lbz;->a:Lcd;

    invoke-virtual {v0}, Lcd;->f()I

    move-result v0

    if-eq v7, v0, :cond_6

    .line 144
    invoke-static {}, Lg;->a()Lg;

    move-result-object v0

    throw v0

    .line 103
    :cond_0
    add-int/lit8 v6, v11, -0x2

    if-ne v5, v6, :cond_1

    if-nez v7, :cond_1

    and-int/lit8 v6, v11, 0x3

    if-eqz v6, :cond_1

    if-nez v3, :cond_1

    .line 104
    add-int/lit8 v6, v8, 0x1

    invoke-virtual {p0, v11, v11}, Lbz;->b(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v10, v8

    .line 105
    add-int/lit8 v5, v5, -0x2

    .line 106
    add-int/lit8 v3, v7, 0x2

    move v7, v6

    move v6, v5

    move v5, v3

    move v3, v1

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    add-int/lit8 v6, v11, 0x4

    if-ne v5, v6, :cond_2

    const/4 v6, 0x2

    if-ne v7, v6, :cond_2

    and-int/lit8 v6, v11, 0x7

    if-nez v6, :cond_2

    if-nez v2, :cond_2

    .line 109
    add-int/lit8 v6, v8, 0x1

    invoke-virtual {p0, v11, v11}, Lbz;->c(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v10, v8

    .line 110
    add-int/lit8 v5, v5, -0x2

    .line 111
    add-int/lit8 v2, v7, 0x2

    move v7, v6

    move v6, v5

    move v5, v2

    move v2, v1

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    add-int/lit8 v6, v11, -0x2

    if-ne v5, v6, :cond_b

    if-nez v7, :cond_b

    and-int/lit8 v6, v11, 0x7

    if-ne v6, v9, :cond_b

    if-nez v0, :cond_b

    .line 114
    add-int/lit8 v6, v8, 0x1

    invoke-virtual {p0, v11, v11}, Lbz;->d(II)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v10, v8

    .line 115
    add-int/lit8 v5, v5, -0x2

    .line 116
    add-int/lit8 v0, v7, 0x2

    move v7, v6

    move v6, v5

    move v5, v0

    move v0, v1

    .line 117
    goto :goto_1

    :cond_3
    move v6, v5

    move v5, v7

    .line 121
    :goto_2
    if-ge v8, v11, :cond_a

    if-ltz v6, :cond_a

    iget-object v7, p0, Lbz;->b:Lbe;

    invoke-virtual {v7, v6, v8}, Lbe;->a(II)Z

    move-result v7

    if-nez v7, :cond_a

    .line 122
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v8, v6, v11, v11}, Lbz;->a(IIII)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v10, v5

    .line 124
    :goto_3
    add-int/lit8 v8, v8, -0x2

    .line 125
    add-int/lit8 v5, v6, 0x2

    .line 126
    if-ltz v8, :cond_4

    if-lt v5, v11, :cond_3

    .line 127
    :cond_4
    add-int/lit8 v6, v8, 0x1

    .line 128
    add-int/lit8 v5, v5, 0x3

    move v8, v6

    move v6, v5

    move v5, v7

    .line 132
    :goto_4
    if-ltz v8, :cond_9

    if-ge v6, v11, :cond_9

    iget-object v7, p0, Lbz;->b:Lbe;

    invoke-virtual {v7, v6, v8}, Lbe;->a(II)Z

    move-result v7

    if-nez v7, :cond_9

    .line 133
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v8, v6, v11, v11}, Lbz;->a(IIII)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v10, v5

    .line 135
    :goto_5
    add-int/lit8 v8, v8, 0x2

    .line 136
    add-int/lit8 v5, v6, -0x2

    .line 137
    if-ge v8, v11, :cond_5

    if-gez v5, :cond_8

    .line 138
    :cond_5
    add-int/lit8 v6, v8, 0x3

    .line 139
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 146
    :cond_6
    return-object v10

    :cond_7
    move v8, v7

    move v7, v5

    move v5, v6

    goto/16 :goto_0

    :cond_8
    move v6, v5

    move v5, v7

    goto :goto_4

    :cond_9
    move v7, v5

    goto :goto_5

    :cond_a
    move v7, v5

    goto :goto_3

    :cond_b
    move v6, v7

    move v13, v5

    move v5, v8

    move v8, v13

    goto :goto_2
.end method

.method b(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    .line 275
    add-int/lit8 v0, p1, -0x3

    invoke-virtual {p0, v0, v2, p1, p2}, Lbz;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 278
    :goto_0
    shl-int/lit8 v0, v0, 0x1

    .line 279
    add-int/lit8 v3, p1, -0x2

    invoke-virtual {p0, v3, v2, p1, p2}, Lbz;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    or-int/lit8 v0, v0, 0x1

    .line 282
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 283
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3, v2, p1, p2}, Lbz;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    or-int/lit8 v0, v0, 0x1

    .line 286
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 287
    add-int/lit8 v3, p2, -0x4

    invoke-virtual {p0, v2, v3, p1, p2}, Lbz;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 288
    or-int/lit8 v0, v0, 0x1

    .line 290
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 291
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p0, v2, v3, p1, p2}, Lbz;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 292
    or-int/lit8 v0, v0, 0x1

    .line 294
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 295
    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p0, v2, v3, p1, p2}, Lbz;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 296
    or-int/lit8 v0, v0, 0x1

    .line 298
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 299
    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v2, v3, p1, p2}, Lbz;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 300
    or-int/lit8 v0, v0, 0x1

    .line 302
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 303
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lbz;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 304
    or-int/lit8 v0, v0, 0x1

    .line 306
    :cond_6
    return v0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method c(II)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    .line 320
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0, v2, p1, p2}, Lbz;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 323
    :goto_0
    shl-int/lit8 v0, v0, 0x1

    .line 324
    add-int/lit8 v3, p1, -0x1

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {p0, v3, v4, p1, p2}, Lbz;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    or-int/lit8 v0, v0, 0x1

    .line 327
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 328
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p0, v2, v3, p1, p2}, Lbz;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    or-int/lit8 v0, v0, 0x1

    .line 331
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 332
    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p0, v2, v3, p1, p2}, Lbz;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 333
    or-int/lit8 v0, v0, 0x1

    .line 335
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 336
    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v2, v3, p1, p2}, Lbz;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 337
    or-int/lit8 v0, v0, 0x1

    .line 339
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 340
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p0, v1, v2, p1, p2}, Lbz;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 341
    or-int/lit8 v0, v0, 0x1

    .line 343
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 344
    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p1, p2}, Lbz;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 345
    or-int/lit8 v0, v0, 0x1

    .line 347
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 348
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lbz;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 349
    or-int/lit8 v0, v0, 0x1

    .line 351
    :cond_6
    return v0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method d(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 364
    .line 365
    add-int/lit8 v0, p1, -0x3

    invoke-virtual {p0, v0, v2, p1, p2}, Lbz;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 368
    :goto_0
    shl-int/lit8 v0, v0, 0x1

    .line 369
    add-int/lit8 v3, p1, -0x2

    invoke-virtual {p0, v3, v2, p1, p2}, Lbz;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    or-int/lit8 v0, v0, 0x1

    .line 372
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 373
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3, v2, p1, p2}, Lbz;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 374
    or-int/lit8 v0, v0, 0x1

    .line 376
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 377
    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p0, v2, v3, p1, p2}, Lbz;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    or-int/lit8 v0, v0, 0x1

    .line 380
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 381
    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v2, v3, p1, p2}, Lbz;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 382
    or-int/lit8 v0, v0, 0x1

    .line 384
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 385
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lbz;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 386
    or-int/lit8 v0, v0, 0x1

    .line 388
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 389
    const/4 v1, 0x2

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lbz;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 390
    or-int/lit8 v0, v0, 0x1

    .line 392
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 393
    const/4 v1, 0x3

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lbz;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 394
    or-int/lit8 v0, v0, 0x1

    .line 396
    :cond_6
    return v0

    :cond_7
    move v0, v2

    goto :goto_0
.end method
