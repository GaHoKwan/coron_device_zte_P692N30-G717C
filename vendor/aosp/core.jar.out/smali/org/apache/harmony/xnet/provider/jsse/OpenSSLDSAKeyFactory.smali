.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "OpenSSLDSAKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
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
    .line 60
    instance-of v4, p1, Ljava/security/spec/DSAPrivateKeySpec;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 61
    check-cast v0, Ljava/security/spec/DSAPrivateKeySpec;

    .line 63
    .local v0, dsaKeySpec:Ljava/security/spec/DSAPrivateKeySpec;
    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;

    invoke-direct {v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;-><init>(Ljava/security/spec/DSAPrivateKeySpec;)V

    .line 70
    .end local v0           #dsaKeySpec:Ljava/security/spec/DSAPrivateKeySpec;
    :goto_0
    return-object v4

    .line 64
    :cond_0
    instance-of v4, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 65
    check-cast v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 68
    .local v3, pkcs8KeySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_start_0
    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v3}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->d2i_PKCS8_PRIV_KEY_INFO([B)I

    move-result v4

    invoke-direct {v2, v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;-><init>(I)V

    .line 70
    .local v2, key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;

    invoke-direct {v4, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    .end local v2           #key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 75
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #pkcs8KeySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    :cond_1
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Must use DSAPublicKeySpec or PKCS8EncodedKeySpec; was "

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
    .line 39
    instance-of v4, p1, Ljava/security/spec/DSAPublicKeySpec;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 40
    check-cast v0, Ljava/security/spec/DSAPublicKeySpec;

    .line 42
    .local v0, dsaKeySpec:Ljava/security/spec/DSAPublicKeySpec;
    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;

    invoke-direct {v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;-><init>(Ljava/security/spec/DSAPublicKeySpec;)V

    .line 49
    .end local v0           #dsaKeySpec:Ljava/security/spec/DSAPublicKeySpec;
    :goto_0
    return-object v4

    .line 43
    :cond_0
    instance-of v4, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 44
    check-cast v3, Ljava/security/spec/X509EncodedKeySpec;

    .line 47
    .local v3, x509KeySpec:Ljava/security/spec/X509EncodedKeySpec;
    :try_start_0
    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v3}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->d2i_PUBKEY([B)I

    move-result v4

    invoke-direct {v2, v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;-><init>(I)V

    .line 49
    .local v2, key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;

    invoke-direct {v4, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v2           #key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    :catch_0
    move-exception v1

    .line 51
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 54
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #x509KeySpec:Ljava/security/spec/X509EncodedKeySpec;
    :cond_1
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Must use DSAPublicKeySpec or X509EncodedKeySpec; was "

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
    .locals 9
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
    .line 82
    .local p2, keySpec:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 83
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    const-string v8, "key == null"

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 86
    :cond_0
    if-nez p2, :cond_1

    .line 87
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    const-string v8, "keySpec == null"

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 90
    :cond_1
    instance-of v7, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v7, :cond_4

    move-object v0, p1

    .line 91
    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    .line 93
    .local v0, dsaKey:Ljava/security/interfaces/DSAPublicKey;
    const-class v7, Ljava/security/spec/DSAPublicKeySpec;

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 94
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v6

    .line 96
    .local v6, y:Ljava/math/BigInteger;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    .line 97
    .local v3, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 98
    .local v2, p:Ljava/math/BigInteger;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    .line 99
    .local v4, q:Ljava/math/BigInteger;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 101
    .local v1, g:Ljava/math/BigInteger;
    new-instance v7, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v7, v6, v2, v4, v1}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 120
    .end local v0           #dsaKey:Ljava/security/interfaces/DSAPublicKey;
    .end local v1           #g:Ljava/math/BigInteger;
    .end local v2           #p:Ljava/math/BigInteger;
    .end local v3           #params:Ljava/security/interfaces/DSAParams;
    .end local v4           #q:Ljava/math/BigInteger;
    .end local v6           #y:Ljava/math/BigInteger;
    :goto_0
    return-object v7

    .line 102
    .restart local v0       #dsaKey:Ljava/security/interfaces/DSAPublicKey;
    :cond_2
    const-class v7, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 103
    new-instance v7, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    goto :goto_0

    .line 105
    :cond_3
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    const-string v8, "Must be DSAPublicKeySpec or PKCS8EncodedKeySpec"

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 107
    .end local v0           #dsaKey:Ljava/security/interfaces/DSAPublicKey;
    :cond_4
    instance-of v7, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v7, :cond_7

    move-object v0, p1

    .line 108
    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    .line 110
    .local v0, dsaKey:Ljava/security/interfaces/DSAPrivateKey;
    const-class v7, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 111
    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v5

    .line 113
    .local v5, x:Ljava/math/BigInteger;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    .line 114
    .restart local v3       #params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 115
    .restart local v2       #p:Ljava/math/BigInteger;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    .line 116
    .restart local v4       #q:Ljava/math/BigInteger;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 118
    .restart local v1       #g:Ljava/math/BigInteger;
    new-instance v7, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v7, v5, v2, v4, v1}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 119
    .end local v1           #g:Ljava/math/BigInteger;
    .end local v2           #p:Ljava/math/BigInteger;
    .end local v3           #params:Ljava/security/interfaces/DSAParams;
    .end local v4           #q:Ljava/math/BigInteger;
    .end local v5           #x:Ljava/math/BigInteger;
    :cond_5
    const-class v7, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 120
    new-instance v7, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto :goto_0

    .line 122
    :cond_6
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    const-string v8, "Must be DSAPrivateKeySpec or X509EncodedKeySpec"

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 125
    .end local v0           #dsaKey:Ljava/security/interfaces/DSAPrivateKey;
    :cond_7
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    const-string v8, "Must be DSAPublicKey or DSAPrivateKey"

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 10
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v8, Ljava/security/InvalidKeyException;

    const-string v9, "key == null"

    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 135
    :cond_0
    instance-of v8, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v8, :cond_1

    move-object v0, p1

    .line 136
    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    .line 138
    .local v0, dsaKey:Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v7

    .line 140
    .local v7, y:Ljava/math/BigInteger;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    .line 141
    .local v4, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v3

    .line 142
    .local v3, p:Ljava/math/BigInteger;
    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 143
    .local v5, q:Ljava/math/BigInteger;
    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v2

    .line 146
    .local v2, g:Ljava/math/BigInteger;
    :try_start_0
    new-instance v8, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v8, v7, v3, v5, v2}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v8}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 161
    .end local v0           #dsaKey:Ljava/security/interfaces/DSAPublicKey;
    .end local v7           #y:Ljava/math/BigInteger;
    :goto_0
    return-object v8

    .line 147
    .restart local v0       #dsaKey:Ljava/security/interfaces/DSAPublicKey;
    .restart local v7       #y:Ljava/math/BigInteger;
    :catch_0
    move-exception v1

    .line 148
    .local v1, e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v8, Ljava/security/InvalidKeyException;

    invoke-direct {v8, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 150
    .end local v0           #dsaKey:Ljava/security/interfaces/DSAPublicKey;
    .end local v1           #e:Ljava/security/spec/InvalidKeySpecException;
    .end local v2           #g:Ljava/math/BigInteger;
    .end local v3           #p:Ljava/math/BigInteger;
    .end local v4           #params:Ljava/security/interfaces/DSAParams;
    .end local v5           #q:Ljava/math/BigInteger;
    .end local v7           #y:Ljava/math/BigInteger;
    :cond_1
    instance-of v8, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v8, :cond_2

    move-object v0, p1

    .line 151
    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    .line 153
    .local v0, dsaKey:Ljava/security/interfaces/DSAPrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v6

    .line 155
    .local v6, x:Ljava/math/BigInteger;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    .line 156
    .restart local v4       #params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v3

    .line 157
    .restart local v3       #p:Ljava/math/BigInteger;
    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 158
    .restart local v5       #q:Ljava/math/BigInteger;
    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v2

    .line 161
    .restart local v2       #g:Ljava/math/BigInteger;
    :try_start_1
    new-instance v8, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v8, v6, v3, v5, v2}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v8}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto :goto_0

    .line 162
    :catch_1
    move-exception v1

    .line 163
    .restart local v1       #e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v8, Ljava/security/InvalidKeyException;

    invoke-direct {v8, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 166
    .end local v0           #dsaKey:Ljava/security/interfaces/DSAPrivateKey;
    .end local v1           #e:Ljava/security/spec/InvalidKeySpecException;
    .end local v2           #g:Ljava/math/BigInteger;
    .end local v3           #p:Ljava/math/BigInteger;
    .end local v4           #params:Ljava/security/interfaces/DSAParams;
    .end local v5           #q:Ljava/math/BigInteger;
    .end local v6           #x:Ljava/math/BigInteger;
    :cond_2
    new-instance v8, Ljava/security/InvalidKeyException;

    const-string v9, "Key is not DSAPublicKey or DSAPrivateKey"

    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
