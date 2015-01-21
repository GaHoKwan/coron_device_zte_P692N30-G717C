.class public final Lcom/android/org/bouncycastle/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static areEqual([B[B)Z
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    if-ne p0, p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 86
    goto :goto_0

    .line 89
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 91
    goto :goto_0

    .line 94
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 96
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 98
    goto :goto_0

    .line 94
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([C[C)Z
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    if-ne p0, p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 56
    goto :goto_0

    .line 59
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 61
    goto :goto_0

    .line 64
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 66
    aget-char v3, p0, v0

    aget-char v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 68
    goto :goto_0

    .line 64
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([I[I)Z
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    if-ne p0, p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 151
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 153
    goto :goto_0

    .line 156
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 158
    goto :goto_0

    .line 161
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 163
    aget v3, p0, v0

    aget v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 165
    goto :goto_0

    .line 161
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([J[J)Z
    .locals 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    if-ne p0, p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 181
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 183
    goto :goto_0

    .line 186
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 188
    goto :goto_0

    .line 191
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 193
    aget-wide v3, p0, v0

    aget-wide v5, p1, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    .line 195
    goto :goto_0

    .line 191
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([Ljava/math/BigInteger;[Ljava/math/BigInteger;)Z
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    if-ne p0, p1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v1

    .line 211
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 213
    goto :goto_0

    .line 216
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 218
    goto :goto_0

    .line 221
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 223
    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 225
    goto :goto_0

    .line 221
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([Z[Z)Z
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    if-ne p0, p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v1

    .line 24
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 26
    goto :goto_0

    .line 29
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 31
    goto :goto_0

    .line 34
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 36
    aget-boolean v3, p0, v0

    aget-boolean v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 38
    goto :goto_0

    .line 34
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static clone([B)[B
    .locals 3
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 350
    if-nez p0, :cond_0

    .line 352
    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    .line 354
    :cond_0
    array-length v1, p0

    new-array v0, v1, [B

    .line 356
    .local v0, copy:[B
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([I)[I
    .locals 3
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 363
    if-nez p0, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 371
    :goto_0
    return-object v0

    .line 367
    :cond_0
    array-length v1, p0

    new-array v0, v1, [I

    .line 369
    .local v0, copy:[I
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 376
    if-nez p0, :cond_0

    .line 378
    const/4 v0, 0x0

    .line 384
    :goto_0
    return-object v0

    .line 380
    :cond_0
    array-length v1, p0

    new-array v0, v1, [Ljava/math/BigInteger;

    .line 382
    .local v0, copy:[Ljava/math/BigInteger;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static constantTimeAreEqual([B[B)Z
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    if-ne p0, p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v2

    .line 122
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v2, v3

    .line 124
    goto :goto_0

    .line 127
    :cond_3
    array-length v4, p0

    array-length v5, p1

    if-eq v4, v5, :cond_4

    move v2, v3

    .line 129
    goto :goto_0

    .line 132
    :cond_4
    const/4 v1, 0x0

    .line 134
    .local v1, nonEqual:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, p0

    if-eq v0, v4, :cond_5

    .line 136
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    xor-int/2addr v4, v5

    or-int/2addr v1, v4

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_5
    if-eqz v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static copyOf([BI)[B
    .locals 3
    .parameter "data"
    .parameter "newLength"

    .prologue
    const/4 v2, 0x0

    .line 389
    new-array v0, p1, [B

    .line 391
    .local v0, tmp:[B
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 393
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    :goto_0
    return-object v0

    .line 397
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOf([II)[I
    .locals 3
    .parameter "data"
    .parameter "newLength"

    .prologue
    const/4 v2, 0x0

    .line 405
    new-array v0, p1, [I

    .line 407
    .local v0, tmp:[I
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 409
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    :goto_0
    return-object v0

    .line 413
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOf([JI)[J
    .locals 3
    .parameter "data"
    .parameter "newLength"

    .prologue
    const/4 v2, 0x0

    .line 421
    new-array v0, p1, [J

    .line 423
    .local v0, tmp:[J
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 425
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    :goto_0
    return-object v0

    .line 429
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;
    .locals 3
    .parameter "data"
    .parameter "newLength"

    .prologue
    const/4 v2, 0x0

    .line 437
    new-array v0, p1, [Ljava/math/BigInteger;

    .line 439
    .local v0, tmp:[Ljava/math/BigInteger;
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 441
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    :goto_0
    return-object v0

    .line 445
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOfRange([BII)[B
    .locals 4
    .parameter "data"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v3, 0x0

    .line 453
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 455
    .local v0, newLength:I
    new-array v1, v0, [B

    .line 457
    .local v1, tmp:[B
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    .line 459
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    :goto_0
    return-object v1

    .line 463
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOfRange([III)[I
    .locals 4
    .parameter "data"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v3, 0x0

    .line 471
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 473
    .local v0, newLength:I
    new-array v1, v0, [I

    .line 475
    .local v1, tmp:[I
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    .line 477
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    :goto_0
    return-object v1

    .line 481
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOfRange([JII)[J
    .locals 4
    .parameter "data"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v3, 0x0

    .line 489
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 491
    .local v0, newLength:I
    new-array v1, v0, [J

    .line 493
    .local v1, tmp:[J
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    .line 495
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    :goto_0
    return-object v1

    .line 499
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOfRange([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .locals 4
    .parameter "data"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v3, 0x0

    .line 507
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 509
    .local v0, newLength:I
    new-array v1, v0, [Ljava/math/BigInteger;

    .line 511
    .local v1, tmp:[Ljava/math/BigInteger;
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    .line 513
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    :goto_0
    return-object v1

    .line 517
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static fill([BB)V
    .locals 2
    .parameter "array"
    .parameter "value"

    .prologue
    .line 236
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 238
    aput-byte p1, p0, v0

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_0
    return-void
.end method

.method public static fill([II)V
    .locals 2
    .parameter "array"
    .parameter "value"

    .prologue
    .line 266
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 268
    aput p1, p0, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    return-void
.end method

.method public static fill([JJ)V
    .locals 2
    .parameter "array"
    .parameter "value"

    .prologue
    .line 246
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 248
    aput-wide p1, p0, v0

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    return-void
.end method

.method public static fill([SS)V
    .locals 2
    .parameter "array"
    .parameter "value"

    .prologue
    .line 256
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 258
    aput-short p1, p0, v0

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_0
    return-void
.end method

.method private static getLength(II)I
    .locals 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 525
    sub-int v0, p1, p0

    .line 526
    .local v0, newLength:I
    if-gez v0, :cond_0

    .line 528
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 530
    :cond_0
    return v0
.end method

.method public static hashCode([B)I
    .locals 3
    .parameter "data"

    .prologue
    .line 274
    if-nez p0, :cond_1

    .line 276
    const/4 v0, 0x0

    .line 288
    :cond_0
    return v0

    .line 279
    :cond_1
    array-length v1, p0

    .line 280
    .local v1, i:I
    add-int/lit8 v0, v1, 0x1

    .line 282
    .local v0, hc:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 284
    mul-int/lit16 v0, v0, 0x101

    .line 285
    aget-byte v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([C)I
    .locals 3
    .parameter "data"

    .prologue
    .line 293
    if-nez p0, :cond_1

    .line 295
    const/4 v0, 0x0

    .line 307
    :cond_0
    return v0

    .line 298
    :cond_1
    array-length v1, p0

    .line 299
    .local v1, i:I
    add-int/lit8 v0, v1, 0x1

    .line 301
    .local v0, hc:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 303
    mul-int/lit16 v0, v0, 0x101

    .line 304
    aget-char v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([I)I
    .locals 3
    .parameter "data"

    .prologue
    .line 312
    if-nez p0, :cond_1

    .line 314
    const/4 v0, 0x0

    .line 326
    :cond_0
    return v0

    .line 317
    :cond_1
    array-length v1, p0

    .line 318
    .local v1, i:I
    add-int/lit8 v0, v1, 0x1

    .line 320
    .local v0, hc:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 322
    mul-int/lit16 v0, v0, 0x101

    .line 323
    aget v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([Ljava/math/BigInteger;)I
    .locals 3
    .parameter "data"

    .prologue
    .line 331
    if-nez p0, :cond_1

    .line 333
    const/4 v0, 0x0

    .line 345
    :cond_0
    return v0

    .line 336
    :cond_1
    array-length v1, p0

    .line 337
    .local v1, i:I
    add-int/lit8 v0, v1, 0x1

    .line 339
    .local v0, hc:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 341
    mul-int/lit16 v0, v0, 0x101

    .line 342
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    goto :goto_0
.end method
