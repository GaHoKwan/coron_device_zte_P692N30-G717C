.class public Lcom/zte/statistics/sdk/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static dn:Lcom/zte/statistics/sdk/a/a;

.field private static do:Z

.field private static dp:Landroid/content/Context;

.field private static dq:Lcom/zte/statistics/sdk/d;


# instance fields
.field private dr:Ljava/util/concurrent/LinkedBlockingQueue;

.field private ds:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/statistics/sdk/a/a;->dp:Landroid/content/Context;

    sput-object v0, Lcom/zte/statistics/sdk/a/a;->dq:Lcom/zte/statistics/sdk/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/zte/statistics/sdk/a/a;->dr:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public static P()Lcom/zte/statistics/sdk/a/a;
    .locals 1

    sget-object v0, Lcom/zte/statistics/sdk/a/a;->dn:Lcom/zte/statistics/sdk/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/statistics/sdk/a/a;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/a/a;-><init>()V

    sput-object v0, Lcom/zte/statistics/sdk/a/a;->dn:Lcom/zte/statistics/sdk/a/a;

    :cond_0
    sget-object v0, Lcom/zte/statistics/sdk/a/a;->dn:Lcom/zte/statistics/sdk/a/a;

    return-object v0
.end method

.method private declared-synchronized Q()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/statistics/sdk/a/a;->ds:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/zte/statistics/sdk/a/a;->ds:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "payload-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14

    if-gt v1, v3, :cond_2

    iget-object v3, p0, Lcom/zte/statistics/sdk/a/a;->dr:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/zte/statistics/sdk/a/a;->ds:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/zte/statistics/sdk/a/a;->ds:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method private R()V
    .locals 5

    const/4 v4, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/statistics/sdk/a/a;->dr:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/zte/statistics/sdk/a/a;->dq:Lcom/zte/statistics/sdk/d;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zte/statistics/sdk/a/a;->dq:Lcom/zte/statistics/sdk/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/zte/statistics/sdk/d;->d(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/zte/statistics/sdk/a/a;->dr:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got a payload to send: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/statistics/sdk/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/zte/statistics/sdk/a/a;->ds:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Payload contents: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/statistics/sdk/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/zte/statistics/sdk/a/a;->ds:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/zte/statistics/sdk/comm/b;

    invoke-direct {v2}, Lcom/zte/statistics/sdk/comm/b;-><init>()V

    invoke-virtual {v2, v1}, Lcom/zte/statistics/sdk/comm/b;->d(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/statistics/sdk/c;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_4

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lcom/zte/statistics/sdk/a/a;->ds:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x190

    if-lt v1, v2, :cond_5

    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_5

    const/16 v2, 0x193

    if-eq v1, v2, :cond_0

    const/16 v2, 0x194

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/zte/statistics/sdk/a/a;->ds:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_5
    const-string v1, "Unable to send JSON. Placing back in queue."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/statistics/sdk/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/zte/statistics/sdk/a/a;->dr:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    sget-object v0, Lcom/zte/statistics/sdk/a/a;->dq:Lcom/zte/statistics/sdk/d;

    invoke-interface {v0, v4}, Lcom/zte/statistics/sdk/d;->d(Z)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\"type\":\"launch\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "launch-"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\"type\":\"exception\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "exception-"

    goto :goto_0

    :cond_1
    const-string v0, "\"type\":\"event\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "event-"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/zte/statistics/sdk/a/c;)V
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {p1}, Lcom/zte/statistics/sdk/a/c;->bw()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payload-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/zte/statistics/sdk/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/zte/statistics/sdk/a/a;->ds:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/zte/statistics/sdk/a/a;->dr:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/zte/statistics/sdk/d;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ensureRunning = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/zte/statistics/sdk/a/a;->do:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/c;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object p1, Lcom/zte/statistics/sdk/a/a;->dq:Lcom/zte/statistics/sdk/d;

    sget-object v0, Lcom/zte/statistics/sdk/a/a;->dp:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/statistics/sdk/a/a;->dq:Lcom/zte/statistics/sdk/d;

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "ensureRunning context is null "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/c;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/zte/statistics/sdk/a/a;->dq:Lcom/zte/statistics/sdk/d;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zte/statistics/sdk/a/a;->dq:Lcom/zte/statistics/sdk/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zte/statistics/sdk/d;->d(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/zte/statistics/sdk/a/a;->do:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/statistics/sdk/a/a;->do:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    sget-object v0, Lcom/zte/statistics/sdk/a/a;->dq:Lcom/zte/statistics/sdk/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zte/statistics/sdk/d;->d(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    sget-object v0, Lcom/zte/statistics/sdk/a/a;->dn:Lcom/zte/statistics/sdk/a/a;

    iget-object v0, v0, Lcom/zte/statistics/sdk/a/a;->dr:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    sget-object v0, Lcom/zte/statistics/sdk/a/a;->dn:Lcom/zte/statistics/sdk/a/a;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/a/a;->Q()V

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/zte/statistics/sdk/a/a;->R()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sput-boolean v2, Lcom/zte/statistics/sdk/a/a;->do:Z

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "run() running = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/zte/statistics/sdk/a/a;->do:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/c;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/c;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-boolean v2, Lcom/zte/statistics/sdk/a/a;->do:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    sput-boolean v2, Lcom/zte/statistics/sdk/a/a;->do:Z

    throw v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2

    const-string v0, "STATISTICS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/statistics/sdk/a/a;->ds:Landroid/content/SharedPreferences;

    sput-object p1, Lcom/zte/statistics/sdk/a/a;->dp:Landroid/content/Context;

    return-void
.end method
