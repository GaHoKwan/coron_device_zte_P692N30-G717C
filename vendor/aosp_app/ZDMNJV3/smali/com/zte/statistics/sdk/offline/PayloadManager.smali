.class public Lcom/zte/statistics/sdk/offline/PayloadManager;
.super Ljava/lang/Object;
.source "PayloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final PAYLOAD_KEY_PREFIX:Ljava/lang/String; = "payload-"

.field private static final QueueLength:I = 0x14

.field private static ctt:Landroid/content/Context;

.field private static des:Lcom/zte/statistics/sdk/util/DesUtils;

.field private static instance:Lcom/zte/statistics/sdk/offline/PayloadManager;

.field private static proxyOK:Z

.field private static running:Z


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
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->ctt:Landroid/content/Context;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->proxyOK:Z

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 49
    new-instance v0, Lcom/zte/statistics/sdk/util/DesUtils;

    const-string v1, "ZTE"

    invoke-direct {v0, v1}, Lcom/zte/statistics/sdk/util/DesUtils;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->des:Lcom/zte/statistics/sdk/util/DesUtils;

    .line 50
    return-void
.end method

.method private directlySend()V
    .locals 10

    .prologue
    const/16 v9, 0x1f4

    const/4 v8, 0x0

    .line 249
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 250
    .local v5, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 290
    :cond_1
    :goto_1
    return-void

    .line 254
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

    .line 259
    if-eqz v5, :cond_1

    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got a payload to send: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-object v6, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 265
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

    .line 266
    if-nez v4, :cond_3

    .line 267
    iget-object v6, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 256
    .end local v4           #json:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 257
    .local v3, e:Ljava/lang/InterruptedException;
    goto :goto_1

    .line 270
    .end local v3           #e:Ljava/lang/InterruptedException;
    .restart local v4       #json:Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;

    invoke-direct {v1}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;-><init>()V

    .line 271
    .local v1, client:Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;
    invoke-virtual {v1, v4}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->postJSON(Ljava/lang/String;)I

    move-result v2

    .line 272
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

    .line 273
    const/16 v6, 0xc8

    if-lt v2, v6, :cond_4

    const/16 v6, 0x12c

    if-ge v2, v6, :cond_4

    .line 274
    invoke-direct {p0, v5}, Lcom/zte/statistics/sdk/offline/PayloadManager;->handleResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_4
    const/16 v6, 0x190

    if-lt v2, v6, :cond_5

    if-ge v2, v9, :cond_5

    .line 276
    const/16 v6, 0x193

    if-eq v2, v6, :cond_0

    const/16 v6, 0x194

    if-eq v2, v6, :cond_0

    .line 277
    invoke-direct {p0, v5}, Lcom/zte/statistics/sdk/offline/PayloadManager;->handleResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    :cond_5
    if-ne v2, v9, :cond_6

    .line 280
    invoke-direct {p0, v5}, Lcom/zte/statistics/sdk/offline/PayloadManager;->handleResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    :cond_6
    const-string v6, "Unable to send JSON. Placing back in queue."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/zte/statistics/sdk/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iget-object v6, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public static getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->instance:Lcom/zte/statistics/sdk/offline/PayloadManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/zte/statistics/sdk/offline/PayloadManager;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/offline/PayloadManager;-><init>()V

    sput-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->instance:Lcom/zte/statistics/sdk/offline/PayloadManager;

    .line 41
    :cond_0
    sget-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->instance:Lcom/zte/statistics/sdk/offline/PayloadManager;

    return-object v0
.end method

