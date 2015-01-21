.class public Lcom/powermo/smartshow/frameworks/test/b;
.super Lcom/powermo/smartshow/frameworks/test/TestCase;


# instance fields
.field a:I

.field b:Ljava/util/HashMap;

.field c:Ljava/util/HashMap;

.field d:Ljava/util/HashMap;

.field private k:Lcom/android/server/SmartShowEvent;

.field private l:Ljava/lang/String;

.field private m:Lcom/powermo/smartshow/frameworks/test/h;

.field private n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Lcom/powermo/smartshow/frameworks/test/f;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/powermo/smartshow/frameworks/test/c;

    invoke-direct {v0, p2}, Lcom/powermo/smartshow/frameworks/test/c;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/powermo/smartshow/frameworks/test/TestCase;-><init>(Landroid/content/Context;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Lcom/powermo/smartshow/frameworks/test/f;Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;)V

    const-string v0, "AutoFitTestCase"

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->n:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->c:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/test/b;->k:Lcom/android/server/SmartShowEvent;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/test/b;->m:Lcom/powermo/smartshow/frameworks/test/h;

    const/4 v0, -0x1

    iput v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->a:I

    invoke-static {p1, p2}, Lcom/powermo/smartshow/frameworks/test/h;->a(Landroid/content/Context;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Lcom/powermo/smartshow/frameworks/test/h;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->m:Lcom/powermo/smartshow/frameworks/test/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Lcom/powermo/smartshow/frameworks/test/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/powermo/smartshow/frameworks/test/b;-><init>(Landroid/content/Context;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Lcom/powermo/smartshow/frameworks/test/f;)V

    iput-object p4, p0, Lcom/powermo/smartshow/frameworks/test/b;->l:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/android/server/am/a;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/a;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/b;->h:Lcom/powermo/smartshow/frameworks/test/f;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/powermo/smartshow/frameworks/test/f;->a(Lcom/android/server/am/a;Z)Lcom/powermo/smartshow/frameworks/test/a;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lcom/powermo/smartshow/frameworks/test/a;->b:I

    iput-object p2, v1, Lcom/powermo/smartshow/frameworks/test/a;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/test/b;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/powermo/smartshow/frameworks/test/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/test/b;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0
.end method

.method private h()V
    .locals 5

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/b;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/test/b;->m:Lcom/powermo/smartshow/frameworks/test/h;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/test/a;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/powermo/smartshow/frameworks/test/h;->a(Lcom/powermo/smartshow/frameworks/test/a;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/test/b;->m:Lcom/powermo/smartshow/frameworks/test/h;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/test/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/powermo/smartshow/frameworks/test/h;->a(Lcom/powermo/smartshow/frameworks/test/a;Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/test/b;->m:Lcom/powermo/smartshow/frameworks/test/h;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/test/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/powermo/smartshow/frameworks/test/h;->a(Lcom/powermo/smartshow/frameworks/test/a;Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/powermo/smartshow/frameworks/test/TestCase;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/b;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->k:Lcom/android/server/SmartShowEvent;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->k:Lcom/android/server/SmartShowEvent;

    iget-object v0, v0, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/a;

    invoke-direct {p0, v0, p1}, Lcom/powermo/smartshow/frameworks/test/b;->a(Lcom/android/server/am/a;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->j:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->j:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->startIdleActivityLocked(I)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/powermo/smartshow/frameworks/test/TestCase;->b()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 1

    invoke-super {p0}, Lcom/powermo/smartshow/frameworks/test/TestCase;->c()V

    invoke-direct {p0}, Lcom/powermo/smartshow/frameworks/test/b;->h()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->a:I

    return-void
.end method

.method public d()V
    .locals 5

    invoke-super {p0}, Lcom/powermo/smartshow/frameworks/test/TestCase;->d()V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/b;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->k:Lcom/android/server/SmartShowEvent;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->k:Lcom/android/server/SmartShowEvent;

    iget-object v0, v0, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/a;

    invoke-virtual {v0}, Lcom/android/server/am/a;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/test/b;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/test/b;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/test/b;->h:Lcom/powermo/smartshow/frameworks/test/f;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/powermo/smartshow/frameworks/test/f;->a(Lcom/android/server/am/a;Z)Lcom/powermo/smartshow/frameworks/test/a;

    move-result-object v0

    const/4 v3, 0x2

    iput v3, v0, Lcom/powermo/smartshow/frameworks/test/a;->b:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/test/b;->j:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v3}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/powermo/smartshow/frameworks/test/a;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/test/b;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/powermo/smartshow/frameworks/test/a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/test/b;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected e()V
    .locals 4

    :goto_0
    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/test/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/b;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    invoke-direct {p0}, Lcom/powermo/smartshow/frameworks/test/b;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "AutoFitTestCase"

    const-string v3, "exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_0
    return-void
.end method

.method public e(ILjava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    check-cast p2, Lcom/android/server/SmartShowEvent;

    invoke-virtual {p2}, Lcom/android/server/SmartShowEvent;->getScreen()I

    move-result v0

    if-nez v0, :cond_0

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/test/b;->n:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object p2, p0, Lcom/powermo/smartshow/frameworks/test/b;->k:Lcom/android/server/SmartShowEvent;

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    iget-object v0, p2, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/a;

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/test/b;->n:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    const-string v4, "app crashed"

    invoke-direct {p0, v0, v4}, Lcom/powermo/smartshow/frameworks/test/b;->a(Lcom/android/server/am/a;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :goto_1
    iget-object v0, p2, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/a;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/test/b;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/test/b;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/test/b;->h:Lcom/powermo/smartshow/frameworks/test/f;

    invoke-virtual {v4, v0, v1}, Lcom/powermo/smartshow/frameworks/test/f;->a(Lcom/android/server/am/a;Z)Lcom/powermo/smartshow/frameworks/test/a;

    move-result-object v0

    iput v2, v0, Lcom/powermo/smartshow/frameworks/test/a;->b:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/powermo/smartshow/frameworks/test/a;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/test/b;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/powermo/smartshow/frameworks/test/a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/b;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/test/b;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_4
    invoke-virtual {p2}, Lcom/android/server/SmartShowEvent;->getTaskId()I

    move-result v0

    iget v1, p0, Lcom/powermo/smartshow/frameworks/test/b;->a:I

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/b;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v3, 0x1e

    if-le v1, v3, :cond_6

    :cond_5
    iput v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->a:I

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/b;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/b;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :cond_6
    move v0, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_7
    const/4 v0, 0x5

    if-ne p1, v0, :cond_8

    iget-object v0, p2, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/a;

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/test/b;->n:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    const-string v4, "app died"

    invoke-direct {p0, v0, v4}, Lcom/powermo/smartshow/frameworks/test/b;->a(Lcom/android/server/am/a;Ljava/lang/String;)V

    monitor-exit v3

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_8
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    move v0, v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/test/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isRunning:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/test/b;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
