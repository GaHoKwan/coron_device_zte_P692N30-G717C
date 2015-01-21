.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
.super Ljava/security/Signature;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$1;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA512RSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA384RSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA256RSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;
    }
.end annotation


# instance fields
.field private ctx:I

.field private final engineType:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

.field private final evpAlgorithm:Ljava/lang/String;

.field private key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

.field private final singleByte:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;)V
    .locals 1
    .parameter "algorithm"
    .parameter "engineType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->singleByte:[B

    .line 76
    const-string v0, "RSA-MD2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->engineType:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    .line 81
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->evpAlgorithm:Ljava/lang/String;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;-><init>(Ljava/lang/String;Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;)V

    return-void
.end method

.method private destroyContextIfExists()V
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    if-eqz v0, :cond_0

    .line 256
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_MD_CTX_destroy(I)V

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    .line 259
    :cond_0
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
    .line 117
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
    .line 122
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->destroyContextIfExists()V

    .line 124
    instance-of v2, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->engineType:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;->DSA:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    if-eq v2, v3, :cond_0

    .line 126
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Signature not initialized as DSA"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p1

    .line 129
    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;

    .line 130
    .local v0, dsaPrivateKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    .line 162
    .end local v0           #dsaPrivateKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;
    :goto_0
    return-void

    .line 131
    :cond_1
    instance-of v2, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v2, :cond_3

    .line 132
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->engineType:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;->DSA:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    if-eq v2, v3, :cond_2

    .line 133
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Signature not initialized as DSA"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object v0, p1

    .line 136
    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    .line 137
    .local v0, dsaPrivateKey:Ljava/security/interfaces/DSAPrivateKey;
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->getInstance(Ljava/security/interfaces/DSAPrivateKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    goto :goto_0

    .line 138
    .end local v0           #dsaPrivateKey:Ljava/security/interfaces/DSAPrivateKey;
    :cond_3
    instance-of v2, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    if-eqz v2, :cond_5

    .line 139
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->engineType:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;->RSA:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    if-eq v2, v3, :cond_4

    .line 140
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Signature not initialized as RSA"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object v1, p1

    .line 143
    check-cast v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    .line 144
    .local v1, rsaPrivateKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    goto :goto_0

    .line 145
    .end local v1           #rsaPrivateKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
    :cond_5
    instance-of v2, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v2, :cond_7

    .line 146
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->engineType:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;->RSA:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    if-eq v2, v3, :cond_6

    .line 147
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Signature not initialized as RSA"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    move-object v1, p1

    .line 150
    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 151
    .local v1, rsaPrivateKey:Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    goto :goto_0

    .line 152
    .end local v1           #rsaPrivateKey:Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_7
    instance-of v2, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v2, :cond_9

    .line 153
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->engineType:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;->RSA:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    if-eq v2, v3, :cond_8

    .line 154
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Signature not initialized as RSA"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    move-object v1, p1

    .line 157
    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 158
    .local v1, rsaPrivateKey:Ljava/security/interfaces/RSAPrivateKey;
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    goto :goto_0

    .line 160
    .end local v1           #rsaPrivateKey:Ljava/security/interfaces/RSAPrivateKey;
    :cond_9
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
    .line 167
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->destroyContextIfExists()V

    .line 169
    instance-of v2, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;

    if-eqz v2, :cond_1

    .line 170
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->engineType:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;->DSA:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    if-eq v2, v3, :cond_0

    .line 171
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Signature not initialized as DSA"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p1

    .line 174
    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;

    .line 175
    .local v0, dsaPublicKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    .line 200
    .end local v0           #dsaPublicKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;
    :goto_0
    return-void

    .line 176
    :cond_1
    instance-of v2, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v2, :cond_3

    .line 177
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->engineType:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;->DSA:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    if-eq v2, v3, :cond_2

    .line 178
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Signature not initialized as DSA"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object v0, p1

    .line 181
    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    .line 182
    .local v0, dsaPublicKey:Ljava/security/interfaces/DSAPublicKey;
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->getInstance(Ljava/security/interfaces/DSAPublicKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    goto :goto_0

    .line 183
    .end local v0           #dsaPublicKey:Ljava/security/interfaces/DSAPublicKey;
    :cond_3
    instance-of v2, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;

    if-eqz v2, :cond_5

    .line 184
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->engineType:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;->RSA:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    if-eq v2, v3, :cond_4

    .line 185
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Signature not initialized as RSA"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object v1, p1

    .line 188
    check-cast v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;

    .line 189
    .local v1, rsaPublicKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    goto :goto_0

    .line 190
    .end local v1           #rsaPublicKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;
    :cond_5
    instance-of v2, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_7

    .line 191
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->engineType:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;->RSA:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    if-eq v2, v3, :cond_6

    .line 192
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Signature not initialized as RSA"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    move-object v1, p1

    .line 195
    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 196
    .local v1, rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    goto :goto_0

    .line 198
    .end local v1           #rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;
    :cond_7
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
    .line 204
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
    .line 208
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    if-nez v4, :cond_0

    .line 210
    new-instance v4, Ljava/security/SignatureException;

    const-string v5, "Need DSA or RSA private key"

    invoke-direct {v4, v5}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 214
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v4

    invoke-static {v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_size(I)I

    move-result v4

    new-array v0, v4, [B

    .line 215
    .local v0, buffer:[B
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v6

    invoke-static {v4, v0, v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_SignFinal(I[BII)I

    move-result v1

    .line 217
    .local v1, bytesWritten:I
    new-array v3, v1, [B

    .line 218
    .local v3, signature:[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->destroyContextIfExists()V

    .line 220
    return-object v3

    .line 221
    .end local v0           #buffer:[B
    .end local v1           #bytesWritten:I
    .end local v3           #signature:[B
    :catch_0
    move-exception v2

    .line 222
    .local v2, ex:Ljava/lang/Exception;
    :try_start_1
    new-instance v4, Ljava/security/SignatureException;

    invoke-direct {v4, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->destroyContextIfExists()V

    throw v4
.end method

.method protected engineUpdate(B)V
    .locals 3
    .parameter "input"

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->singleByte:[B

    aput-byte p1, v0, v2

    .line 87
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->engineUpdate([BII)V

    .line 88
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 3
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 92
    iget v1, p0, Ljava/security/Signature;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 93
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    if-nez v1, :cond_0

    .line 95
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->evpAlgorithm:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_SignInit(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    invoke-static {v1, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_SignUpdate(I[BII)V

    .line 113
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 103
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    if-nez v1, :cond_2

    .line 105
    :try_start_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->evpAlgorithm:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_VerifyInit(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    :cond_2
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    invoke-static {v1, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_VerifyUpdate(I[BII)V

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    .line 107
    .restart local v0       #ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineVerify([B)Z
    .locals 8
    .parameter "sigBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 234
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    if-nez v4, :cond_0

    .line 236
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Need DSA or RSA public key"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_0
    :try_start_0
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    const/4 v5, 0x0

    array-length v6, p1

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v7

    invoke-static {v4, p1, v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_VerifyFinal(I[BIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 242
    .local v1, result:I
    if-ne v1, v2, :cond_1

    .line 250
    :goto_0
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->destroyContextIfExists()V

    .line 244
    .end local v1           #result:I
    :goto_1
    return v2

    .restart local v1       #result:I
    :cond_1
    move v2, v3

    .line 242
    goto :goto_0

    .line 243
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 250
    .local v0, ex:Ljava/lang/Exception;
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->destroyContextIfExists()V

    move v2, v3

    .line 244
    goto :goto_1

    .line 250
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->destroyContextIfExists()V

    throw v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 264
    :try_start_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    if-eqz v0, :cond_0

    .line 265
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_MD_CTX_destroy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 270
    return-void

    .line 268
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
