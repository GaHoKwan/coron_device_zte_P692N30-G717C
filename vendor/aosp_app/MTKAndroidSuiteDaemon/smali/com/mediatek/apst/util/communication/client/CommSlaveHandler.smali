.class public Lcom/mediatek/apst/util/communication/client/CommSlaveHandler;
.super Lcom/mediatek/apst/util/communication/common/CommHandler;
.source "CommSlaveHandler.java"


# static fields
.field private static final LOCALHOST_IP_ADDRESS:Ljava/lang/String; = "127.0.0.1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mediatek/apst/util/communication/common/CommHandler;-><init>()V

    .line 68
    return-void
.end method


# virtual methods
.method public closeConnection()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    if-nez v3, :cond_0

    .line 74
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[CommSlaveHandler][E]The socket has already been closed!You can not close it!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    :goto_0
    return v2

    .line 78
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->oos:Ljava/io/ObjectOutputStream;

    const-string v4, "DISC"

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_1
    const/4 v0, 0x0

    .line 84
    .local v0, cnt:I
    :goto_2
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pollingThr:Lcom/mediatek/apst/util/communication/common/PollingThr;

    invoke-virtual {v3}, Lcom/mediatek/apst/util/communication/common/PollingThr;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    if-lt v0, v3, :cond_4

    .line 92
    :cond_1
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pollingThr:Lcom/mediatek/apst/util/communication/common/PollingThr;

    invoke-virtual {v3}, Lcom/mediatek/apst/util/communication/common/PollingThr;->isRunning()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 93
    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[CommSlaveHandler][W]We have stop the polling thread, but it still work, so interrupt it!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 98
    :goto_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[CommSlaveHandler][I]Interrupt the send data thread!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 101
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 105
    :goto_4
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_3

    .line 106
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 107
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    .line 109
    :cond_3
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->dispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-virtual {v3, v2}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->setEcho(Z)V

    .line 110
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pollingThr:Lcom/mediatek/apst/util/communication/common/PollingThr;

    invoke-virtual {v3, v2}, Lcom/mediatek/apst/util/communication/common/PollingThr;->setRunning(Z)V

    .line 111
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "[CommSlaveHandler][I]All cloesd!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    const/4 v2, 0x1

    goto :goto_0

    .line 79
    .end local v0           #cnt:I
    :catch_0
    move-exception v1

    .line 80
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[CommSlaveHandler][E]Write \'DISC\' failed!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 86
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cnt:I
    :cond_4
    const-wide/16 v3, 0x64

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 88
    :catch_1
    move-exception v1

    .line 89
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 97
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_5
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[CommSlaveHandler][I]The Polling thread stopped normally!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 102
    :catch_2
    move-exception v1

    .line 103
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[CommSlaveHandler][E]Close object outputstream failed!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public createConnection()Z
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 117
    iget-object v5, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    if-eqz v5, :cond_0

    .line 118
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "[CommSlaveHandler][W]The socket is used! Create connection failed!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    :goto_0
    return v3

    .line 123
    :cond_0
    :try_start_0
    new-instance v5, Ljava/net/Socket;

    const-string v6, "127.0.0.1"

    const v7, 0x85be

    invoke-direct {v5, v6, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    iget-object v5, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    if-nez v5, :cond_1

    .line 134
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "[CommSlaveHandler][E]The socket is create failed!"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v3, v4

    .line 135
    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, e:Ljava/net/UnknownHostException;
    iput-object v9, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    .line 126
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v4

    .line 127
    goto :goto_0

    .line 128
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 129
    .local v1, e:Ljava/io/IOException;
    iput-object v9, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    .line 130
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v4

    .line 131
    goto :goto_0

    .line 138
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    iget-object v6, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->oos:Ljava/io/ObjectOutputStream;

    .line 139
    iget-object v5, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->oos:Ljava/io/ObjectOutputStream;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->useProtocolVersion(I)V

    .line 140
    new-instance v5, Ljava/io/ObjectInputStream;

    iget-object v6, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->ois:Ljava/io/ObjectInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 154
    new-instance v5, Lcom/mediatek/apst/util/communication/common/PollingThr;

    iget-object v6, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->ois:Ljava/io/ObjectInputStream;

    iget-object v7, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->oos:Ljava/io/ObjectOutputStream;

    iget-object v8, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->dispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/mediatek/apst/util/communication/common/PollingThr;-><init>(Ljava/io/ObjectInputStream;Ljava/io/ObjectOutputStream;Lcom/mediatek/apst/util/communication/common/Dispatcher;I)V

    iput-object v5, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pollingThr:Lcom/mediatek/apst/util/communication/common/PollingThr;

    .line 155
    new-instance v5, Ljava/lang/Thread;

    iget-object v6, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pollingThr:Lcom/mediatek/apst/util/communication/common/PollingThr;

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pThread:Ljava/lang/Thread;

    .line 156
    iget-object v5, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, cnt:I
    :goto_1
    iget-object v5, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->dispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-virtual {v5}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->isEcho()Z

    move-result v5

    if-nez v5, :cond_2

    if-lt v0, v10, :cond_3

    .line 167
    :cond_2
    if-lt v0, v10, :cond_4

    .line 169
    :try_start_2
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 170
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 171
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 176
    :goto_2
    iput-object v9, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    .line 177
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 178
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->dispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-virtual {v3, v4}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->setEcho(Z)V

    .line 179
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pollingThr:Lcom/mediatek/apst/util/communication/common/PollingThr;

    invoke-virtual {v3, v4}, Lcom/mediatek/apst/util/communication/common/PollingThr;->setRunning(Z)V

    .line 180
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "[CommSlaveHandler][E]Time out when wait for the connection echo!"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v3, v4

    .line 181
    goto/16 :goto_0

    .line 141
    .end local v0           #cnt:I
    :catch_2
    move-exception v1

    .line 142
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    :try_start_3
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 145
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    move v3, v4

    .line 150
    goto/16 :goto_0

    .line 146
    :catch_3
    move-exception v2

    .line 147
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    iput-object v9, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    goto :goto_3

    .line 161
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #e1:Ljava/io/IOException;
    .restart local v0       #cnt:I
    :cond_3
    const-wide/16 v5, 0x64

    :try_start_4
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :catch_4
    move-exception v1

    .line 164
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 172
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_5
    move-exception v1

    .line 173
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 183
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "[CommSlaveHandler][I]Get the echo when connect!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
