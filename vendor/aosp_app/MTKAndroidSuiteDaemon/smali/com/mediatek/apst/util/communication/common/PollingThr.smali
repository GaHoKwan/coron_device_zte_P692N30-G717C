.class public Lcom/mediatek/apst/util/communication/common/PollingThr;
.super Ljava/lang/Object;
.source "PollingThr.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private bRunning:Z

.field private mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

.field private mOis:Ljava/io/ObjectInputStream;

.field private mOos:Ljava/io/ObjectOutputStream;

.field private mRole:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->mOis:Ljava/io/ObjectInputStream;

    .line 71
    iput-object v0, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->bRunning:Z

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->mRole:I

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/ObjectInputStream;Ljava/io/ObjectOutputStream;Lcom/mediatek/apst/util/communication/common/Dispatcher;I)V
    .locals 1
    .parameter "ois"
    .parameter "oos"
    .parameter "dispatcher"
    .parameter "role"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->mOis:Ljava/io/ObjectInputStream;

    .line 85
    iput-object p2, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->mOos:Ljava/io/ObjectOutputStream;

    .line 86
    iput-object p3, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    .line 87
    iput p4, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->mRole:I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->bRunning:Z

    .line 89
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->bRunning:Z

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 100
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->mOis:Ljava/io/ObjectInputStream;

    if-nez v3, :cond_2

    .line 101
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[PollingThr]The dispatcher or stream object is null!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    iput-boolean v4, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->bRunning:Z

    .line 105
    :goto_1
    iget-boolean v3, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->bRunning:Z

    if-eqz v3, :cond_1

    .line 106
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[PollingThr]waiting for data..."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->mOis:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 109
    .local v2, obj:Ljava/lang/Object;
    if-eqz v2, :cond_6

    .line 110
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[PollingThr:info]Recieved data"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 112
    const-string v3, "DISC"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 113
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[PollingThr]Get DISC Symbol! The polling thread will exit!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    iget v3, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->mRole:I

    if-nez v3, :cond_3

    .line 116
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->mOos:Ljava/io/ObjectOutputStream;

    const-string v4, "DISC"

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 118
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[PollingThr]Stop normally!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    iget v3, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->mRole:I

    if-nez v3, :cond_4

    .line 121
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    new-instance v4, Lcom/mediatek/apst/util/communication/connManager/ConnDisconnectInfo;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/mediatek/apst/util/communication/connManager/ConnDisconnectInfo;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->dispatch(Ljava/lang/Object;)Z

    .line 123
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->bRunning:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 132
    .end local v2           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[PollingThr:error]The polling thread get IO Exception, and the thread is stoped!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    new-instance v4, Lcom/mediatek/apst/util/communication/connManager/ConnDisconnectExpt;

    invoke-direct {v4, v0}, Lcom/mediatek/apst/util/communication/connManager/ConnDisconnectExpt;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v3, v4}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->dispatch(Ljava/lang/Object;)Z

    .line 136
    iput-boolean v6, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->bRunning:Z

    goto :goto_0

    .line 127
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-virtual {v3, v2}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->dispatch(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 138
    .end local v2           #obj:Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    iput-boolean v6, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->bRunning:Z

    goto :goto_0

    .line 130
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_6
    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[PollingThr:warning]Get NULL! We will ignore it!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 142
    .end local v2           #obj:Ljava/lang/Object;
    :catch_2
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    const-wide/16 v3, 0x3e8

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 146
    :catch_3
    move-exception v1

    .line 148
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public setRunning(Z)V
    .locals 0
    .parameter "bRunning"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/mediatek/apst/util/communication/common/PollingThr;->bRunning:Z

    .line 96
    return-void
.end method
