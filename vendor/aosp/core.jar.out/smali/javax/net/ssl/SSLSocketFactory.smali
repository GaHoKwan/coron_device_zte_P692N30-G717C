.class public abstract Ljavax/net/ssl/SSLSocketFactory;
.super Ljavax/net/SocketFactory;
.source "SSLSocketFactory.java"


# static fields
.field private static defaultName:Ljava/lang/String;

.field private static defaultSocketFactory:Ljavax/net/SocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 85
    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/SocketFactory;
    .locals 7

    .prologue
    .line 44
    const-class v5, Ljavax/net/ssl/SSLSocketFactory;

    monitor-enter v5

    :try_start_0
    sget-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    if-eqz v4, :cond_0

    .line 45
    sget-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .local v0, cl:Ljava/lang/ClassLoader;
    :goto_0
    monitor-exit v5

    return-object v4

    .line 47
    .end local v0           #cl:Ljava/lang/ClassLoader;
    :cond_0
    :try_start_1
    sget-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultName:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 48
    const-string v4, "ssl.SocketFactory.provider"

    invoke-static {v4}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultName:Ljava/lang/String;

    .line 49
    sget-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 51
    .restart local v0       #cl:Ljava/lang/ClassLoader;
    if-nez v0, :cond_1

    .line 52
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 55
    :cond_1
    :try_start_2
    sget-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v4, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 56
    .local v3, sfc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/net/SocketFactory;

    sput-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    .end local v3           #sfc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    :try_start_3
    sget-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_3

    .line 66
    :try_start_4
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    .line 70
    .local v1, context:Ljavax/net/ssl/SSLContext;
    :goto_2
    if-eqz v1, :cond_3

    .line 71
    :try_start_5
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    sput-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    .line 74
    .end local v1           #context:Ljavax/net/ssl/SSLContext;
    :cond_3
    sget-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    if-nez v4, :cond_4

    .line 76
    new-instance v4, Ljavax/net/ssl/DefaultSSLSocketFactory;

    const-string v6, "No SSLSocketFactory installed"

    invoke-direct {v4, v6}, Ljavax/net/ssl/DefaultSSLSocketFactory;-><init>(Ljava/lang/String;)V

    sput-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    .line 78
    :cond_4
    sget-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    goto :goto_0

    .line 57
    :catch_0
    move-exception v2

    .line 58
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem creating "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Ljavax/net/ssl/SSLSocketFactory;->defaultName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 44
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 67
    :catch_1
    move-exception v2

    .line 68
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    .restart local v1       #context:Ljavax/net/ssl/SSLContext;
    goto :goto_2
.end method


# virtual methods
.method public abstract createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method
