.class public abstract Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;
.super Ljavax/crypto/CipherSpi;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA$Raw;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA$PKCS1;
    }
.end annotation


# instance fields
.field private buffer:[B

.field private bufferOffset:I

.field private encrypting:Z

.field private inputTooLarge:Z

.field private key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

.field private padding:I

.field private usingPrivateKey:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .parameter "padding"

    .prologue
    .line 82
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->padding:I

    .line 83
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->padding:I

    .line 84
    return-void
.end method

.method private engineInitInternal(ILjava/security/Key;)V
    .locals 5
    .parameter "opmode"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 154
    if-eq p1, v3, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 155
    :cond_0
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->encrypting:Z

    .line 162
    :goto_0
    instance-of v2, p2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    if-eqz v2, :cond_4

    move-object v0, p2

    .line 163
    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    .line 164
    .local v0, rsaPrivateKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 165
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    .line 186
    .end local v0           #rsaPrivateKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v2

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RSA_size(I)I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->buffer:[B

    .line 187
    iput-boolean v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->inputTooLarge:Z

    .line 188
    return-void

    .line 156
    :cond_1
    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 157
    :cond_2
    iput-boolean v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->encrypting:Z

    goto :goto_0

    .line 159
    :cond_3
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported opmode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_4
    instance-of v2, p2, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v2, :cond_5

    move-object v0, p2

    .line 167
    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 168
    .local v0, rsaPrivateKey:Ljava/security/interfaces/RSAPrivateCrtKey;
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 169
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    goto :goto_1

    .line 170
    .end local v0           #rsaPrivateKey:Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_5
    instance-of v2, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v2, :cond_6

    move-object v0, p2

    .line 171
    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 172
    .local v0, rsaPrivateKey:Ljava/security/interfaces/RSAPrivateKey;
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 173
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    goto :goto_1

    .line 174
    .end local v0           #rsaPrivateKey:Ljava/security/interfaces/RSAPrivateKey;
    :cond_6
    instance-of v2, p2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;

    if-eqz v2, :cond_7

    move-object v1, p2

    .line 175
    check-cast v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;

    .line 176
    .local v1, rsaPublicKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;
    iput-boolean v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 177
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    goto :goto_1

    .line 178
    .end local v1           #rsaPublicKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;
    :cond_7
    instance-of v2, p2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_8

    move-object v1, p2

    .line 179
    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 180
    .local v1, rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;
    iput-boolean v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 181
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    goto :goto_1

    .line 183
    .end local v1           #rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;
    :cond_8
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Need RSA private or public key"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private keySizeBytes()I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v0

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RSA_size(I)I

    move-result v0

    return v0
.end method

.method private paddedBlockSizeBytes()I
    .locals 3

    .prologue
    .line 128
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    .line 129
    .local v0, paddedBlockSizeBytes:I
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->padding:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 130
    add-int/lit8 v0, v0, -0x1

    .line 131
    add-int/lit8 v0, v0, -0xa

    .line 133
    :cond_0
    return v0
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 5
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->engineDoFinal([BII)[B

    move-result-object v0

    .line 298
    .local v0, b:[B
    array-length v2, v0

    add-int v1, p5, v2

    .line 299
    .local v1, lastOffset:I
    array-length v2, p4

    if-le v1, v2, :cond_0

    .line 300
    new-instance v2, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "output buffer is too small "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    :cond_0
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    array-length v2, v0

    return v2
.end method

.method protected engineDoFinal([BII)[B
    .locals 9
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 239
    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->engineUpdate([BII)[B

    .line 243
    :cond_0
    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->inputTooLarge:Z

    if-eqz v5, :cond_1

    .line 244
    new-instance v5, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "input must be under "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->buffer:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 248
    :cond_1
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->bufferOffset:I

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->buffer:[B

    array-length v6, v6

    if-eq v5, v6, :cond_4

    .line 249
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->padding:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 250
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->buffer:[B

    array-length v5, v5

    new-array v4, v5, [B

    .line 251
    .local v4, tmpBuf:[B
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->buffer:[B

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->buffer:[B

    array-length v6, v6

    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->bufferOffset:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->bufferOffset:I

    invoke-static {v5, v8, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    :goto_0
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->buffer:[B

    array-length v5, v5

    new-array v2, v5, [B

    .line 261
    .local v2, output:[B
    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->encrypting:Z

    if-eqz v5, :cond_6

    .line 262
    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->usingPrivateKey:Z

    if-eqz v5, :cond_5

    .line 263
    array-length v5, v4

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v6

    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->padding:I

    invoke-static {v5, v4, v2, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RSA_private_encrypt(I[B[BII)I

    move-result v3

    .line 284
    .local v3, resultSize:I
    :goto_1
    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->encrypting:Z

    if-nez v5, :cond_2

    array-length v5, v2

    if-eq v3, v5, :cond_2

    .line 285
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 288
    :cond_2
    iput v8, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->bufferOffset:I

    .line 289
    return-object v2

    .line 253
    .end local v2           #output:[B
    .end local v3           #resultSize:I
    .end local v4           #tmpBuf:[B
    :cond_3
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->buffer:[B

    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->bufferOffset:I

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    .restart local v4       #tmpBuf:[B
    goto :goto_0

    .line 256
    .end local v4           #tmpBuf:[B
    :cond_4
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->buffer:[B

    .restart local v4       #tmpBuf:[B
    goto :goto_0

    .line 266
    .restart local v2       #output:[B
    :cond_5
    array-length v5, v4

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v6

    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->padding:I

    invoke-static {v5, v4, v2, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RSA_public_encrypt(I[B[BII)I

    move-result v3

    .restart local v3       #resultSize:I
    goto :goto_1

    .line 271
    .end local v3           #resultSize:I
    :cond_6
    :try_start_0
    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->usingPrivateKey:Z

    if-eqz v5, :cond_7

    .line 272
    array-length v5, v4

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v6

    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->padding:I

    invoke-static {v5, v4, v2, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RSA_private_decrypt(I[B[BII)I

    move-result v3

    .restart local v3       #resultSize:I
    goto :goto_1

    .line 275
    .end local v3           #resultSize:I
    :cond_7
    array-length v5, v4

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v6

    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->padding:I

    invoke-static {v5, v4, v2, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RSA_public_decrypt(I[B[BII)I
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .restart local v3       #resultSize:I
    goto :goto_1

    .line 278
    .end local v3           #resultSize:I
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/security/SignatureException;
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 280
    .local v1, newE:Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 281
    throw v1
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->encrypting:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->paddedBlockSizeBytes()I

    move-result v0

    .line 116
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    goto :goto_0
.end method

.method protected engineGetIV()[B
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1
    .parameter "inputLen"

    .prologue
    .line 121
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->encrypting:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    .line 124
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->paddedBlockSizeBytes()I

    move-result v0

    goto :goto_0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 3
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 209
    if-eqz p3, :cond_0

    .line 210
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown param type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;)V

    .line 215
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
    .parameter "opmode"
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;)V

    .line 193
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 198
    if-eqz p3, :cond_0

    .line 199
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown param type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;)V

    .line 204
    return-void
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 4
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, modeUpper:Ljava/lang/String;
    const-string v1, "NONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ECB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    return-void

    .line 93
    :cond_1
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 4
    .parameter "padding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, paddingUpper:Ljava/lang/String;
    const-string v1, "PKCS1PADDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const/4 v1, 0x1

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->padding:I

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v1, "NOPADDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->padding:I

    goto :goto_0

    .line 108
    :cond_1
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "padding not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 6
    .parameter "wrappedKey"
    .parameter "wrappedKeyAlgorithm"
    .parameter "wrappedKeyType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 324
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    invoke-virtual {p0, p1, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->engineDoFinal([BII)[B

    move-result-object v1

    .line 325
    .local v1, encoded:[B
    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    .line 326
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 327
    .local v2, keyFactory:Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 332
    .end local v2           #keyFactory:Ljava/security/KeyFactory;
    :goto_0
    return-object v3

    .line 328
    :cond_0
    const/4 v3, 0x2

    if-ne p3, v3, :cond_1

    .line 329
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 330
    .restart local v2       #keyFactory:Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    goto :goto_0

    .line 331
    .end local v2           #keyFactory:Ljava/security/KeyFactory;
    :cond_1
    const/4 v3, 0x3

    if-ne p3, v3, :cond_2

    .line 332
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 336
    .end local v1           #encoded:[B
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 334
    .end local v0           #e:Ljavax/crypto/IllegalBlockSizeException;
    .restart local v1       #encoded:[B
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrappedKeyType == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2

    .line 338
    .end local v1           #encoded:[B
    :catch_1
    move-exception v0

    .line 339
    .local v0, e:Ljavax/crypto/BadPaddingException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 340
    .end local v0           #e:Ljavax/crypto/BadPaddingException;
    :catch_2
    move-exception v0

    .line 341
    .local v0, e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected engineUpdate([BII[BI)I
    .locals 1
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->engineUpdate([BII)[B

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 2
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 219
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->bufferOffset:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->inputTooLarge:Z

    .line 221
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    .line 226
    :goto_0
    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->bufferOffset:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->bufferOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->bufferOffset:I

    .line 226
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    goto :goto_0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 311
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 312
    .local v1, encoded:[B
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {p0, v1, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 313
    .end local v1           #encoded:[B
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 315
    .local v2, newE:Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v2, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 316
    throw v2
.end method
