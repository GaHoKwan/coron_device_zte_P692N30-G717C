.class public abstract Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;
.super Ljava/lang/Thread;
.source "BlockingCommandHandlingThread.java"


# static fields
.field private static final DEFAULT_CMD_QUEUE_CAPACITY:I = 0x3e8


# instance fields
.field private mCommandQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/mediatek/apst/util/command/BaseCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxPriority:I

.field private mShouldTerminate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;-><init>(I)V

    .line 88
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "queueCapacity"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->mShouldTerminate:Z

    .line 79
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    .line 80
    const/16 v0, 0xa

    iput v0, p0, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->mMaxPriority:I

    .line 81
    return-void
.end method

.method private dequeue(Z)Lcom/mediatek/apst/util/command/BaseCommand;
    .locals 7
    .parameter "waitWhenEmpty"

    .prologue
    const/4 v2, 0x0

    .line 156
    if-eqz p1, :cond_0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/command/BaseCommand;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "dequeue"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4, v2, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 162
    goto :goto_0

    .line 165
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/command/BaseCommand;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized enqueue(Lcom/mediatek/apst/util/command/BaseCommand;Z)Z
    .locals 8
    .parameter "cmd"
    .parameter "waitWhenFull"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 128
    monitor-enter p0

    if-eqz p2, :cond_1

    .line 130
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "enqueue"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 135
    goto :goto_0

    .line 138
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v4, p0, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 139
    .local v0, b:Z
    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "enqueue"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "Failed, command queue is full."

    invoke-static {v2, v4, v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 144
    goto :goto_0

    .line 128
    .end local v0           #b:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "BlockingCommandHandlingThread"

    return-object v0
.end method

.method protected abstract handle(Lcom/mediatek/apst/util/command/BaseCommand;)V
.end method

.method public isShouldTerminate()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->mShouldTerminate:Z

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "run"

    const-string v3, "Thread start running."

    invoke-static {v1, v2, v4, v3}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->isShouldTerminate()Z

    move-result v1

    if-nez v1, :cond_2

    .line 188
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->dequeue(Z)Lcom/mediatek/apst/util/command/BaseCommand;

    move-result-object v0

    .line 189
    .local v0, cmd:Lcom/mediatek/apst/util/command/BaseCommand;
    if-eqz v0, :cond_1

    .line 191
    iget v1, p0, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->mMaxPriority:I

    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 198
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->handle(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 195
    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_1

    .line 200
    .end local v0           #cmd:Lcom/mediatek/apst/util/command/BaseCommand;
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "run"

    const-string v3, "Thread terminated."

    invoke-static {v1, v2, v4, v3}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public setMaxPriority(I)V
    .locals 2
    .parameter "priority"

    .prologue
    .line 174
    move v0, p1

    .line 175
    .local v0, maxPriority:I
    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 176
    const/16 v0, 0xa

    .line 180
    :cond_0
    :goto_0
    iput v0, p0, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->mMaxPriority:I

    .line 181
    return-void

    .line 177
    :cond_1
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 178
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->mShouldTerminate:Z

    .line 109
    return-void
.end method
