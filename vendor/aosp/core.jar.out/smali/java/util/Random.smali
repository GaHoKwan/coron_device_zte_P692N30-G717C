.class public Ljava/util/Random;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final multiplier:J = 0x5deece66dL

.field private static final serialVersionUID:J = 0x363296344bf00a53L


# instance fields
.field private haveNextNextGaussian:Z

.field private nextNextGaussian:D

.field private seed:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/Random;->setSeed(J)V

    .line 68
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "seed"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    .line 79
    return-void
.end method


# virtual methods
.method protected declared-synchronized next(I)I
    .locals 4
    .parameter "bits"

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ljava/util/Random;->seed:J

    const-wide v2, 0x5deece66dL

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/Random;->seed:J

    .line 91
    iget-wide v0, p0, Ljava/util/Random;->seed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    rsub-int/lit8 v2, p1, 0x30

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    monitor-exit p0

    return v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public nextBoolean()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBytes([B)V
    .locals 5
    .parameter "buf"

    .prologue
    .line 105
    const/4 v3, 0x0

    .local v3, rand:I
    const/4 v0, 0x0

    .local v0, count:I
    const/4 v2, 0x0

    .line 106
    .local v2, loop:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 107
    if-nez v2, :cond_0

    .line 108
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 109
    const/4 v2, 0x3

    .line 113
    :goto_1
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    int-to-byte v4, v3

    aput-byte v4, p1, v0

    .line 114
    shr-int/lit8 v3, v3, 0x8

    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_0

    .line 111
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 116
    :cond_1
    return-void
.end method

.method public nextDouble()D
    .locals 4

    .prologue
    const/16 v2, 0x1b

    .line 123
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x4340

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public nextFloat()F
    .locals 2

    .prologue
    .line 131
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4b80

    div-float/2addr v0, v1

    return v0
.end method

.method public declared-synchronized nextGaussian()D
    .locals 12

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    if-eqz v8, :cond_0

    .line 144
    const/4 v8, 0x0

    iput-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    .line 145
    iget-wide v8, p0, Ljava/util/Random;->nextNextGaussian:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :goto_0
    monitor-exit p0

    return-wide v8

    .line 150
    :cond_0
    const-wide/high16 v8, 0x4000

    :try_start_1
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0

    sub-double v4, v8, v10

    .line 151
    .local v4, v1:D
    const-wide/high16 v8, 0x4000

    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0

    sub-double v6, v8, v10

    .line 152
    .local v6, v2:D
    mul-double v8, v4, v4

    mul-double v10, v6, v6

    add-double v2, v8, v10

    .line 153
    .local v2, s:D
    const-wide/high16 v8, 0x3ff0

    cmpl-double v8, v2, v8

    if-gez v8, :cond_0

    const-wide/16 v8, 0x0

    cmpl-double v8, v2, v8

    if-eqz v8, :cond_0

    .line 156
    const-wide/high16 v8, -0x4000

    invoke-static {v2, v3}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    div-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v0

    .line 157
    .local v0, multiplier:D
    mul-double v8, v6, v0

    iput-wide v8, p0, Ljava/util/Random;->nextNextGaussian:D

    .line 158
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    mul-double v8, v4, v0

    goto :goto_0

    .line 143
    .end local v0           #multiplier:D
    .end local v2           #s:D
    .end local v4           #v1:D
    .end local v6           #v2:D
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public nextInt()I
    .locals 1

    .prologue
    .line 166
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 7
    .parameter "n"

    .prologue
    const/16 v6, 0x1f

    .line 174
    if-gtz p1, :cond_0

    .line 175
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "n <= 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_0
    neg-int v2, p1

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_1

    .line 178
    int-to-long v2, p1

    invoke-virtual {p0, v6}, Ljava/util/Random;->next(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    shr-long/2addr v2, v6

    long-to-int v1, v2

    .line 185
    :goto_0
    return v1

    .line 182
    :cond_1
    invoke-virtual {p0, v6}, Ljava/util/Random;->next(I)I

    move-result v0

    .line 183
    .local v0, bits:I
    rem-int v1, v0, p1

    .line 184
    .local v1, val:I
    sub-int v2, v0, v1

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v2, v3

    if-ltz v2, :cond_1

    goto :goto_0
.end method

.method public nextLong()J
    .locals 4

    .prologue
    const/16 v2, 0x20

    .line 192
    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized setSeed(J)V
    .locals 4
    .parameter "seed"

    .prologue
    .line 200
    monitor-enter p0

    const-wide v0, 0x5deece66dL

    xor-long/2addr v0, p1

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    :try_start_0
    iput-wide v0, p0, Ljava/util/Random;->seed:J

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
