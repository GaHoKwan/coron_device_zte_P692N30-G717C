.class public Lcom/mediatek/mtklogger/framework/LogConnection;
.super Ljava/lang/Object;
.source "LogConnection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MTKLogger/LogConnection"


# instance fields
.field private final BUFFER_SIZE:I

.field address:Landroid/net/LocalSocketAddress;

.field mHandler:Landroid/os/Handler;

.field private mInputStream:Ljava/io/InputStream;

.field private mInstanceIndex:I

.field private mMsg:Landroid/os/Message;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mShouldStop:Z

.field private mlistenThread:Ljava/lang/Thread;

.field socket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/net/LocalSocketAddress$Namespace;Landroid/os/Handler;)V
    .locals 0
    .parameter "instanceIndex"
    .parameter "sockname"
    .parameter "nameSpace"
    .parameter "handler"

    .prologue
    .line 65
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/mtklogger/framework/LogConnection;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;Landroid/os/Handler;)V

    .line 66
    iput p1, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mInstanceIndex:I

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;Landroid/os/Handler;)V
    .locals 1
    .parameter "sockname"
    .parameter "nameSpace"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mlistenThread:Ljava/lang/Thread;

    .line 23
    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mHandler:Landroid/os/Handler;

    .line 36
    const/16 v0, 0x64

    iput v0, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->BUFFER_SIZE:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mShouldStop:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mInstanceIndex:I

    .line 59
    iput-object p3, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->socket:Landroid/net/LocalSocket;

    .line 61
    new-instance v0, Landroid/net/LocalSocketAddress;

    invoke-direct {v0, p1, p2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->address:Landroid/net/LocalSocketAddress;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .parameter "sockname"
    .parameter "handler"

    .prologue
    .line 55
    sget-object v0, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/mtklogger/framework/LogConnection;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;Landroid/os/Handler;)V

    .line 56
    return-void
.end method


# virtual methods
.method public connect()Z
    .locals 4

    .prologue
    .line 70
    const-string v1, "MTKLogger/LogConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->connect(), socketName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->address:Landroid/net/LocalSocketAddress;

    invoke-virtual {v3}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->socket:Landroid/net/LocalSocket;

    iget-object v2, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->address:Landroid/net/LocalSocketAddress;

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 73
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mOutputStream:Ljava/io/OutputStream;

    .line 74
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    new-instance v1, Lcom/mediatek/mtklogger/framework/LogConnection$1;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/framework/LogConnection$1;-><init>(Lcom/mediatek/mtklogger/framework/LogConnection;)V

    iput-object v1, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mlistenThread:Ljava/lang/Thread;

    .line 85
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mlistenThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 87
    const-string v1, "MTKLogger/LogConnection"

    const-string v2, "Connect to native socket OK. And start local monitor thread now"

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "MTKLogger/LogConnection"

    const-string v2, "Communications error, Exception happens when connect to socket server"

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dealWithResponse([BLandroid/os/Handler;)V
    .locals 0
    .parameter "resp"
    .parameter "handler"

    .prologue
    .line 173
    return-void
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->socket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 94
    .local v0, isConnectedNow:Z
    :goto_0
    return v0

    .line 92
    .end local v0           #isConnectedNow:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listen()V
    .locals 7

    .prologue
    const/16 v4, 0x64

    .line 123
    new-array v0, v4, [B

    .line 125
    .local v0, buffer:[B
    const-string v4, "MTKLogger/LogConnection"

    const-string v5, "Monitor thread running"

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    iget-boolean v4, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mShouldStop:Z

    if-nez v4, :cond_0

    .line 128
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mInputStream:Ljava/io/InputStream;

    const/4 v5, 0x0

    const/16 v6, 0x64

    invoke-virtual {v4, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 129
    .local v1, count:I
    if-gez v1, :cond_3

    .line 130
    const-string v4, "MTKLogger/LogConnection"

    const-string v5, "Get a empty response from native layer, stop listen."

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1           #count:I
    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mShouldStop:Z

    if-nez v4, :cond_2

    .line 144
    const-string v4, "MTKLogger/LogConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "listen break at address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->address:Landroid/net/LocalSocketAddress;

    invoke-virtual {v6}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mMsg:Landroid/os/Message;

    .line 146
    iget v4, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mInstanceIndex:I

    if-lez v4, :cond_1

    .line 147
    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mMsg:Landroid/os/Message;

    iget v5, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mInstanceIndex:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 149
    :cond_1
    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mMsg:Landroid/os/Message;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    :cond_2
    return-void

    .line 133
    .restart local v1       #count:I
    :cond_3
    :try_start_1
    const-string v4, "MTKLogger/LogConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response from native byte size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-array v3, v1, [B

    .line 135
    .local v3, resp:[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/mtklogger/framework/LogConnection;->dealWithResponse([BLandroid/os/Handler;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 137
    .end local v1           #count:I
    .end local v3           #resp:[B
    :catch_0
    move-exception v2

    .line 138
    .local v2, ex:Ljava/io/IOException;
    const-string v4, "MTKLogger/LogConnection"

    const-string v5, "read failed"

    invoke-static {v4, v5, v2}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public sendCmd(Ljava/lang/String;)Z
    .locals 6
    .parameter "cmd"

    .prologue
    .line 98
    const-string v3, "MTKLogger/LogConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send cmd: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] to ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->address:Landroid/net/LocalSocketAddress;

    invoke-virtual {v5}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, success:Z
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mOutputStream:Ljava/io/OutputStream;

    if-nez v3, :cond_0

    .line 102
    const-string v3, "MTKLogger/LogConnection"

    const-string v4, "No connection to daemon, outputstream is null."

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/framework/LogConnection;->stop()V

    .line 117
    :goto_0
    monitor-exit p0

    .line 118
    return v2

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    const-string v3, "MTKLogger/LogConnection"

    const-string v4, "Command builder success"

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 110
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    const/4 v2, 0x1

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, ex:Ljava/io/IOException;
    :try_start_2
    const-string v3, "MTKLogger/LogConnection"

    const-string v4, "IOException while sending command to native."

    invoke-static {v3, v4, v1}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mOutputStream:Ljava/io/OutputStream;

    goto :goto_0

    .line 117
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 155
    const-string v1, "MTKLogger/LogConnection"

    const-string v2, "-->stop()"

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mShouldStop:Z

    .line 158
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->socket:Landroid/net/LocalSocket;

    if-nez v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 163
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 164
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_1
    iput-object v4, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->mlistenThread:Ljava/lang/Thread;

    .line 169
    iput-object v4, p0, Lcom/mediatek/mtklogger/framework/LogConnection;->socket:Landroid/net/LocalSocket;

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MTKLogger/LogConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception happended while closing socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
