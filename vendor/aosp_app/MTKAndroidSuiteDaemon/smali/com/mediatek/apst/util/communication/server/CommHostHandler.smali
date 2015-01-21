.class public Lcom/mediatek/apst/util/communication/server/CommHostHandler;
.super Lcom/mediatek/apst/util/communication/common/CommHandler;
.source "CommHostHandler.java"


# instance fields
.field private serverSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/apst/util/communication/common/CommHandler;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/apst/util/communication/server/CommHostHandler;->serverSocket:Ljava/net/ServerSocket;

    .line 67
    return-void
.end method


# virtual methods
.method public closeConnection()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lcom/mediatek/apst/util/communication/server/CommHostHandler;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    if-nez v1, :cond_1

    .line 125
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[CommHostHandler][W]The socket has already been closed!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    :goto_0
    return v0

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pollingThr:Lcom/mediatek/apst/util/communication/common/PollingThr;

    invoke-virtual {v1}, Lcom/mediatek/apst/util/communication/common/PollingThr;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[CommHostHandler][W]We have stop the polling thread, but it still work, so interrupt it!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 133
    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[CommHostHandler][I]Interrupt the send data thread!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 135
    iget-object v1, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 136
    iget-object v1, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 137
    iput-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    .line 138
    iget-object v1, p0, Lcom/mediatek/apst/util/communication/server/CommHostHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 139
    iput-object v3, p0, Lcom/mediatek/apst/util/communication/server/CommHostHandler;->serverSocket:Ljava/net/ServerSocket;

    .line 140
    iget-object v1, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->dispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-virtual {v1, v0}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->setEcho(Z)V

    .line 141
    iget-object v1, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pollingThr:Lcom/mediatek/apst/util/communication/common/PollingThr;

    invoke-virtual {v1, v0}, Lcom/mediatek/apst/util/communication/common/PollingThr;->setRunning(Z)V

    .line 142
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[CommSlaveHandler][I]All cloesd!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public createConnection()Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 72
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/apst/util/communication/server/CommHostHandler;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v4, :cond_1

    .line 73
    iget-object v4, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    if-eqz v4, :cond_0

    .line 74
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "[CommHostHandler][W]The socket is used! create connection failed!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    :goto_0
    return v2

    .line 78
    :cond_0
    iget-object v4, p0, Lcom/mediatek/apst/util/communication/server/CommHostHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    .line 87
    :goto_1
    iget-object v4, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    if-nez v4, :cond_3

    .line 88
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[CommHostHandler][E]The socket server wait timeout!"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/mediatek/apst/util/communication/server/CommHostHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    .line 90
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/apst/util/communication/server/CommHostHandler;->serverSocket:Ljava/net/ServerSocket;

    move v2, v3

    .line 91
    goto :goto_0

    .line 81
    :cond_1
    new-instance v4, Ljava/net/ServerSocket;

    const v5, 0xaabc

    invoke-direct {v4, v5}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/apst/util/communication/server/CommHostHandler;->serverSocket:Ljava/net/ServerSocket;

    .line 82
    iget-object v4, p0, Lcom/mediatek/apst/util/communication/server/CommHostHandler;->serverSocket:Ljava/net/ServerSocket;

    const/16 v5, 0xfa0

    invoke-virtual {v4, v5}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 83
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "[CommHostHandler][I]The select port is 43708"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    iget-object v4, p0, Lcom/mediatek/apst/util/communication/server/CommHostHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/apst/util/communication/server/CommHostHandler;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/apst/util/communication/server/CommHostHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/mediatek/apst/util/communication/server/CommHostHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 114
    :cond_2
    :goto_2
    iput-object v9, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    .line 115
    iput-object v9, p0, Lcom/mediatek/apst/util/communication/server/CommHostHandler;->serverSocket:Ljava/net/ServerSocket;

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v2, v3

    .line 117
    goto :goto_0

    .line 93
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    :try_start_2
    new-instance v4, Ljava/io/ObjectOutputStream;

    iget-object v5, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->oos:Ljava/io/ObjectOutputStream;

    .line 94
    iget-object v4, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->oos:Ljava/io/ObjectOutputStream;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->useProtocolVersion(I)V

    .line 95
    new-instance v4, Ljava/io/ObjectInputStream;

    iget-object v5, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->ois:Ljava/io/ObjectInputStream;

    .line 96
    new-instance v4, Lcom/mediatek/apst/util/communication/common/PollingThr;

    iget-object v5, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->ois:Ljava/io/ObjectInputStream;

    iget-object v6, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->oos:Ljava/io/ObjectOutputStream;

    iget-object v7, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->dispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mediatek/apst/util/communication/common/PollingThr;-><init>(Ljava/io/ObjectInputStream;Ljava/io/ObjectOutputStream;Lcom/mediatek/apst/util/communication/common/Dispatcher;I)V

    iput-object v4, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pollingThr:Lcom/mediatek/apst/util/communication/common/PollingThr;

    .line 97
    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pollingThr:Lcom/mediatek/apst/util/communication/common/PollingThr;

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pThread:Ljava/lang/Thread;

    .line 98
    iget-object v4, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    const-wide/16 v4, 0x64

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 104
    :goto_3
    :try_start_4
    iget-object v4, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->oos:Ljava/io/ObjectOutputStream;

    const-string v5, "PCST"

    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 105
    iget-object v4, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    goto/16 :goto_0

    .line 101
    :catch_1
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 111
    .local v0, e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 112
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
