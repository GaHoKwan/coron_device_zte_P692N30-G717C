.class Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
.super Ljava/lang/Object;
.source "OpenSSLKey.java"


# instance fields
.field private final alias:Ljava/lang/String;

.field private final ctx:I

.field private final engine:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->ctx:I

    .line 28
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->engine:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;

    .line 29
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->alias:Ljava/lang/String;

    .line 30
    return-void
.end method

.method constructor <init>(ILorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;Ljava/lang/String;)V
    .locals 0
    .parameter "ctx"
    .parameter "engine"
    .parameter "alias"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->ctx:I

    .line 34
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->engine:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;

    .line 35
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->alias:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    if-ne p1, p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    instance-of v3, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    if-nez v3, :cond_2

    move v1, v2

    .line 72
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 75
    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    .line 76
    .local v0, other:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->ctx:I

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 77
    goto :goto_0

    .line 80
    :cond_3
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->engine:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;

    if-nez v3, :cond_4

    .line 81
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getEngine()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 83
    :cond_4
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->engine:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getEngine()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->equals(Ljava/lang/Object;)Z

    move-result v1

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
    .line 57
    :try_start_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->ctx:I

    if-eqz v0, :cond_0

    .line 58
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_free(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->alias:Ljava/lang/String;

    return-object v0
.end method

.method getEngine()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->engine:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;

    return-object v0
.end method

.method getPkeyContext()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->ctx:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x1

    .line 90
    .local v0, hash:I
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->ctx:I

    add-int/lit8 v0, v1, 0x11

    .line 91
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->engine:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 92
    return v0

    .line 91
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->engine:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->getEngineContext()I

    move-result v1

    goto :goto_0
.end method

.method isEngineBased()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->engine:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
