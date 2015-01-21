.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;
.super Ljava/lang/Object;
.source "OpenSSLDSAPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/DSAPublicKey;


# static fields
.field private static final serialVersionUID:J = 0x48b34795d19308e8L


# instance fields
.field private final key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

.field private params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;


# direct methods
.method constructor <init>(Ljava/security/spec/DSAPublicKeySpec;)V
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

    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;-><init>(I)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
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
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    .line 35
    return-void
.end method

.method private ensureReadParams()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    .line 58
    :cond_0
    return-void
.end method

.method static getInstance(Ljava/security/interfaces/DSAPublicKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    .locals 8
    .parameter "dsaPublicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

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

    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

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
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    if-ne p1, p0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    instance-of v3, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 108
    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;

    .line 114
    .local v0, other:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    .end local v0           #other:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;
    :cond_2
    instance-of v3, p1, Ljava/security/interfaces/DSAPublicKey;

    if-nez v3, :cond_3

    move v1, v2

    .line 120
    goto :goto_0

    .line 123
    :cond_3
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->ensureReadParams()V

    move-object v0, p1

    .line 125
    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    .line 126
    .local v0, other:Ljava/security/interfaces/DSAPublicKey;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

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
    .line 92
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v0

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->i2d_PUBKEY(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "X.509"

    return-object v0
.end method

.method getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    return-object v0
.end method

.method public getParams()Ljava/security/interfaces/DSAParams;
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->ensureReadParams()V

    .line 77
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->ensureReadParams()V

    .line 98
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->getY()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->ensureReadParams()V

    .line 133
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->ensureReadParams()V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLDSAPublicKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->getY()Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, "params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPublicKey;->params:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
