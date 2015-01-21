.class public Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;
.super Ljava/io/FilterInputStream;
.source "CipherInputStream.java"


# static fields
.field private static final INPUT_BUF_SIZE:I = 0x800


# instance fields
.field private buf:[B

.field private bufOff:I

.field private bufferedBlockCipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

.field private finalized:Z

.field private inBuf:[B

.field private maxBuf:I

.field private streamCipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V
    .locals 2
    .parameter "is"
    .parameter "cipher"

    .prologue
    const/16 v1, 0x800

    .line 44
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    .line 48
    invoke-virtual {p2, v1}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    .line 49
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/org/bouncycastle/crypto/StreamCipher;)V
    .locals 2
    .parameter "is"
    .parameter "cipher"

    .prologue
    const/16 v1, 0x800

    .line 56
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->streamCipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    .line 60
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    .line 61
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    .line 62
    return-void
.end method

.method private nextChunk()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x0

    .line 70
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v3

    .line 74
    .local v3, available:I
    if-gtz v3, :cond_0

    .line 76
    const/4 v3, 0x1

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    array-length v1, v1

    if-le v3, v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    array-length v2, v2

    invoke-super {p0, v1, v5, v2}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v3

    .line 88
    :goto_0
    if-gez v3, :cond_6

    .line 90
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->finalized:Z

    if-eqz v1, :cond_3

    .line 147
    :cond_1
    :goto_1
    return v0

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    invoke-super {p0, v1, v5, v3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v3

    goto :goto_0

    .line 97
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v1, :cond_5

    .line 99
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_2
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->finalized:Z

    .line 115
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-eq v1, v2, :cond_1

    .line 147
    :cond_4
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    goto :goto_1

    .line 103
    :cond_5
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 106
    :catch_0
    move-exception v6

    .line 108
    .local v6, e:Ljava/lang/Exception;
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error processing stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    .end local v6           #e:Ljava/lang/Exception;
    :cond_6
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    .line 126
    :try_start_2
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_7

    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    :goto_3
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-nez v0, :cond_4

    .line 143
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->nextChunk()I

    move-result v0

    goto :goto_1

    .line 132
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->streamCipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    .line 133
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 136
    :catch_1
    move-exception v6

    .line 138
    .restart local v6       #e:Ljava/lang/Exception;
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error processing stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 238
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-ne v0, v1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->nextChunk()I

    move-result v0

    if-gez v0, :cond_0

    .line 157
    const/4 v0, -0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-ne v1, v2, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->nextChunk()I

    move-result v1

    if-gez v1, :cond_0

    .line 181
    const/4 v0, -0x1

    .line 199
    :goto_0
    return v0

    .line 185
    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    sub-int v0, v1, v2

    .line 187
    .local v0, available:I
    if-le p3, v0, :cond_1

    .line 189
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    move v0, p3

    .line 199
    goto :goto_0
.end method

.method public skip(J)J
    .locals 4
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 207
    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    .line 224
    :goto_0
    return-wide v1

    .line 212
    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    sub-int v0, v1, v2

    .line 214
    .local v0, available:I
    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 216
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    .line 218
    int-to-long v1, v0

    goto :goto_0

    .line 222
    :cond_1
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    long-to-int v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    .line 224
    long-to-int v1, p1

    int-to-long v1, v1

    goto :goto_0
.end method
