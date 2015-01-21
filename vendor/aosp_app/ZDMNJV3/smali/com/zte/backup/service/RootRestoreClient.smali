.class public Lcom/zte/backup/service/RootRestoreClient;
.super Ljava/lang/Object;
.source "RootRestoreClient.java"


# static fields
.field public static final SERVER_SOCKET:Ljava/lang/String; = "/data/system/6939"


# instance fields
.field private iCopyResult:I

.field private in:Ljava/io/BufferedReader;

.field private out:Ljava/io/PrintWriter;

.field private socket:Landroid/net/LocalSocket;

.field private socketOld:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/zte/backup/service/RootRestoreClient;->socketOld:Ljava/net/Socket;

    .line 23
    iput-object v0, p0, Lcom/zte/backup/service/RootRestoreClient;->socket:Landroid/net/LocalSocket;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/backup/service/RootRestoreClient;->iCopyResult:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/zte/backup/service/RootRestoreClient;->socketOld:Ljava/net/Socket;

    .line 23
    iput-object v1, p0, Lcom/zte/backup/service/RootRestoreClient;->socket:Landroid/net/LocalSocket;

    .line 26
    const/4 v1, -0x1

    iput v1, p0, Lcom/zte/backup/service/RootRestoreClient;->iCopyResult:I

    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/zte/backup/service/RootRestoreClient;->connectSocket()V

    .line 45
    iget-object v1, p0, Lcom/zte/backup/service/RootRestoreClient;->socket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_2

    .line 46
    new-instance v1, Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/zte/backup/service/RootRestoreClient;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v1, p0, Lcom/zte/backup/service/RootRestoreClient;->out:Ljava/io/PrintWriter;

    .line 50
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/backup/service/RootRestoreClient;->out:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/zte/backup/service/RootRestoreClient;->out:Ljava/io/PrintWriter;

    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/zte/backup/service/RootRestoreClient;->getRestoreResult()I

    move-result v1

    iput v1, p0, Lcom/zte/backup/service/RootRestoreClient;->iCopyResult:I

    .line 54
    iget-object v1, p0, Lcom/zte/backup/service/RootRestoreClient;->out:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/zte/backup/service/RootRestoreClient;->closeSocket()V

    .line 66
    :goto_1
    return-void

    .line 47
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/zte/backup/service/RootRestoreClient;->socketOld:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 48
    new-instance v1, Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/zte/backup/service/RootRestoreClient;->socketOld:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v1, p0, Lcom/zte/backup/service/RootRestoreClient;->out:Ljava/io/PrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/net/UnknownHostException;
    :try_start_2
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    invoke-direct {p0}, Lcom/zte/backup/service/RootRestoreClient;->closeSocket()V

    goto :goto_1

    .line 60
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 61
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    invoke-direct {p0}, Lcom/zte/backup/service/RootRestoreClient;->closeSocket()V

    goto :goto_1

    .line 63
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 64
    invoke-direct {p0}, Lcom/zte/backup/service/RootRestoreClient;->closeSocket()V

    .line 65
    throw v1
.end method

.method private closeSocket()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v1, p0, Lcom/zte/backup/service/RootRestoreClient;->socket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/zte/backup/service/RootRestoreClient;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    iput-object v2, p0, Lcom/zte/backup/service/RootRestoreClient;->socket:Landroid/net/LocalSocket;

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/zte/backup/service/RootRestoreClient;->socketOld:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 102
    :try_start_1
    iget-object v1, p0, Lcom/zte/backup/service/RootRestoreClient;->socketOld:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    :goto_1
    iput-object v2, p0, Lcom/zte/backup/service/RootRestoreClient;->socketOld:Ljava/net/Socket;

    .line 109
    :cond_1
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 105
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private connectSocket()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 70
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    iput-object v1, p0, Lcom/zte/backup/service/RootRestoreClient;->socket:Landroid/net/LocalSocket;

    .line 71
    iget-object v1, p0, Lcom/zte/backup/service/RootRestoreClient;->socket:Landroid/net/LocalSocket;

    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v3, "/data/system/6939"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    iput-object v5, p0, Lcom/zte/backup/service/RootRestoreClient;->socket:Landroid/net/LocalSocket;

    .line 80
    :try_start_1
    new-instance v1, Ljava/net/Socket;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b1b

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/zte/backup/service/RootRestoreClient;->socketOld:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    iput-object v5, p0, Lcom/zte/backup/service/RootRestoreClient;->socketOld:Ljava/net/Socket;

    goto :goto_0
.end method


# virtual methods
.method public getOperateResult()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/zte/backup/service/RootRestoreClient;->iCopyResult:I

    return v0
.end method

.method public getRestoreResult()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, result:I
    iget-object v2, p0, Lcom/zte/backup/service/RootRestoreClient;->socket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_2

    .line 120
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/zte/backup/service/RootRestoreClient;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/zte/backup/service/RootRestoreClient;->in:Ljava/io/BufferedReader;

    .line 124
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/zte/backup/service/RootRestoreClient;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/zte/backup/service/RootRestoreClient;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 130
    return v1

    .line 121
    .end local v0           #line:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/zte/backup/service/RootRestoreClient;->socketOld:Ljava/net/Socket;

    if-eqz v2, :cond_0

    .line 122
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/zte/backup/service/RootRestoreClient;->socketOld:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/zte/backup/service/RootRestoreClient;->in:Ljava/io/BufferedReader;

    goto :goto_0
.end method

.method public isSocketOpen()Z
    .locals 3

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 150
    .local v0, bRet:Z
    :try_start_0
    invoke-direct {p0}, Lcom/zte/backup/service/RootRestoreClient;->connectSocket()V

    .line 151
    iget-object v2, p0, Lcom/zte/backup/service/RootRestoreClient;->socket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/backup/service/RootRestoreClient;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/zte/backup/service/RootRestoreClient;->socketOld:Ljava/net/Socket;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zte/backup/service/RootRestoreClient;->socketOld:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    :cond_1
    const/4 v0, 0x1

    .line 163
    :cond_2
    invoke-direct {p0}, Lcom/zte/backup/service/RootRestoreClient;->closeSocket()V

    .line 166
    :goto_0
    return v0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, e:Ljava/io/IOException;
    const/4 v0, 0x0

    .line 160
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    invoke-direct {p0}, Lcom/zte/backup/service/RootRestoreClient;->closeSocket()V

    goto :goto_0

    .line 162
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 163
    invoke-direct {p0}, Lcom/zte/backup/service/RootRestoreClient;->closeSocket()V

    .line 164
    throw v2
.end method