.method private getPrefixType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 76
    const-string v0, "\"type\":\"launch\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "launch-"

    .line 87
    :goto_0
    return-object v0

    .line 78
    :cond_0
    const-string v0, "\"type\":\"feedback\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "feedback-"

    goto :goto_0

    .line 80
    :cond_1
    const-string v0, "\"type\":\"exception\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    const-string v0, "exception-"

    goto :goto_0

    .line 82
    :cond_2
    const-string v0, "\"type\":\"host_action\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    const-string v0, "host_action-"

    goto :goto_0

    .line 84
    :cond_3
    const-string v0, "\"type\":\"event\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    const-string v0, "event-"

    goto :goto_0

    .line 87
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleResponse(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 293
    const-string v0, "payload-launch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "activation"

    const-string v2, "ok"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 297
    return-void
.end method

.method private declared-synchronized initQueue()V
    .locals 5

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 136
    .local v2, length:I
    iget-object v3, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 137
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

    .line 147
    monitor-exit p0

    return-void

    .line 137
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    .local v0, key:Ljava/lang/String;
    const-string v4, "payload-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    const/16 v4, 0x14

    if-gt v2, v4, :cond_2

    .line 140
    iget-object v4, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #length:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 142
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

    .line 143
    iget-object v4, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto :goto_0
.end method

.method private proxySend()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 207
    :goto_0
    const/4 v4, 0x0

    .line 208
    .local v4, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 245
    :cond_0
    :goto_1
    return-void

    .line 212
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    if-eqz v4, :cond_0

    .line 221
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Got a payload to send: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    iget-object v8, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, json:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Payload contents: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    if-nez v3, :cond_2

    .line 225
    iget-object v8, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 214
    .end local v3           #json:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 215
    .local v2, e:Ljava/lang/InterruptedException;
    goto :goto_1

    .line 229
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v3       #json:Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/zte/statistics/sdk/offline/PayloadManager;->ctt:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 230
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v8, Lcom/zte/statistics/sdk/comm/ConstantDefine;->proxyUrl:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 232
    .local v5, proxyUrl:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 233
    .local v7, values:Landroid/content/ContentValues;
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 234
    const-string v8, "key"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v8, "value"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1, v5, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 237
    .local v6, returnUri:Landroid/net/Uri;
    if-eqz v6, :cond_3

    .line 238
    iget-object v8, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 240
    :cond_3
    const-string v8, "Unable to send JSON. Placing back in queue."

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/zte/statistics/sdk/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iget-object v8, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private sendByAI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v0, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "activation"

    const-string v2, "not"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "not"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const-string v0, "directlySend D"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-direct {p0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->directlySend()V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "activation"

    const-string v2, "not"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    sget-boolean v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->proxyOK:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "ZTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    const-string v0, "proxySend B "

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-direct {p0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->proxySend()V

    goto :goto_0

    .line 196
    :cond_2
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "ZTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 197
    const-string v0, "directlySend E"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    invoke-direct {p0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->directlySend()V

    goto :goto_0

    .line 200
    :cond_3
    const-string v0, "No data send"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized ensureRunning()V
    .locals 2

    .prologue
    .line 64
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

    .line 65
    sget-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->ctt:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->running:Z

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->running:Z

    .line 70
    sget-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->ctt:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/statistics/sdk/util/Util;->getProxyStatus(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->proxyOK:Z

    .line 71
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public feedBackPutPayload(Lcom/zte/statistics/sdk/offline/Payload;)V
    .locals 6
    .parameter "payload"

    .prologue
    .line 118
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 119
    .local v2, ran:Ljava/util/Random;
    invoke-virtual {p1}, Lcom/zte/statistics/sdk/offline/Payload;->getAsJSON()Ljava/lang/String;

    move-result-object v3

    .line 120
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

    .line 123
    .local v1, name:Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    sput-boolean v4, Lcom/zte/statistics/sdk/GlobalInfo;->bIsFeedBack:Z

    .line 124
    sget-object v4, Lcom/zte/statistics/sdk/offline/PayloadManager;->des:Lcom/zte/statistics/sdk/util/DesUtils;

    invoke-virtual {v4, v3}, Lcom/zte/statistics/sdk/util/DesUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    iget-object v4, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    iget-object v4, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->ensureRunning()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->instance:Lcom/zte/statistics/sdk/offline/PayloadManager;

    iget-object v0, v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 60
    sget-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->instance:Lcom/zte/statistics/sdk/offline/PayloadManager;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->initQueue()V

    .line 61
    return-void
.end method

.method public putPayload(Lcom/zte/statistics/sdk/offline/Payload;)V
    .locals 6
    .parameter "payload"

    .prologue
    .line 97
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 98
    .local v2, ran:Ljava/util/Random;
    invoke-virtual {p1}, Lcom/zte/statistics/sdk/offline/Payload;->getAsJSON()Ljava/lang/String;

    move-result-object v3

    .line 99
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

    .line 102
    .local v1, name:Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/zte/statistics/sdk/offline/PayloadManager;->des:Lcom/zte/statistics/sdk/util/DesUtils;

    invoke-virtual {v4, v3}, Lcom/zte/statistics/sdk/util/DesUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    iget-object v4, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    iget-object v4, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    :try_start_0
    sget-object v1, Lcom/zte/statistics/sdk/GlobalInfo;->bSendMode:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    sget-object v2, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->ONLYBYPROXY:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    invoke-virtual {v1, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/zte/statistics/sdk/offline/PayloadManager;->proxyOK:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "ZTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const-string v1, "proxySend A "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-direct {p0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->proxySend()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    sput-boolean v3, Lcom/zte/statistics/sdk/offline/PayloadManager;->running:Z

    .line 185
    :goto_1
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

    .line 186
    return-void

    .line 160
    :cond_0
    :try_start_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "ZTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    const-string v1, "directlySend A"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-direct {p0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->directlySend()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    sput-boolean v3, Lcom/zte/statistics/sdk/offline/PayloadManager;->running:Z

    goto :goto_1

    .line 164
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_3
    sget-object v1, Lcom/zte/statistics/sdk/GlobalInfo;->bSendMode:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    sget-object v2, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->ONLYBYSELF:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    invoke-virtual {v1, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    const-string v1, "directlySend B"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-direct {p0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->directlySend()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v1

    .line 183
    sput-boolean v3, Lcom/zte/statistics/sdk/offline/PayloadManager;->running:Z

    .line 184
    throw v1

    .line 167
    :cond_2
    :try_start_4
    sget-boolean v1, Lcom/zte/statistics/sdk/GlobalInfo;->bIsFeedBack:Z

    if-eqz v1, :cond_3

    .line 170
    const-string v1, "directlySend C"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-direct {p0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->directlySend()V

    .line 172
    const/4 v1, 0x0

    sput-boolean v1, Lcom/zte/statistics/sdk/GlobalInfo;->bIsFeedBack:Z

    goto :goto_0

    .line 173
    :cond_3
    sget-object v1, Lcom/zte/statistics/sdk/GlobalInfo;->bSendMode:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    sget-object v2, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->BYAI:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    invoke-virtual {v1, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    invoke-direct {p0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->sendByAI()V

    goto :goto_0

    .line 176
    :cond_4
    const-string v1, "No data send"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/statistics/sdk/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    const-string v0, "STATISTICS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->prefs:Landroid/content/SharedPreferences;

    .line 54
    sput-object p1, Lcom/zte/statistics/sdk/offline/PayloadManager;->ctt:Landroid/content/Context;

    .line 55
    return-void
.end method
