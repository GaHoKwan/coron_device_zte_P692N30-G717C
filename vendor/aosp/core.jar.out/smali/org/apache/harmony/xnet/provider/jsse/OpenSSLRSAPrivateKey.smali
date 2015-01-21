.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
.super Ljava/lang/Object;
.source "OpenSSLRSAPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x439d6d0855187c6fL


# instance fields
.field private fetchedParams:Z

.field private final key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

.field private modulus:Ljava/math/BigInteger;

.field private privateExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/security/spec/RSAPrivateKeySpec;)V
    .locals 1
    .parameter "rsaKeySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->init(Ljava/security/spec/RSAPrivateKeySpec;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)V

    .line 52
    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    .line 38
    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;[[B)V
    .locals 1
    .parameter "key"
    .parameter "params"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)V

    .line 42
    invoke-virtual {p0, p2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->readParams([[B)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->fetchedParams:Z

    .line 44
    return-void
.end method

.method static getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    .locals 12
    .parameter "rsaPrivateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v9

    .line 89
    .local v9, modulus:Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v10

    .line 91
    .local v10, privateExponent:Ljava/math/BigInteger;
    if-nez v9, :cond_0

    .line 92
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "modulus == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    if-nez v10, :cond_1

    .line 94
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "privateExponent == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    :try_start_0
    new-instance v11, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v9}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)I

    move-result v0

    invoke-direct {v11, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    .line 107
    :catch_0
    move-exception v8

    .line 108
    .local v8, e:Ljava/lang/Exception;
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static getInstance(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
    .locals 2
    .parameter "key"

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v1

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->get_RSA_private_params(I)[[B

    move-result-object v0

    .line 81
    .local v0, params:[[B
    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    .line 82
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;

    invoke-direct {v1, p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateCrtKey;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;[[B)V

    .line 84
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    invoke-direct {v1, p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;[[B)V

    goto :goto_0
.end method

.method private static init(Ljava/security/spec/RSAPrivateKeySpec;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    .locals 12
    .parameter "rsaKeySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/security/spec/RSAPrivateKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v9

    .line 56
    .local v9, modulus:Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/security/spec/RSAPrivateKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v10

    .line 58
    .local v10, privateExponent:Ljava/math/BigInteger;
    if-nez v9, :cond_0

    .line 59
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "modulus == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    if-nez v10, :cond_1

    .line 61
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "privateExponent == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    :try_start_0
    new-instance v11, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v9}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)I

    move-result v0

    invoke-direct {v11, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    .line 74
    :catch_0
    move-exception v8

    .line 75
    .local v8, e:Ljava/lang/Exception;
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method final declared-synchronized ensureReadParams()V
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->fetchedParams:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 118
    :goto_0
    monitor-exit p0

    return-void

    .line 116
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v0

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->get_RSA_private_params(I)[[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->readParams([[B)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->fetchedParams:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 189
    if-ne p1, p0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    instance-of v3, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 194
    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    .line 200
    .local v0, other:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getPkeyContext()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getPkeyContext()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_cmp(II)I

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 207
    .end local v0           #other:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
    :cond_2
    instance-of v3, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v3, :cond_4

    .line 208
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->ensureReadParams()V

    move-object v0, p1

    .line 209
    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 211
    .local v0, other:Ljava/security/interfaces/RSAPrivateKey;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0           #other:Ljava/security/interfaces/RSAPrivateKey;
    :cond_4
    move v1, v2

    .line 215
    goto :goto_0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const-string v0, "RSA"

    return-object v0
.end method

.method public final getEncoded()[B
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v0

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->i2d_PKCS8_PRIV_KEY_INFO(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PKCS#8"

    goto :goto_0
.end method

.method public final getModulus()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->ensureReadParams()V

    .line 144
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method final getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    return-object v0
.end method

.method public getPkeyAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPkeyContext()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v0

    return v0
.end method

.method public final getPrivateExponent()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->ensureReadParams()V

    .line 138
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->ensureReadParams()V

    .line 221
    const/4 v0, 0x1

    .line 223
    .local v0, hash:I
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x3

    .line 224
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 225
    mul-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 228
    :cond_0
    return v0
.end method

.method readParams([[B)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 121
    aget-object v0, p1, v1

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "modulus == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    aget-object v0, p1, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "privateExponent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 130
    aget-object v0, p1, v2

    if-eqz v0, :cond_2

    .line 131
    new-instance v0, Ljava/math/BigInteger;

    aget-object v1, p1, v2

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 133
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2c

    const/16 v3, 0x10

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLRSAPrivateKey{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->isEngineBased()Z

    move-result v0

    .line 236
    .local v0, engineBased:Z
    if-eqz v0, :cond_0

    .line 237
    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->ensureReadParams()V

    .line 243
    const-string v2, "modulus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    if-nez v0, :cond_1

    .line 248
    const-string v2, "privateExponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
