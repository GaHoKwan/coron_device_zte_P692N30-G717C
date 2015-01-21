.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;
.super Ljava/lang/Object;
.source "OpenSSLDSAPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/DSAPrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x5a8c83870b5c3f74L


# instance fields
.field private final key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

.field private params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;


# direct methods
.method constructor <init>(Ljava/security/spec/DSAPrivateKeySpec;)V
    .locals 7
    .parameter "dsaKeySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    :try_start_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;-><init>(I)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    .line 35
    return-void
.end method

.method private ensureReadParams()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    .line 58
    :cond_0
    return-void
.end method

.method static getInstance(Ljava/security/interfaces/DSAPrivateKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    .locals 8
    .parameter "dsaPrivateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    .line 63
    .local v0, dsaParams:Ljava/security/interfaces/DSAParams;
    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)I

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 69
    .end local v0           #dsaParams:Ljava/security/interfaces/DSAParams;
    :catch_0
    move-exception v1

    .line 70
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 129
    if-ne p1, p0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v2

    .line 133
    :cond_1
    instance-of v4, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 134
    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;

    .line 140
    .local v0, other:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 145
    .end local v0           #other:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;
    :cond_2
    instance-of v4, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-nez v4, :cond_3

    move v2, v3

    .line 146
    goto :goto_0

    .line 149
    :cond_3
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->ensureReadParams()V

    .line 151
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->getX()Ljava/math/BigInteger;

    move-result-object v1

    .line 152
    .local v1, x:Ljava/math/BigInteger;
    if-nez v1, :cond_4

    move v2, v3

    .line 159
    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 162
    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    .line 163
    .local v0, other:Ljava/security/interfaces/DSAPrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "DSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v0

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->i2d_PKCS8_PRIV_KEY_INFO(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PKCS#8"

    goto :goto_0
.end method

.method getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    return-object v0
.end method

.method public getParams()Ljava/security/interfaces/DSAParams;
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->ensureReadParams()V

    .line 77
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    return-object v0
.end method

.method public getPkeyAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPkeyContext()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v0

    return v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->ensureReadParams()V

    .line 116
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->getX()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 168
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->ensureReadParams()V

    .line 170
    const/4 v0, 0x1

    .line 172
    .local v0, hash:I
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    .line 173
    .local v1, x:Ljava/math/BigInteger;
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    add-int/lit8 v0, v2, 0x3

    .line 177
    :cond_0
    mul-int/lit8 v2, v0, 0x7

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 179
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x7d

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLDSAPrivateKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->isEngineBased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    :goto_0
    return-object v1

    .line 193
    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->ensureReadParams()V

    .line 194
    const-string v1, "X="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->getX()Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
