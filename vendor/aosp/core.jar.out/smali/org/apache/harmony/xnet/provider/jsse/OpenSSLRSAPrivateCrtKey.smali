.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;
.super Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
.source "OpenSSLRSAPrivateCrtKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateCrtKey;


# instance fields
.field private crtCoefficient:Ljava/math/BigInteger;

.field private primeExponentP:Ljava/math/BigInteger;

.field private primeExponentQ:Ljava/math/BigInteger;

.field private primeP:Ljava/math/BigInteger;

.field private primeQ:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V
    .locals 1
    .parameter "rsaKeySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->init(Ljava/security/spec/RSAPrivateCrtKeySpec;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)V

    .line 49
    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)V

    .line 41
    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;[[B)V
    .locals 0
    .parameter "key"
    .parameter "params"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;[[B)V

    .line 45
    return-void
.end method

.method static getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    .locals 19
    .parameter "rsaPrivateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v11

    .line 91
    .local v11, modulus:Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v16

    .line 93
    .local v16, privateExponent:Ljava/math/BigInteger;
    if-nez v11, :cond_0

    .line 94
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "modulus == null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_0
    if-nez v16, :cond_1

    .line 96
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "privateExponent == null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_1
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v17

    .line 107
    .local v17, publicExponent:Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v14

    .line 108
    .local v14, primeP:Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v15

    .line 109
    .local v15, primeQ:Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v12

    .line 110
    .local v12, primeExponentP:Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v13

    .line 111
    .local v13, primeExponentQ:Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    .line 113
    .local v9, crtCoefficient:Ljava/math/BigInteger;
    new-instance v18, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    if-nez v17, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    if-nez v14, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-nez v15, :cond_4

    const/4 v5, 0x0

    :goto_2
    if-nez v12, :cond_5

    const/4 v6, 0x0

    :goto_3
    if-nez v13, :cond_6

    const/4 v7, 0x0

    :goto_4
    if-nez v9, :cond_7

    const/4 v8, 0x0

    :goto_5
    invoke-static/range {v1 .. v8}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)I

    move-result v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;-><init>(I)V

    return-object v18

    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-virtual {v15}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    goto :goto_2

    :cond_5
    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    goto :goto_3

    :cond_6
    invoke-virtual {v13}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    goto :goto_4

    :cond_7
    invoke-virtual {v9}, Ljava/math/BigInteger;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_5

    .line 122
    .end local v9           #crtCoefficient:Ljava/math/BigInteger;
    .end local v12           #primeExponentP:Ljava/math/BigInteger;
    .end local v13           #primeExponentQ:Ljava/math/BigInteger;
    .end local v14           #primeP:Ljava/math/BigInteger;
    .end local v15           #primeQ:Ljava/math/BigInteger;
    .end local v17           #publicExponent:Ljava/math/BigInteger;
    :catch_0
    move-exception v10

    .line 123
    .local v10, e:Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static init(Ljava/security/spec/RSAPrivateCrtKeySpec;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    .locals 19
    .parameter "rsaKeySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v11

    .line 53
    .local v11, modulus:Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v16

    .line 55
    .local v16, privateExponent:Ljava/math/BigInteger;
    if-nez v11, :cond_0

    .line 56
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "modulus == null"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_0
    if-nez v16, :cond_1

    .line 58
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "privateExponent == null"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v17

    .line 69
    .local v17, publicExponent:Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v14

    .line 70
    .local v14, primeP:Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v15

    .line 71
    .local v15, primeQ:Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v12

    .line 72
    .local v12, primeExponentP:Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v13

    .line 73
    .local v13, primeExponentQ:Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    .line 75
    .local v9, crtCoefficient:Ljava/math/BigInteger;
    new-instance v18, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    if-nez v17, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    if-nez v14, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-nez v15, :cond_4

    const/4 v5, 0x0

    :goto_2
    if-nez v12, :cond_5

    const/4 v6, 0x0

    :goto_3
    if-nez v13, :cond_6

    const/4 v7, 0x0

    :goto_4
    if-nez v9, :cond_7

    const/4 v8, 0x0

    :goto_5
    invoke-static/range {v1 .. v8}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)I

    move-result v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;-><init>(I)V

    return-object v18

    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-virtual {v15}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    goto :goto_2

    :cond_5
    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    goto :goto_3

    :cond_6
    invoke-virtual {v13}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    goto :goto_4

    :cond_7
    invoke-virtual {v9}, Ljava/math/BigInteger;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_5

    .line 84
    .end local v9           #crtCoefficient:Ljava/math/BigInteger;
    .end local v12           #primeExponentP:Ljava/math/BigInteger;
    .end local v13           #primeExponentQ:Ljava/math/BigInteger;
    .end local v14           #primeP:Ljava/math/BigInteger;
    .end local v15           #primeQ:Ljava/math/BigInteger;
    .end local v17           #publicExponent:Ljava/math/BigInteger;
    :catch_0
    move-exception v10

    .line 85
    .local v10, e:Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v10}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 190
    if-ne p1, p0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v1

    .line 194
    :cond_1
    instance-of v3, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 195
    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    .line 201
    .local v0, other:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->getPkeyContext()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getPkeyContext()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_cmp(II)I

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 208
    .end local v0           #other:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
    :cond_2
    instance-of v3, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v3, :cond_6

    .line 209
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    move-object v0, p1

    .line 210
    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 212
    .local v0, other:Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->isEngineBased()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 213
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 216
    :cond_4
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto/16 :goto_0

    .line 224
    .end local v0           #other:Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_6
    instance-of v3, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v3, :cond_9

    .line 225
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    move-object v0, p1

    .line 226
    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 228
    .local v0, other:Ljava/security/interfaces/RSAPrivateKey;
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->isEngineBased()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 229
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    .line 231
    :cond_7
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_8
    move v1, v2

    goto/16 :goto_0

    .end local v0           #other:Ljava/security/interfaces/RSAPrivateKey;
    :cond_9
    move v1, v2

    .line 236
    goto/16 :goto_0
