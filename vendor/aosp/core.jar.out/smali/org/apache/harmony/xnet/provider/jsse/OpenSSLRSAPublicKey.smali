.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;
.super Ljava/lang/Object;
.source "OpenSSLRSAPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1b56d8a5b2600a4L


# instance fields
.field private fetchedParams:Z

.field private final key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

.field private modulus:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljava/security/spec/RSAPublicKeySpec;)V
    .locals 10
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    :try_start_0
    new-instance v9, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)I

    move-result v0

    invoke-direct {v9, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;-><init>(I)V

    iput-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-void

    .line 55
    :catch_0
    move-exception v8

    .line 56
    .local v8, e:Ljava/lang/Exception;
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    .line 38
    return-void
.end method

.method private ensureReadParams()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 92
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->fetchedParams:Z

    if-eqz v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v1

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->get_RSA_public_params(I)[[B

    move-result-object v0

    .line 97
    .local v0, params:[[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    .line 98
    new-instance v1, Ljava/math/BigInteger;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    .line 100
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->fetchedParams:Z

    goto :goto_0
.end method

.method static getInstance(Ljava/security/interfaces/RSAPublicKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    .locals 10
    .parameter "rsaPublicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    new-instance v9, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)I

    move-result v0

    invoke-direct {v9, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 71
    :catch_0
    move-exception v8

    .line 72
    .local v8, e:Ljava/lang/Exception;
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    if-ne p1, p0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v1

    .line 121
    :cond_1
    instance-of v3, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 122
    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;

    .line 128
    .local v0, other:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    .end local v0           #other:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;
    :cond_2
    instance-of v3, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v3, :cond_3

    move v1, v2

    .line 134
    goto :goto_0

    .line 137
    :cond_3
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->ensureReadParams()V

    move-object v0, p1

    .line 139
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 140
    .local v0, other:Ljava/security/interfaces/RSAPublicKey;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "RSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v0

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->i2d_PUBKEY(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "X.509"

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 106
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 112
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 148
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 153
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLRSAPublicKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "modulus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, "publicExponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
