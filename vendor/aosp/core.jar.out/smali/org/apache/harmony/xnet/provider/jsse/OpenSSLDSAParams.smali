.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;
.super Ljava/lang/Object;
.source "OpenSSLDSAParams.java"

# interfaces
.implements Ljava/security/interfaces/DSAParams;
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private fetchedParams:Z

.field private g:Ljava/math/BigInteger;

.field private key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;

.field private y:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    .line 41
    return-void
.end method

.method private final declared-synchronized ensureReadParams()V
    .locals 3

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->fetchedParams:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 64
    :goto_0
    monitor-exit p0

    return-void

    .line 52
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v1

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->get_DSA_params(I)[[B

    move-result-object v0

    .line 53
    .local v0, params:[[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->g:Ljava/math/BigInteger;

    .line 54
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->p:Ljava/math/BigInteger;

    .line 55
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->q:Ljava/math/BigInteger;

    .line 56
    const/4 v1, 0x3

    aget-object v1, v0, v1

    if-eqz v1, :cond_1

    .line 57
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->y:Ljava/math/BigInteger;

    .line 59
    :cond_1
    const/4 v1, 0x4

    aget-object v1, v0, v1

    if-eqz v1, :cond_2

    .line 60
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->x:Ljava/math/BigInteger;

    .line 63
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->fetchedParams:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    .end local v0           #params:[[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 96
    if-ne p1, p0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    instance-of v3, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 101
    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;

    .line 107
    .local v0, other:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 112
    .end local v0           #other:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;
    :cond_2
    instance-of v3, p1, Ljava/security/interfaces/DSAParams;

    if-nez v3, :cond_3

    move v1, v2

    .line 113
    goto :goto_0

    .line 116
    :cond_3
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->ensureReadParams()V

    move-object v0, p1

    .line 118
    check-cast v0, Ljava/security/interfaces/DSAParams;

    .line 119
    .local v0, other:Ljava/security/interfaces/DSAParams;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->g:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->p:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->q:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->ensureReadParams()V

    .line 69
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->ensureReadParams()V

    .line 75
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->ensureReadParams()V

    .line 81
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method getX()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->ensureReadParams()V

    .line 91
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->ensureReadParams()V

    .line 86
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->y:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->ensureReadParams()V

    .line 126
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->g:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->p:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->q:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 131
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->ensureReadParams()V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLDSAParams{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "G="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->g:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ",P="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ",Q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAParams;->q:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