.end method

.method public getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 185
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 173
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 179
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 161
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 167
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 155
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->hashCode()I

    move-result v0

    .line 242
    .local v0, hashCode:I
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 245
    :cond_0
    return v0
.end method

.method declared-synchronized readParams([[B)V
    .locals 2
    .parameter "params"

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->readParams([[B)V

    .line 131
    const/4 v0, 0x1

    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    .line 135
    :cond_0
    const/4 v0, 0x3

    aget-object v0, p1, v0

    if-eqz v0, :cond_1

    .line 136
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    .line 138
    :cond_1
    const/4 v0, 0x4

    aget-object v0, p1, v0

    if-eqz v0, :cond_2

    .line 139
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x4

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    .line 141
    :cond_2
    const/4 v0, 0x5

    aget-object v0, p1, v0

    if-eqz v0, :cond_3

    .line 142
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x5

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    .line 144
    :cond_3
    const/4 v0, 0x6

    aget-object v0, p1, v0

    if-eqz v0, :cond_4

    .line 145
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x6

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    .line 147
    :cond_4
    const/4 v0, 0x7

    aget-object v0, p1, v0

    if-eqz v0, :cond_5

    .line 148
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x7

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_5
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2c

    const/16 v3, 0x10

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLRSAPrivateCrtKey{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->isEngineBased()Z

    move-result v0

    .line 253
    .local v0, engineBased:Z
    if-eqz v0, :cond_0

    .line 254
    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 260
    const-string v2, "modulus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    .line 265
    const-string v2, "publicExponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    :cond_1
    if-nez v0, :cond_2

    .line 271
    const-string v2, "privateExponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    if-eqz v2, :cond_3

    .line 277
    const-string v2, "primeP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    if-eqz v2, :cond_4

    .line 283
    const-string v2, "primeQ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    :cond_4
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    if-eqz v2, :cond_5

    .line 289
    const-string v2, "primeExponentP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    :cond_5
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    if-eqz v2, :cond_6

    .line 295
    const-string v2, "primeExponentQ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    :cond_6
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    if-eqz v2, :cond_7

    .line 301
    const-string v2, "crtCoefficient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
