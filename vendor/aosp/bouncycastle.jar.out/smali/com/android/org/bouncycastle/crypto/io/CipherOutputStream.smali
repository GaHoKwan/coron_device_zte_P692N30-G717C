.class public Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CipherOutputStream.java"


# instance fields
.field private buf:[B

.field private bufferedBlockCipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

.field private oneByte:[B

.field private streamCipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V
    .locals 1
    .parameter "os"
    .parameter "cipher"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    .line 28
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    .line 29
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/android/org/bouncycastle/crypto/StreamCipher;)V
    .locals 1
    .parameter "os"
    .parameter "cipher"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    .line 41
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    :try_start_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v3

    new-array v0, v3, [B

    .line 171
    .local v0, buf:[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v2

    .line 173
    .local v2, outLen:I
    if-eqz v2, :cond_0

    .line 175
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v0           #buf:[B
    .end local v2           #outLen:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->flush()V

    .line 186
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 187
    return-void

    .line 179
    :catch_0
    move-exception v1

    .line 181
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 145
    return-void
.end method

.method public write(I)V
    .locals 7
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 56
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v6

    .line 60
    .local v6, len:I
    if-eqz v6, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 69
    .end local v6           #len:I
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    int-to-byte v2, p1

    invoke-interface {v1, v2}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->returnByte(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public write([B)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->write([BII)V

    .line 89
    return-void
.end method

.method public write([BII)V
    .locals 7
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v4, v0, [B

    .line 110
    .local v4, buf:[B
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v6

    .line 112
    .local v6, outLen:I
    if-eqz v6, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 125
    .end local v6           #outLen:I
    :cond_0
    :goto_0
    return-void

    .line 119
    .end local v4           #buf:[B
    :cond_1
    new-array v4, p3, [B

    .line 121
    .restart local v4       #buf:[B
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    .line 123
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4, v5, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
