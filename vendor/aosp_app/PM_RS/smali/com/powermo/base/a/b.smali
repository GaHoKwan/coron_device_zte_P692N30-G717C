.class public final Lcom/powermo/base/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/powermo/base/i;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/HashMap;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/lang/Object;

.field private e:Lcom/powermo/base/a/c;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MemoryRegistry"

    invoke-static {v0}, Lcom/powermo/base/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powermo/base/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powermo/base/a/b;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powermo/base/a/b;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powermo/base/a/b;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/base/a/b;->e:Lcom/powermo/base/a/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/base/a/b;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/powermo/base/a/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/powermo/base/a/b;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/base/a/b;->e:Lcom/powermo/base/a/c;

    invoke-virtual {v0, p1}, Lcom/powermo/base/a/c;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/powermo/base/a/b;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/base/a/b;->f:Z

    return v0
.end method

.method private d()Z
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/powermo/base/a/b;->e:Lcom/powermo/base/a/c;

    invoke-virtual {v2}, Lcom/powermo/base/a/c;->getId()J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/powermo/base/b;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/base/a/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/base/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/powermo/base/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/base/d;

    invoke-interface {v0}, Lcom/powermo/base/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/powermo/base/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method protected final a(Lcom/powermo/base/a/d;)V
    .locals 10

    iget-object v0, p1, Lcom/powermo/base/a/d;->b:Lcom/powermo/base/b;

    invoke-virtual {v0}, Lcom/powermo/base/b;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/powermo/base/a/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/base/b;

    if-nez v0, :cond_4

    iget-object v5, p1, Lcom/powermo/base/a/d;->b:Lcom/powermo/base/b;

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v5}, Lcom/powermo/base/b;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/powermo/base/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/base/d;

    invoke-interface {v0}, Lcom/powermo/base/d;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_5

    move v9, v1

    move-object v1, v0

    move v0, v9

    :goto_1
    move v2, v0

    move-object v3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v3}, Lcom/powermo/base/b;->a(Lcom/powermo/base/d;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/powermo/base/a/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/powermo/base/b;->e()Lcom/powermo/base/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v5}, Lcom/powermo/base/d;->a(Lcom/powermo/base/b;)V

    :cond_2
    :goto_2
    iget-boolean v0, p1, Lcom/powermo/base/a/d;->c:Z

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/powermo/base/a/d;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p1, Lcom/powermo/base/a/d;->d:Z

    iget-object v0, p1, Lcom/powermo/base/a/d;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    invoke-virtual {v0}, Lcom/powermo/base/b;->c()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/powermo/base/a/d;->b:Lcom/powermo/base/b;

    invoke-virtual {v0, v1}, Lcom/powermo/base/b;->a(Lcom/powermo/base/b;)V

    invoke-virtual {v0}, Lcom/powermo/base/b;->e()Lcom/powermo/base/d;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/powermo/base/d;->b(Lcom/powermo/base/b;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    move v0, v2

    move-object v1, v3

    goto :goto_1
.end method

.method public final a(Lcom/powermo/base/b;Z)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/powermo/base/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/powermo/base/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/powermo/base/a/d;-><init>(Lcom/powermo/base/a/b;Lcom/powermo/base/b;Z)V

    invoke-virtual {p0, v0}, Lcom/powermo/base/a/b;->a(Lcom/powermo/base/a/d;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/powermo/base/a/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/powermo/base/a/d;-><init>(Lcom/powermo/base/a/b;Lcom/powermo/base/b;Z)V

    new-instance v1, Lcom/powermo/base/a/g;

    invoke-direct {v1, p0, v0}, Lcom/powermo/base/a/g;-><init>(Lcom/powermo/base/a/b;Lcom/powermo/base/a/d;)V

    invoke-direct {p0, v1}, Lcom/powermo/base/a/b;->a(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_0

    iget-object v1, v0, Lcom/powermo/base/a/d;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/powermo/base/a/d;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    :try_start_1
    iget-object v2, v0, Lcom/powermo/base/a/d;->a:Ljava/lang/Object;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    iget-boolean v0, v0, Lcom/powermo/base/a/d;->d:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/powermo/base/a/b;->a:Ljava/lang/String;

    const-string v2, "TIMEOUT waiting Registry processor"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final a(Lcom/powermo/base/d;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/powermo/base/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/powermo/base/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lcom/powermo/base/d;->a(Lcom/powermo/base/i;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/powermo/base/h;)V
    .locals 1

    invoke-direct {p0}, Lcom/powermo/base/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/powermo/base/a/b;->c(Ljava/lang/String;Lcom/powermo/base/h;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/powermo/base/a/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/powermo/base/a/e;-><init>(Lcom/powermo/base/a/b;Ljava/lang/String;Lcom/powermo/base/h;)V

    invoke-direct {p0, v0}, Lcom/powermo/base/a/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/powermo/base/a/b;->e:Lcom/powermo/base/a/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powermo/base/a/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/powermo/base/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/powermo/base/a/c;

    invoke-direct {v0, p0, v1}, Lcom/powermo/base/a/c;-><init>(Lcom/powermo/base/a/b;B)V

    iput-object v0, p0, Lcom/powermo/base/a/b;->e:Lcom/powermo/base/a/c;

    iput-boolean v1, p0, Lcom/powermo/base/a/b;->f:Z

    iget-object v0, p0, Lcom/powermo/base/a/b;->e:Lcom/powermo/base/a/c;

    invoke-virtual {v0}, Lcom/powermo/base/a/c;->start()V

    :try_start_0
    iget-object v1, p0, Lcom/powermo/base/a/b;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, Lcom/powermo/base/a/b;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/base/a/b;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcom/powermo/base/h;)V
    .locals 1

    invoke-direct {p0}, Lcom/powermo/base/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/powermo/base/a/b;->d(Ljava/lang/String;Lcom/powermo/base/h;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/powermo/base/a/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/powermo/base/a/f;-><init>(Lcom/powermo/base/a/b;Ljava/lang/String;Lcom/powermo/base/h;)V

    invoke-direct {p0, v0}, Lcom/powermo/base/a/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/base/a/b;->e:Lcom/powermo/base/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powermo/base/a/b;->e:Lcom/powermo/base/a/c;

    invoke-virtual {v0}, Lcom/powermo/base/a/c;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/powermo/base/a/b;->e:Lcom/powermo/base/a/c;

    invoke-virtual {v0}, Lcom/powermo/base/a/c;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/base/a/b;->e:Lcom/powermo/base/a/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/base/a/b;->f:Z

    iget-object v0, p0, Lcom/powermo/base/a/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/base/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powermo/base/b;->j()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/powermo/base/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/powermo/base/a/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final c(Ljava/lang/String;Lcom/powermo/base/h;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/base/a/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/base/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/powermo/base/b;->a(Lcom/powermo/base/h;)V

    :cond_0
    return-void
.end method

.method protected final d(Ljava/lang/String;Lcom/powermo/base/h;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/base/a/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/base/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/powermo/base/b;->b(Lcom/powermo/base/h;)V

    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/powermo/base/a/b;->c()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
