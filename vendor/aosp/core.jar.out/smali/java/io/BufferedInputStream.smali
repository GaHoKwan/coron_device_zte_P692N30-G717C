.class public Ljava/io/BufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "BufferedInputStream.java"


# instance fields
.field protected volatile buf:[B

.field protected count:I

.field protected marklimit:I

.field protected markpos:I

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 76
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .parameter "in"
    .parameter "size"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 93
    if-gtz p2, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 97
    return-void
.end method

.method private fillbuf(Ljava/io/InputStream;[B)I
    .locals 8
    .parameter "localIn"
    .parameter "localBuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 140
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-eq v5, v7, :cond_0

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v5, v6

    iget v6, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-lt v5, v6, :cond_3

    .line 142
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 143
    .local v3, result:I
    if-lez v3, :cond_1

    .line 144
    iput v7, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 145
    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 146
    if-ne v3, v7, :cond_2

    :goto_0
    iput v4, p0, Ljava/io/BufferedInputStream;->count:I

    :cond_1
    move v0, v3

    .line 170
    .end local v3           #result:I
    :goto_1
    return v0

    .restart local v3       #result:I
    :cond_2
    move v4, v3

    .line 146
    goto :goto_0

    .line 150
    .end local v3           #result:I
    :cond_3
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-nez v5, :cond_6

    iget v5, p0, Ljava/io/BufferedInputStream;->marklimit:I

    array-length v6, p2

    if-le v5, v6, :cond_6

    .line 152
    array-length v5, p2

    mul-int/lit8 v1, v5, 0x2

    .line 153
    .local v1, newLength:I
    iget v5, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-le v1, v5, :cond_4

    .line 154
    iget v1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 156
    :cond_4
    new-array v2, v1, [B

    .line 157
    .local v2, newbuf:[B
    array-length v5, p2

    invoke-static {p2, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iput-object v2, p0, Ljava/io/BufferedInputStream;->buf:[B

    move-object p2, v2

    .line 166
    .end local v1           #newLength:I
    .end local v2           #newbuf:[B
    :cond_5
    :goto_2
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v5, v6

    iput v5, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 167
    iput v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    iput v4, p0, Ljava/io/BufferedInputStream;->count:I

    .line 168
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    array-length v5, p2

    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, p2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 169
    .local v0, bytesread:I
    if-gtz v0, :cond_7

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    :goto_3
    iput v4, p0, Ljava/io/BufferedInputStream;->count:I

    goto :goto_1

    .line 161
    .end local v0           #bytesread:I
    :cond_6
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-lez v5, :cond_5

    .line 162
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    array-length v6, p2

    iget v7, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v6, v7

    invoke-static {p2, v5, p2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 169
    .restart local v0       #bytesread:I
    :cond_7
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v4, v0

    goto :goto_3
.end method

.method private streamClosed()Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 111
    .local v0, localIn:Ljava/io/InputStream;
    iget-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 112
    :cond_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v0           #localIn:Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 114
    .restart local v0       #localIn:Ljava/io/InputStream;
    :cond_1
    :try_start_1
    iget v1, p0, Ljava/io/BufferedInputStream;->count:I

    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    add-int/2addr v1, v2

    monitor-exit p0

    return v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 131
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 132
    .local v0, localIn:Ljava/io/InputStream;
    iput-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 136
    :cond_0
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .parameter "readlimit"

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 189
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 221
    .local v0, localBuf:[B
    iget-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 222
    .local v1, localIn:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 223
    :cond_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    .end local v0           #localBuf:[B
    .end local v1           #localIn:Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 227
    .restart local v0       #localBuf:[B
    .restart local v1       #localIn:Ljava/io/InputStream;
    :cond_1
    :try_start_1
    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    if-lt v3, v4, :cond_3

    invoke-direct {p0, v1, v0}, Ljava/io/BufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v3, v2, :cond_3

    .line 242
    :cond_2
    :goto_0
    monitor-exit p0

    return v2

    .line 231
    :cond_3
    :try_start_2
    iget-object v3, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-eq v0, v3, :cond_4

    .line 232
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 233
    if-nez v0, :cond_4

    .line 234
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 239
    :cond_4
    iget v3, p0, Ljava/io/BufferedInputStream;->count:I

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_2

    .line 240
    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedInputStream;->pos:I

    aget-byte v2, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/lit16 v2, v2, 0xff

    goto :goto_0
.end method

.method public declared-synchronized read([BII)I
    .locals 8
    .parameter "buffer"
    .parameter "byteOffset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 249
    .local v1, localBuf:[B
    if-nez v1, :cond_0

    .line 250
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v5

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v1           #localBuf:[B
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 252
    .restart local v1       #localBuf:[B
    :cond_0
    :try_start_1
    array-length v6, p1

    invoke-static {v6, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    if-nez p3, :cond_2

    .line 254
    const/4 v5, 0x0

    .line 308
    :cond_1
    :goto_0
    monitor-exit p0

    return v5

    .line 256
    :cond_2
    :try_start_2
    iget-object v2, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 257
    .local v2, localIn:Ljava/io/InputStream;
    if-nez v2, :cond_3

    .line 258
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 262
    :cond_3
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v7, p0, Ljava/io/BufferedInputStream;->count:I

    if-ge v6, v7, :cond_7

    .line 264
    iget v6, p0, Ljava/io/BufferedInputStream;->count:I

    iget v7, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v6, v7

    if-lt v6, p3, :cond_5

    move v0, p3

    .line 265
    .local v0, copylength:I
    :goto_1
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v1, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v6, v0

    iput v6, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 267
    if-eq v0, p3, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v6

    if-nez v6, :cond_6

    :cond_4
    move v5, v0

    .line 268
    goto :goto_0

    .line 264
    .end local v0           #copylength:I
    :cond_5
    iget v6, p0, Ljava/io/BufferedInputStream;->count:I

    iget v7, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v0, v6, v7

    goto :goto_1

    .line 270
    .restart local v0       #copylength:I
    :cond_6
    add-int/2addr p2, v0

    .line 271
    sub-int v4, p3, v0

    .line 282
    .end local v0           #copylength:I
    .local v4, required:I
    :goto_2
    iget v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-ne v6, v5, :cond_8

    array-length v6, v1

    if-lt v4, v6, :cond_8

    .line 283
    invoke-virtual {v2, p1, p2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 284
    .local v3, read:I
    if-ne v3, v5, :cond_b

    .line 285
    if-eq v4, p3, :cond_1

    sub-int v5, p3, v4

    goto :goto_0

    .line 273
    .end local v3           #read:I
    .end local v4           #required:I
    :cond_7
    move v4, p3

    .restart local v4       #required:I
    goto :goto_2

    .line 288
    :cond_8
    invoke-direct {p0, v2, v1}, Ljava/io/BufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v6

    if-ne v6, v5, :cond_9

    .line 289
    if-eq v4, p3, :cond_1

    sub-int v5, p3, v4

    goto :goto_0

    .line 292
    :cond_9
    iget-object v6, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-eq v1, v6, :cond_a

    .line 293
    iget-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 294
    if-nez v1, :cond_a

    .line 295
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 299
    :cond_a
    iget v6, p0, Ljava/io/BufferedInputStream;->count:I

    iget v7, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v6, v7

    if-lt v6, v4, :cond_c

    move v3, v4

    .line 300
    .restart local v3       #read:I
    :goto_3
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v1, v6, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v6, v3

    iput v6, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 303
    :cond_b
    sub-int/2addr v4, v3

    .line 304
    if-nez v4, :cond_d

    move v5, p3

    .line 305
    goto :goto_0

    .line 299
    .end local v3           #read:I
    :cond_c
    iget v6, p0, Ljava/io/BufferedInputStream;->count:I

    iget v7, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v3, v6, v7

    goto :goto_3

    .line 307
    .restart local v3       #read:I
    :cond_d
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-nez v6, :cond_e

    .line 308
    sub-int v5, p3, v4

    goto/16 :goto_0

    .line 310
    :cond_e
    add-int/2addr p2, v3

    .line 311
    goto :goto_2
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 328
    :cond_0
    const/4 v0, -0x1

    :try_start_1
    iget v1, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-ne v0, v1, :cond_1

    .line 329
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark has been invalidated."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_1
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 8
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 350
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 351
    .local v0, localBuf:[B
    iget-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 352
    .local v1, localIn:Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 353
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    .end local v0           #localBuf:[B
    .end local v1           #localIn:Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 355
    .restart local v0       #localBuf:[B
    .restart local v1       #localIn:Ljava/io/InputStream;
    :cond_0
    const-wide/16 v4, 0x1

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    .line 356
    const-wide/16 p1, 0x0

    .line 384
    .end local p1
    :goto_0
    monitor-exit p0

    return-wide p1

    .line 358
    .restart local p1
    :cond_1
    if-nez v1, :cond_2

    .line 359
    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 362
    :cond_2
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_3

    .line 363
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, p1

    long-to-int v4, v4

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    goto :goto_0

    .line 366
    :cond_3
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 367
    .local v2, read:J
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 369
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-eq v4, v6, :cond_6

    .line 370
    iget v4, p0, Ljava/io/BufferedInputStream;->marklimit:I

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-gtz v4, :cond_6

    .line 371
    invoke-direct {p0, v1, v0}, Ljava/io/BufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v4

    if-ne v4, v6, :cond_4

    move-wide p1, v2

    .line 372
    goto :goto_0

    .line 374
    :cond_4
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long v6, p1, v2

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    .line 375
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    int-to-long v4, v4

    sub-long v6, p1, v2

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    goto :goto_0

    .line 379
    :cond_5
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 380
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    move-wide p1, v2

    .line 381
    goto :goto_0

    .line 384
    :cond_6
    sub-long v4, p1, v2

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    add-long p1, v2, v4

    goto :goto_0
.end method
