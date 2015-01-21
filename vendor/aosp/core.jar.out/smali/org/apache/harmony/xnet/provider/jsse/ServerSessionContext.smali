.class public Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;
.super Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
.source "ServerSessionContext.java"


# instance fields
.field private persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    const/16 v0, 0x64

    invoke-direct {p0, v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;-><init>(II)V

    .line 45
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v2, 0x20

    aput-byte v2, v1, v3

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_CTX_set_session_id_context(I[B)V

    .line 46
    return-void
.end method


# virtual methods
.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 4
    .parameter "sessionId"

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 57
    .local v1, session:Ljavax/net/ssl/SSLSession;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 73
    :cond_0
    :goto_0
    return-object v2

    .line 62
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    if-eqz v3, :cond_0

    .line 63
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    invoke-interface {v3, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;->getSessionData([B)[B

    move-result-object v0

    .line 64
    .local v0, data:[B
    if-eqz v0, :cond_0

    .line 65
    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-super {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    move-object v2, v1

    .line 68
    goto :goto_0
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 81
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->toBytes(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v0

    .line 83
    .local v0, data:[B
    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    invoke-interface {v1, p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    .line 87
    .end local v0           #data:[B
    :cond_0
    return-void
.end method

.method protected sessionRemoved(Ljavax/net/ssl/SSLSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 52
    return-void
.end method

.method public setPersistentCache(Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;)V
    .locals 0
    .parameter "persistentCache"

    .prologue
    .line 49
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    .line 50
    return-void
.end method

.method public bridge synthetic setSessionTimeout(I)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->setSessionTimeout(I)V

    return-void
.end method
