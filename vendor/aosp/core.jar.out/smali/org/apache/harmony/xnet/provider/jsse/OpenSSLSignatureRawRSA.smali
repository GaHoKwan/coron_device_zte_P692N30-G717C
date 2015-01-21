.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;
.super Ljava/security/Signature;
.source "OpenSSLSignatureRawRSA.java"


# instance fields
.field private inputBuffer:[B

.field private inputIsTooLong:Z

.field private inputOffset:I

.field private key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 60
    const-string v0, "NONEwithRSA"

    invoke-direct {p0, v0}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 95
    instance-of v2, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 96
    check-cast v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    .line 97
    .local v1, rsaPrivateKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    .line 109
    .end local v1           #rsaPrivateKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v2

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RSA_size(I)I

    move-result v0

    .line 110
    .local v0, maxSize:I
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputBuffer:[B

    .line 111
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 112
    return-void

    .line 98
    .end local v0           #maxSize:I
    :cond_0
    instance-of v2, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 99
    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 100
    .local v1, rsaPrivateKey:Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    goto :goto_0

    .line 101
    .end local v1           #rsaPrivateKey:Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_1
    instance-of v2, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 102
    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 103
    .local v1, rsaPrivateKey:Ljava/security/interfaces/RSAPrivateKey;
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    goto :goto_0

    .line 105
    .end local v1           #rsaPrivateKey:Ljava/security/interfaces/RSAPrivateKey;
    :cond_2
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Need DSA or RSA private key"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 4
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 116
    instance-of v2, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 117
    check-cast v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;

    .line 118
    .local v1, rsaPublicKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    .line 127
    .end local v1           #rsaPublicKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v2

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RSA_size(I)I

    move-result v0

    .line 128
    .local v0, maxSize:I
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputBuffer:[B

    .line 129
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 130
    return-void

    .line 119
    .end local v0           #maxSize:I
    :cond_0
    instance-of v2, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 120
    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 121
    .local v1, rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    goto :goto_0

    .line 123
    .end local v1           #rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;
    :cond_1
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Need DSA or RSA public key"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 134
    return-void
.end method

.method protected engineSign()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 138
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    if-nez v2, :cond_0

    .line 140
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Need RSA private key"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_0
    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    if-eqz v2, :cond_1

    .line 144
    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (modulus size)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    new-array v1, v2, [B

    .line 150
    .local v1, outputBuffer:[B
    :try_start_0
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputBuffer:[B

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v1, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RSA_private_encrypt(I[B[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    iput v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 152
    return-object v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/security/SignatureException;

    invoke-direct {v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iput v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputOffset:I

    throw v2
.end method

.method protected engineUpdate(B)V
    .locals 3
    .parameter "input"

    .prologue
    .line 65
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 67
    .local v0, oldOffset:I
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputBuffer:[B

    aput-byte p1, v1, v0

    goto :goto_0
.end method

.method protected engineUpdate([BII)V
    .locals 3
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 77
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 78
    .local v0, oldOffset:I
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputOffset:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 80
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputBuffer:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method protected engineVerify([B)Z
    .locals 10
    .parameter "sigBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 162
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    if-nez v7, :cond_0

    .line 164
    new-instance v6, Ljava/security/SignatureException;

    const-string v7, "Need RSA public key"

    invoke-direct {v6, v7}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 167
    :cond_0
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    if-eqz v7, :cond_1

    .line 189
    :goto_0
    return v6

    .line 171
    :cond_1
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v7, v7

    new-array v4, v7, [B

    .line 175
    .local v4, outputBuffer:[B
    :try_start_0
    array-length v7, p1

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v8

    const/4 v9, 0x1

    invoke-static {v7, p1, v4, v8, v9}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RSA_public_decrypt(I[B[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    .line 183
    .local v5, resultSize:I
    :try_start_1
    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputOffset:I

    if-ne v5, v7, :cond_3

    .line 184
    .local v3, matches:Z
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_4

    .line 185
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputBuffer:[B

    aget-byte v7, v7, v2

    aget-byte v8, v4, v2

    if-eq v7, v8, :cond_2

    .line 186
    const/4 v3, 0x0

    .line 184
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 177
    .end local v2           #i:I
    .end local v3           #matches:Z
    .end local v5           #resultSize:I
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/security/SignatureException;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    .end local v0           #e:Ljava/security/SignatureException;
    :catch_1
    move-exception v1

    .line 191
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    new-instance v7, Ljava/security/SignatureException;

    invoke-direct {v7, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    iput v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputOffset:I

    throw v7

    .line 179
    :catch_2
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    iput v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputOffset:I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v5       #resultSize:I
    :cond_3
    move v3, v6

    .line 183
    goto :goto_1

    .line 193
    .restart local v2       #i:I
    .restart local v3       #matches:Z
    :cond_4
    iput v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignatureRawRSA;->inputOffset:I

    move v6, v3

    .line 189
    goto :goto_0
.end method
