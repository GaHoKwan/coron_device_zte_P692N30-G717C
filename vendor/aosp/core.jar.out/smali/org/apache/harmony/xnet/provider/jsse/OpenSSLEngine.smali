.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;
.super Ljava/lang/Object;
.source "OpenSSLEngine.java"


# static fields
.field private static final mLoadingLock:Ljava/lang/Object;


# instance fields
.field private final ctx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->ENGINE_load_dynamic()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->mLoadingLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .parameter "engineCtx"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->ctx:I

    .line 53
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->ENGINE_init(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->ENGINE_free(I)I

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not initialize engine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;
    .locals 5
    .parameter "engine"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "engine == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_0
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->mLoadingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 39
    :try_start_0
    invoke-static {p0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->ENGINE_by_id(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, engineCtx:I
    if-nez v0, :cond_1

    .line 41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown ENGINE id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    .end local v0           #engineCtx:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    .restart local v0       #engineCtx:I
    :cond_1
    :try_start_1
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->ENGINE_add(I)I

    .line 45
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;

    invoke-direct {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;-><init>(I)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    if-ne p1, p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    instance-of v3, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;

    if-nez v3, :cond_2

    move v1, v2

    .line 101
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 104
    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;

    .line 106
    .local v0, other:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->getEngineContext()I

    move-result v3

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->ctx:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->ENGINE_finish(I)I

    .line 88
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->ENGINE_free(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getEngineContext()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->ctx:I

    return v0
.end method

.method public getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "id == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_0
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->ctx:I

    invoke-static {v2, p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->ENGINE_load_private_key(ILjava/lang/String;)I

    move-result v0

    .line 65
    .local v0, keyRef:I
    if-nez v0, :cond_1

    .line 66
    const/4 v2, 0x0

    .line 74
    :goto_0
    return-object v2

    .line 69
    :cond_1
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_type(I)I

    move-result v1

    .line 70
    .local v1, keyType:I
    sparse-switch v1, :sswitch_data_0

    .line 76
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown key type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :sswitch_0
    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-direct {v2, v0, p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;-><init>(ILorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getInstance(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    move-result-object v2

    goto :goto_0

    .line 74
    :sswitch_1
    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;

    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    invoke-direct {v3, v0, p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;-><init>(ILorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;)V

    goto :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x74 -> :sswitch_1
    .end sparse-switch
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->ctx:I

    return v0
.end method
