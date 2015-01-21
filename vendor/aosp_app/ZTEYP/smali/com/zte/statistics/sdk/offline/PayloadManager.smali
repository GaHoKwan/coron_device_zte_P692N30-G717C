.class public Lcom/zte/statistics/sdk/offline/PayloadManager;
.super Ljava/lang/Object;
.source "PayloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final PAYLOAD_KEY_PREFIX:Ljava/lang/String; = "payload-"

.field private static final QueueLength:I = 0x14

.field private static ctt:Landroid/content/Context;

.field private static instance:Lcom/zte/statistics/sdk/offline/PayloadManager;

.field private static running:Z

.field private static sendResult:Lcom/zte/statistics/sdk/CollectionSendResult;


# instance fields
.field private prefs:Landroid/content/SharedPreferences;

.field private queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->ctt:Landroid/content/Context;

    .line 28
    sput-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->sendResult:Lcom/zte/statistics/sdk/CollectionSendResult;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 42
    return-void
.end method

.method private directlySend()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 140
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 141
    .local v5, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 142
    sget-object v6, Lcom/zte/statistics/sdk/offline/PayloadManager;->sendResult:Lcom/zte/statistics/sdk/CollectionSendResult;

    if-eqz v6, :cond_1

    .line 143
    sget-object v6, Lcom/zte/statistics/sdk/offline/PayloadManager;->sendResult:Lcom/zte/statistics/sdk/CollectionSendResult;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/zte/statistics/sdk/CollectionSendResult;->result(Z)V

    .line 183
    :cond_1
    :goto_1
    return-void

    .line 148
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    if-eqz v5, :cond_1

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got a payload to send: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v6, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, json:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Payload contents: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    if-nez v4, :cond_3

    .line 161
    iget-object v6, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 150
    .end local v4           #json:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 151
    .local v3, e:Ljava/lang/InterruptedException;
    goto :goto_1

    .line 164
    .end local v3           #e:Ljava/lang/InterruptedException;
    .restart local v4       #json:Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;

    invoke-direct {v1}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;-><init>()V

    .line 165
    .local v1, client:Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;
    invoke-virtual {v1, v4}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->postJSON(Ljava/lang/String;)I

    move-result v2

    .line 166
    .local v2, code:I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http result = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    const/16 v6, 0xc8

    if-lt v2, v6, :cond_4

    const/16 v6, 0x12c

    if-ge v2, v6, :cond_4

    .line 168
    iget-object v6, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 169
    :cond_4
    const/16 v6, 0x190

    if-lt v2, v6, :cond_5

    const/16 v6, 0x1f4

    if-gt v2, v6, :cond_5

    .line 170
    const/16 v6, 0x193

    if-eq v2, v6, :cond_0

    const/16 v6, 0x194

    if-eq v2, v6, :cond_0

    .line 171
    iget-object v6, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 174
    :cond_5
    const-string v6, "Unable to send JSON. Placing back in queue."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/zte/statistics/sdk/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v6, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 179
    sget-object v6, Lcom/zte/statistics/sdk/offline/PayloadManager;->sendResult:Lcom/zte/statistics/sdk/CollectionSendResult;

    invoke-interface {v6, v8}, Lcom/zte/statistics/sdk/CollectionSendResult;->result(Z)V

    goto/16 :goto_1
.end method

.method public static getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->instance:Lcom/zte/statistics/sdk/offline/PayloadManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/zte/statistics/sdk/offline/PayloadManager;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/offline/PayloadManager;-><init>()V

    sput-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->instance:Lcom/zte/statistics/sdk/offline/PayloadManager;

    .line 34
    :cond_0
    sget-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->instance:Lcom/zte/statistics/sdk/offline/PayloadManager;

    return-object v0
.end method

.method private getPrefixType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 74
    const-string v0, "\"type\":\"launch\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "launch-"

    .line 81
    :goto_0
    return-object v0

    .line 76
    :cond_0
    const-string v0, "\"type\":\"exception\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const-string v0, "exception-"

    goto :goto_0

    .line 78
    :cond_1
    const-string v0, "\"type\":\"event\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    const-string v0, "event-"

    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized initQueue()V
    .locals 5

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 106
    .local v2, length:I
    iget-object v3, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 107
    .local v1, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 117
    monitor-exit p0

    return-void

    .line 107
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, key:Ljava/lang/String;
    const-string v4, "payload-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    const/16 v4, 0x14

    if-gt v2, v4, :cond_2

    .line 110
    iget-object v4, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #length:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 112
    .restart local v0       #key:Ljava/lang/String;
    .restart local v1       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2       #length:I
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    iget-object v4, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized ensureRunning(Lcom/zte/statistics/sdk/CollectionSendResult;)V
    .locals 2
    .parameter "csr"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ensureRunning = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/zte/statistics/sdk/offline/PayloadManager;->running:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    sput-object p1, Lcom/zte/statistics/sdk/offline/PayloadManager;->sendResult:Lcom/zte/statistics/sdk/CollectionSendResult;

    .line 58
    sget-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->ctt:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->sendResult:Lcom/zte/statistics/sdk/CollectionSendResult;

    if-nez v0, :cond_2

    .line 59
    :cond_0
    const-string v0, "ensureRunning context is null "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->sendResult:Lcom/zte/statistics/sdk/CollectionSendResult;

    if-eqz v0, :cond_1

    .line 61
    sget-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->sendResult:Lcom/zte/statistics/sdk/CollectionSendResult;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zte/statistics/sdk/CollectionSendResult;->result(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->running:Z

    if-nez v0, :cond_3

    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->running:Z

    .line 67
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 69
    :cond_3
    :try_start_2
    sget-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->sendResult:Lcom/zte/statistics/sdk/CollectionSendResult;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zte/statistics/sdk/CollectionSendResult;->result(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->instance:Lcom/zte/statistics/sdk/offline/PayloadManager;

    iget-object v0, v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 52
    sget-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->instance:Lcom/zte/statistics/sdk/offline/PayloadManager;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->initQueue()V

    .line 53
    return-void
.end method

.method public putPayload(Lcom/zte/statistics/sdk/offline/Payload;)V
    .locals 6
    .parameter "payload"

    .prologue
    .line 91
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 92
    .local v2, ran:Ljava/util/Random;
    invoke-virtual {p1}, Lcom/zte/statistics/sdk/offline/Payload;->getAsJSON()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, value:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "payload-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getPrefixType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, name:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    iget-object v4, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->directlySend()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    sput-boolean v3, Lcom/zte/statistics/sdk/offline/PayloadManager;->running:Z

    .line 135
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "run() running = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/zte/statistics/sdk/offline/PayloadManager;->running:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/statistics/sdk/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    sput-boolean v3, Lcom/zte/statistics/sdk/offline/PayloadManager;->running:Z

    goto :goto_0

    .line 132
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 133
    sput-boolean v3, Lcom/zte/statistics/sdk/offline/PayloadManager;->running:Z

    .line 134
    throw v1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    const-string v0, "STATISTICS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    .line 46
    sput-object p1, Lcom/zte/statistics/sdk/offline/PayloadManager;->ctt:Landroid/content/Context;

    .line 47
    return-void
.end method
