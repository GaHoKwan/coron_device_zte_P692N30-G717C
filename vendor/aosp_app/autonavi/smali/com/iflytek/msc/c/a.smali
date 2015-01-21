.class public Lcom/iflytek/msc/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/msc/c/a$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/iflytek/b/b;

.field protected b:Landroid/content/Context;

.field protected c:Ljava/lang/Object;

.field protected volatile d:Lcom/iflytek/msc/c/c;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/b/b;

    invoke-direct {v0}, Lcom/iflytek/b/b;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/c/a;->a:Lcom/iflytek/b/b;

    iput-object v1, p0, Lcom/iflytek/msc/c/a;->b:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/c/a;->c:Ljava/lang/Object;

    iput-object v1, p0, Lcom/iflytek/msc/c/a;->d:Lcom/iflytek/msc/c/c;

    iget-object v1, p0, Lcom/iflytek/msc/c/a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/msc/c/a;->a:Lcom/iflytek/b/b;

    sget-object v2, Lcom/iflytek/b/a;->a:[[Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lcom/iflytek/b/b;->a(Ljava/lang/String;[[Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/msc/c/a;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/iflytek/msc/c/a;->d()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/msc/c/a;->b:Landroid/content/Context;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/iflytek/msc/c/d;

    invoke-direct {v0, p0}, Lcom/iflytek/msc/c/d;-><init>(Lcom/iflytek/msc/c/a;)V

    invoke-virtual {v0}, Lcom/iflytek/msc/c/d;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public Destory()Z
    .locals 4

    iget-object v1, p0, Lcom/iflytek/msc/c/a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "destory called mscer = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/msc/c/a;->d:Lcom/iflytek/msc/c/c;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/msc/c/a;->isAvaible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/c/a;->d:Lcom/iflytek/msc/c/c;

    invoke-virtual {v0}, Lcom/iflytek/msc/c/c;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "destory false"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    monitor-exit v1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/msc/c/a;->a()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/c/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "destory ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Destory(I)Z
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "MspUser blockDestory called"

    invoke-static {v1}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/msc/c/a;->Destory()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    int-to-long v5, p1

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/msc/c/a;->Destory()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/msc/c/a;->a:Lcom/iflytek/b/b;

    sget-object v1, Lcom/iflytek/b/a;->a:[[Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/b/b;->a(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/c/a;->d:Lcom/iflytek/msc/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/c/a;->d:Lcom/iflytek/msc/c/c;

    invoke-virtual {v0}, Lcom/iflytek/msc/c/c;->b()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " finalize called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getInitParam()Lcom/iflytek/b/b;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/c/a;->a:Lcom/iflytek/b/b;

    return-object v0
.end method

.method public isAvaible()Z
    .locals 2

    iget-object v0, p0, Lcom/iflytek/msc/c/a;->d:Lcom/iflytek/msc/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/c/a;->d:Lcom/iflytek/msc/c/c;

    invoke-virtual {v0}, Lcom/iflytek/msc/c/c;->n()Lcom/iflytek/msc/c/c$a;

    move-result-object v0

    sget-object v1, Lcom/iflytek/msc/c/c$a;->a:Lcom/iflytek/msc/c/c$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/c/a;->d:Lcom/iflytek/msc/c/c;

    invoke-virtual {v0}, Lcom/iflytek/msc/c/c;->n()Lcom/iflytek/msc/c/c$a;

    move-result-object v0

    sget-object v1, Lcom/iflytek/msc/c/c$a;->h:Lcom/iflytek/msc/c/c$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
