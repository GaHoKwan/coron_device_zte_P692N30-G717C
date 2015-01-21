.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "OpenSSLRSAKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/security/KeyFactorySpi;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    .local p0, this:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAKeyFactory;,"Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAKeyFactory<TT;TS;>;"
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 7
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAKeyFactory;,"Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAKeyFactory<TT;TS;>;"
    instance-of v4, p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 62
    check-cast v3, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 64
    .local v3, rsaKeySpec:Ljava/security/spec/RSAPrivateCrtKeySpec;
    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;

    invoke-direct {v4, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;-><init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V

    .line 75
    .end local v3           #rsaKeySpec:Ljava/security/spec/RSAPrivateCrtKeySpec;
    :goto_0
    return-object v4

    .line 65
    :cond_0
    instance-of v4, p1, Ljava/security/spec/RSAPrivateKeySpec;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 66
    check-cast v3, Ljava/security/spec/RSAPrivateKeySpec;

    .line 68
    .local v3, rsaKeySpec:Ljava/security/spec/RSAPrivateKeySpec;
    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    invoke-direct {v4, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;-><init>(Ljava/security/spec/RSAPrivateKeySpec;)V

    goto :goto_0

    .line 69
    .end local v3           #rsaKeySpec:Ljava/security/spec/RSAPrivateKeySpec;
    :cond_1
    instance-of v4, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v4, :cond_2

    move-object v2, p1

    .line 70
    check-cast v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 73
    .local v2, pkcs8KeySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_start_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v2}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->d2i_PKCS8_PRIV_KEY_INFO([B)I

    move-result v4

    invoke-direct {v1, v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;-><init>(I)V

    .line 75
    .local v1, key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getInstance(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 76
    .end local v1           #key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v4, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 80
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #pkcs8KeySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    :cond_2
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Must use RSAPublicKeySpec or PKCS8EncodedKeySpec; was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 7
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAKeyFactory;,"Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAKeyFactory<TT;TS;>;"
    instance-of v4, p1, Ljava/security/spec/RSAPublicKeySpec;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 41
    check-cast v2, Ljava/security/spec/RSAPublicKeySpec;

    .line 43
    .local v2, rsaKeySpec:Ljava/security/spec/RSAPublicKeySpec;
    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;

    invoke-direct {v4, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;-><init>(Ljava/security/spec/RSAPublicKeySpec;)V

    .line 50
    .end local v2           #rsaKeySpec:Ljava/security/spec/RSAPublicKeySpec;
    :goto_0
    return-object v4

    .line 44
    :cond_0
    instance-of v4, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 45
    check-cast v3, Ljava/security/spec/X509EncodedKeySpec;

    .line 48
    .local v3, x509KeySpec:Ljava/security/spec/X509EncodedKeySpec;
    :try_start_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v3}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->d2i_PUBKEY([B)I

    move-result v4

    invoke-direct {v1, v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;-><init>(I)V

    .line 50
    .local v1, key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;

    invoke-direct {v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v1           #key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v4, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 55
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #x509KeySpec:Ljava/security/spec/X509EncodedKeySpec;
    :cond_1
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Must use RSAPublicKeySpec or X509EncodedKeySpec; was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 20
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAKeyFactory;,"Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAKeyFactory<TT;TS;>;"
    .local p2, keySpec:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 88
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v10, "key == null"

    invoke-direct {v1, v10}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    if-nez p2, :cond_1

    .line 92
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v10, "keySpec == null"

    invoke-direct {v1, v10}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_1
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_4

    move-object/from16 v19, p1

    .line 96
    check-cast v19, Ljava/security/interfaces/RSAPublicKey;

    .line 98
    .local v19, rsaKey:Ljava/security/interfaces/RSAPublicKey;
    const-class v1, Ljava/security/spec/RSAPublicKeySpec;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 100
    .local v2, modulus:Ljava/math/BigInteger;
    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 101
    .local v3, publicExponent:Ljava/math/BigInteger;
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 144
    .end local v2           #modulus:Ljava/math/BigInteger;
    .end local v3           #publicExponent:Ljava/math/BigInteger;
    .end local v19           #rsaKey:Ljava/security/interfaces/RSAPublicKey;
    :goto_0
    return-object v1

    .line 102
    .restart local v19       #rsaKey:Ljava/security/interfaces/RSAPublicKey;
    :cond_2
    const-class v1, Ljava/security/spec/X509EncodedKeySpec;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto :goto_0

    .line 105
    :cond_3
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v10, "Must be RSAPublicKeySpec or X509EncodedKeySpec"

    invoke-direct {v1, v10}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    .end local v19           #rsaKey:Ljava/security/interfaces/RSAPublicKey;
    :cond_4
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v1, :cond_8

    move-object/from16 v19, p1

    .line 108
    check-cast v19, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 110
    .local v19, rsaKey:Ljava/security/interfaces/RSAPrivateCrtKey;
    const-class v1, Ljava/security/spec/RSAPrivateKeySpec;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 111
    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 112
    .restart local v2       #modulus:Ljava/math/BigInteger;
    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 113
    .local v4, privateExponent:Ljava/math/BigInteger;
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v1, v2, v4}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 114
    .end local v2           #modulus:Ljava/math/BigInteger;
    .end local v4           #privateExponent:Ljava/math/BigInteger;
    :cond_5
    const-class v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 115
    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 116
    .restart local v2       #modulus:Ljava/math/BigInteger;
    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 117
    .restart local v3       #publicExponent:Ljava/math/BigInteger;
    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 118
    .restart local v4       #privateExponent:Ljava/math/BigInteger;
    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    .line 119
    .local v5, primeP:Ljava/math/BigInteger;
    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 120
    .local v6, primeQ:Ljava/math/BigInteger;
    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    .line 121
    .local v7, primeExponentP:Ljava/math/BigInteger;
    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    .line 122
    .local v8, primeExponentQ:Ljava/math/BigInteger;
    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    .line 123
    .local v9, crtCoefficient:Ljava/math/BigInteger;
    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 125
    .end local v2           #modulus:Ljava/math/BigInteger;
    .end local v3           #publicExponent:Ljava/math/BigInteger;
    .end local v4           #privateExponent:Ljava/math/BigInteger;
    .end local v5           #primeP:Ljava/math/BigInteger;
    .end local v6           #primeQ:Ljava/math/BigInteger;
    .end local v7           #primeExponentP:Ljava/math/BigInteger;
    .end local v8           #primeExponentQ:Ljava/math/BigInteger;
    .end local v9           #crtCoefficient:Ljava/math/BigInteger;
    :cond_6
    const-class v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 126
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPrivateCrtKey;->getEncoded()[B

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    goto/16 :goto_0

    .line 128
    :cond_7
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v10, "Must be RSAPrivateKeySpec or or RSAPrivateCrtKeySpec or PKCS8EncodedKeySpec"

    invoke-direct {v1, v10}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    .end local v19           #rsaKey:Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_8
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v1, :cond_c

    move-object/from16 v19, p1

    .line 132
    check-cast v19, Ljava/security/interfaces/RSAPrivateKey;

    .line 134
    .local v19, rsaKey:Ljava/security/interfaces/RSAPrivateKey;
    const-class v1, Ljava/security/spec/RSAPrivateKeySpec;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 135
    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 136
    .restart local v2       #modulus:Ljava/math/BigInteger;
    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 137
    .restart local v4       #privateExponent:Ljava/math/BigInteger;
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v1, v2, v4}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    .line 138
    .end local v2           #modulus:Ljava/math/BigInteger;
    .end local v4           #privateExponent:Ljava/math/BigInteger;
    :cond_9
    const-class v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 139
    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 140
    .restart local v2       #modulus:Ljava/math/BigInteger;
    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 141
    .restart local v4       #privateExponent:Ljava/math/BigInteger;
    new-instance v10, Ljava/security/spec/RSAPrivateCrtKeySpec;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v2

    move-object v13, v4

    invoke-direct/range {v10 .. v18}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v1, v10

    goto/16 :goto_0

    .line 143
    .end local v2           #modulus:Ljava/math/BigInteger;
    .end local v4           #privateExponent:Ljava/math/BigInteger;
    :cond_a
    const-class v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 144
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/RSAPrivateKey;->getEncoded()[B

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    goto/16 :goto_0

    .line 146
    :cond_b
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v10, "Must be RSAPrivateKeySpec or PKCS8EncodedKeySpec"

    invoke-direct {v1, v10}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    .end local v19           #rsaKey:Ljava/security/interfaces/RSAPrivateKey;
    :cond_c
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v10, "Must be RSAPublicKey or RSAPrivateKey"

    invoke-direct {v1, v10}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 13
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAKeyFactory;,"Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAKeyFactory<TT;TS;>;"
    if-nez p1, :cond_0

    .line 157
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v11, "key == null"

    invoke-direct {v0, v11}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_1

    move-object v10, p1

    .line 161
    check-cast v10, Ljava/security/interfaces/RSAPublicKey;

    .line 164
    .local v10, rsaKey:Ljava/security/interfaces/RSAPublicKey;
    :try_start_0
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {v10}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v11

    invoke-interface {v10}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    .end local v10           #rsaKey:Ljava/security/interfaces/RSAPublicKey;
    :goto_0
    return-object v0

    .line 166
    .restart local v10       #rsaKey:Ljava/security/interfaces/RSAPublicKey;
    :catch_0
    move-exception v9

    .line 167
    .local v9, e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 169
    .end local v9           #e:Ljava/security/spec/InvalidKeySpecException;
    .end local v10           #rsaKey:Ljava/security/interfaces/RSAPublicKey;
    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_2

    move-object v10, p1

    .line 170
    check-cast v10, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 171
    .local v10, rsaKey:Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 172
    .local v1, modulus:Ljava/math/BigInteger;
    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    .line 173
    .local v2, publicExponent:Ljava/math/BigInteger;
    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 174
    .local v3, privateExponent:Ljava/math/BigInteger;
    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    .line 175
    .local v4, primeP:Ljava/math/BigInteger;
    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 176
    .local v5, primeQ:Ljava/math/BigInteger;
    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    .line 177
    .local v6, primeExponentP:Ljava/math/BigInteger;
    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    .line 178
    .local v7, primeExponentQ:Ljava/math/BigInteger;
    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    .line 181
    .local v8, crtCoefficient:Ljava/math/BigInteger;
    :try_start_1
    new-instance v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 184
    :catch_1
    move-exception v9

    .line 185
    .restart local v9       #e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 187
    .end local v1           #modulus:Ljava/math/BigInteger;
    .end local v2           #publicExponent:Ljava/math/BigInteger;
    .end local v3           #privateExponent:Ljava/math/BigInteger;
    .end local v4           #primeP:Ljava/math/BigInteger;
    .end local v5           #primeQ:Ljava/math/BigInteger;
    .end local v6           #primeExponentP:Ljava/math/BigInteger;
    .end local v7           #primeExponentQ:Ljava/math/BigInteger;
    .end local v8           #crtCoefficient:Ljava/math/BigInteger;
    .end local v9           #e:Ljava/security/spec/InvalidKeySpecException;
    .end local v10           #rsaKey:Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_2
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_3

    move-object v10, p1

    .line 188
    check-cast v10, Ljava/security/interfaces/RSAPrivateKey;

    .line 189
    .local v10, rsaKey:Ljava/security/interfaces/RSAPrivateKey;
    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 190
    .restart local v1       #modulus:Ljava/math/BigInteger;
    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 193
    .restart local v3       #privateExponent:Ljava/math/BigInteger;
    :try_start_2
    new-instance v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v0, v1, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    .line 194
    :catch_2
    move-exception v9

    .line 195
    .restart local v9       #e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 198
    .end local v1           #modulus:Ljava/math/BigInteger;
    .end local v3           #privateExponent:Ljava/math/BigInteger;
    .end local v9           #e:Ljava/security/spec/InvalidKeySpecException;
    .end local v10           #rsaKey:Ljava/security/interfaces/RSAPrivateKey;
    :cond_3
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v11, "Key must be RSAPublicKey or RSAPrivateCrtKey or RSAPrivateKey"

    invoke-direct {v0, v11}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
