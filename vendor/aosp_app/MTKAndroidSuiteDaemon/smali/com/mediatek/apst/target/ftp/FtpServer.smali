.class public Lcom/mediatek/apst/target/ftp/FtpServer;
.super Ljava/lang/Thread;
.source "FtpServer.java"


# static fields
.field private static final FTP_PORT:I = 0x8ae

.field private static final TAG:[Ljava/lang/Object;


# instance fields
.field private mFtpConnThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/target/ftp/FtpConnection;",
            ">;"
        }
    .end annotation
.end field

.field mFtpsocket:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "APST/FTP"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/apst/target/ftp/FtpServer;->TAG:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/apst/target/ftp/FtpServer;->mFtpsocket:Ljava/net/ServerSocket;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/target/ftp/FtpServer;->mFtpConnThreads:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    .line 112
    iget-object v1, p0, Lcom/mediatek/apst/target/ftp/FtpServer;->mFtpsocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/apst/target/ftp/FtpServer;->mFtpsocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/apst/target/ftp/FtpServer;->mFtpsocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/mediatek/apst/target/ftp/FtpServer;->TAG:[Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException: ftpsocket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerSessionThread(Lcom/mediatek/apst/target/ftp/FtpConnection;)V
    .locals 7
    .parameter "ftpConnect"

    .prologue
    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v4, toBeRemoved:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/target/ftp/FtpConnection;>;"
    iget-object v5, p0, Lcom/mediatek/apst/target/ftp/FtpServer;->mFtpConnThreads:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/target/ftp/FtpConnection;

    .line 90
    .local v1, ftpConn:Lcom/mediatek/apst/target/ftp/FtpConnection;
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-nez v5, :cond_0

    .line 91
    sget-object v5, Lcom/mediatek/apst/target/ftp/FtpServer;->TAG:[Ljava/lang/Object;

    const-string v6, "Cleaning up finished session..."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 94
    sget-object v5, Lcom/mediatek/apst/target/ftp/FtpServer;->TAG:[Ljava/lang/Object;

    const-string v6, "Thread joined"

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->closeSocket()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v5, Lcom/mediatek/apst/target/ftp/FtpServer;->TAG:[Ljava/lang/Object;

    const-string v6, "Interrupted while joining"

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #ftpConn:Lcom/mediatek/apst/target/ftp/FtpConnection;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #toBeRemoved:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/target/ftp/FtpConnection;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 102
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #toBeRemoved:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/target/ftp/FtpConnection;>;"
    :cond_1
    :try_start_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/apst/target/ftp/FtpConnection;

    .line 103
    .local v3, removeThread:Lcom/mediatek/apst/target/ftp/FtpConnection;
    iget-object v5, p0, Lcom/mediatek/apst/target/ftp/FtpServer;->mFtpConnThreads:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    .end local v3           #removeThread:Lcom/mediatek/apst/target/ftp/FtpConnection;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/apst/target/ftp/FtpServer;->mFtpConnThreads:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    sget-object v5, Lcom/mediatek/apst/target/ftp/FtpServer;->TAG:[Ljava/lang/Object;

    const-string v6, "Registered session thread"

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, client:Ljava/net/Socket;
    :try_start_0
    new-instance v4, Ljava/net/ServerSocket;

    const/16 v5, 0x8ae

    invoke-direct {v4, v5}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/apst/target/ftp/FtpServer;->mFtpsocket:Ljava/net/ServerSocket;

    .line 62
    sget-object v4, Lcom/mediatek/apst/target/ftp/FtpServer;->TAG:[Ljava/lang/Object;

    const-string v5, "listening port: 2222"

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    :goto_0
    iget-object v4, p0, Lcom/mediatek/apst/target/ftp/FtpServer;->mFtpsocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 65
    new-instance v2, Lcom/mediatek/apst/target/ftp/FtpConnection;

    invoke-direct {v2, v0}, Lcom/mediatek/apst/target/ftp/FtpConnection;-><init>(Ljava/net/Socket;)V

    .line 66
    .local v2, newFTPConn:Lcom/mediatek/apst/target/ftp/FtpConnection;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 67
    invoke-virtual {p0, v2}, Lcom/mediatek/apst/target/ftp/FtpServer;->registerSessionThread(Lcom/mediatek/apst/target/ftp/FtpConnection;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 69
    .end local v2           #newFTPConn:Lcom/mediatek/apst/target/ftp/FtpConnection;
    :catch_0
    move-exception v3

    .line 70
    .local v3, se:Ljava/net/SocketException;
    sget-object v4, Lcom/mediatek/apst/target/ftp/FtpServer;->TAG:[Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SocketException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .end local v3           #se:Ljava/net/SocketException;
    :goto_1
    if-eqz v0, :cond_0

    .line 76
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 81
    :cond_0
    :goto_2
    return-void

    .line 71
    :catch_1
    move-exception v1

    .line 72
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/mediatek/apst/target/ftp/FtpServer;->TAG:[Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: ftpsocket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 77
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 78
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v4, Lcom/mediatek/apst/target/ftp/FtpServer;->TAG:[Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method
