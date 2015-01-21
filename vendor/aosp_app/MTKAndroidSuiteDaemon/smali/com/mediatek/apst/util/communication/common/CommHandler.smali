.class public abstract Lcom/mediatek/apst/util/communication/common/CommHandler;
.super Ljava/lang/Object;
.source "CommHandler.java"


# static fields
.field public static final DEFAULT_PORT:I = 0xaabc

.field public static final DEFAULT_TIMEOUT:I = 0xfa0

.field public static final FORWARD_PORT:I = 0x85be


# instance fields
.field protected bis:Ljava/io/ByteArrayInputStream;

.field protected bos:Ljava/io/ByteArrayOutputStream;

.field protected dispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

.field protected ois:Ljava/io/ObjectInputStream;

.field protected oos:Ljava/io/ObjectOutputStream;

.field protected pThread:Ljava/lang/Thread;

.field protected pollingThr:Lcom/mediatek/apst/util/communication/common/PollingThr;

.field protected socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->getInstance()Lcom/mediatek/apst/util/communication/common/Dispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->dispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    .line 85
    iput-object v1, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    .line 86
    iput-object v1, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pThread:Ljava/lang/Thread;

    .line 87
    iput-object v1, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->oos:Ljava/io/ObjectOutputStream;

    .line 88
    iput-object v1, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->ois:Ljava/io/ObjectInputStream;

    .line 89
    return-void
.end method


# virtual methods
.method public abstract closeConnection()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createConnection()Z
.end method

.method public registerCallback(ILcom/mediatek/apst/util/communication/common/ICallback;)Z
    .locals 1
    .parameter "featureID"
    .parameter "callback"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->dispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->installCallback(ILcom/mediatek/apst/util/communication/common/ICallback;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized sendPrimitive(Lcom/mediatek/apst/util/communication/common/TransportEntity;I)I
    .locals 6
    .parameter "primitive"
    .parameter "featureID"

    .prologue
    const/4 v2, -0x1

    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->oos:Ljava/io/ObjectOutputStream;

    if-nez v3, :cond_1

    .line 128
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[CommHandler][E]The socket is null, send failed!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 154
    :goto_0
    monitor-exit p0

    return v1

    .line 131
    :cond_1
    if-nez p1, :cond_2

    .line 132
    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[CommHandler][E]The primitive is null, send failed!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v2

    .line 133
    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p1, p2}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->setFeatureID(I)V

    .line 136
    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getToken()I

    move-result v1

    .line 137
    .local v1, tok:I
    if-ne v1, v2, :cond_3

    .line 138
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->dispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-virtual {v3}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->getToken()I

    move-result v1

    .line 139
    invoke-virtual {p1, v1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->setToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 145
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 146
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->reset()V

    .line 147
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[CommHandler][I]The primitive has been sent,feature ID is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 149
    const-string v5, "token is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getToken()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v2

    .line 152
    goto :goto_0

    .line 127
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #tok:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public stopPolling()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pollingThr:Lcom/mediatek/apst/util/communication/common/PollingThr;

    invoke-virtual {v0}, Lcom/mediatek/apst/util/communication/common/PollingThr;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    :cond_0
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/mediatek/apst/util/communication/common/CommHandler;->pThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 167
    const/4 v0, 0x1

    goto :goto_0
.end method
