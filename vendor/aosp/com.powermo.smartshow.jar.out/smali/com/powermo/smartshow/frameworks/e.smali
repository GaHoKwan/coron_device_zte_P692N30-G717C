.class public Lcom/powermo/smartshow/frameworks/e;
.super Lcom/powermo/smartshow/frameworks/b;

# interfaces
.implements Lcom/powermo/smartshow/frameworks/SmartShowManagerService$IFrameworkEventListener;


# instance fields
.field private b:Ljava/util/HashMap;

.field private c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/frameworks/b;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/e;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/e;->c:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService$IFrameworkEventListener;)V

    return-void
.end method

.method private a(Lcom/android/server/wm/i;)I
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/wm/i;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/a;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/e;->b:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/a;->a(I)V

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/am/a;->d()I

    move-result v1

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v3, v3, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v3}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/a;->i()I

    move-result v3

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v4, v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v4}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxLocalScreen()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    invoke-virtual {p0, v2, v0}, Lcom/powermo/smartshow/frameworks/e;->c(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/android/server/am/a;->i()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/powermo/smartshow/frameworks/ad;->c(I)I

    move-result v0

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/powermo/smartshow/frameworks/e;->a(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private a(Lcom/android/server/am/a;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/am/a;->c()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/a;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(IILjava/lang/Object;)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/powermo/smartshow/frameworks/b;->a(IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(ILjava/lang/Object;)I
    .locals 5

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/android/server/wm/i;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/android/server/wm/i;

    invoke-direct {p0, p2}, Lcom/powermo/smartshow/frameworks/e;->a(Lcom/android/server/wm/i;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_4

    instance-of v0, p2, Lcom/android/server/am/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxLocalScreen()I

    move-result v0

    if-ge p1, v0, :cond_4

    move-object v0, p2

    check-cast v0, Lcom/android/server/am/a;

    invoke-virtual {v0}, Lcom/android/server/am/a;->g()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/am/a;->i()I

    move-result v3

    sget v4, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    if-lt v3, v4, :cond_2

    invoke-super {p0, p1, p2}, Lcom/powermo/smartshow/frameworks/b;->a(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/a;->d()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/powermo/smartshow/frameworks/e;->b(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/powermo/smartshow/frameworks/e;->c(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/powermo/smartshow/frameworks/e;->b(ILjava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v2, v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v2, v0}, Lcom/powermo/smartshow/frameworks/ad;->e(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v2, v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v2, v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v2, v0, v1}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getSpecialDisplayId(IZ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/powermo/smartshow/frameworks/b;->a(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 5

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/android/server/am/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/a;

    invoke-virtual {v0}, Lcom/android/server/am/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    const-string v4, "PhyPanel"

    invoke-virtual {v3, v4, v2, v1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/powermo/smartshow/frameworks/b;->a(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->p:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    if-eqz p2, :cond_2

    instance-of v0, p2, Lcom/android/server/am/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    const-string v1, "MULTIINSTANCE_ENABLE"

    invoke-virtual {v0, v1, p1, v3}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p2, Lcom/android/server/am/a;

    invoke-virtual {p2}, Lcom/android/server/am/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    const-string v2, "MULTIINSTANCE_ENABLE"

    invoke-virtual {v1, v2, v3, v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    const-string v1, "MULTIPROCESS_ENABLE"

    invoke-virtual {v0, v1, p1, v3}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/powermo/smartshow/frameworks/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(ILjava/lang/Object;)I
    .locals 3

    if-eqz p2, :cond_2

    instance-of v0, p2, Lcom/android/server/am/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    if-ge p1, v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/android/server/am/a;

    invoke-virtual {v0}, Lcom/android/server/am/a;->c()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/a;->i()I

    move-result v1

    sget v2, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    if-lt v1, v2, :cond_0

    invoke-super {p0, p1, p2}, Lcom/powermo/smartshow/frameworks/b;->b(ILjava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/a;->d()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/powermo/smartshow/frameworks/e;->a(Lcom/android/server/am/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/powermo/smartshow/frameworks/b;->b(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/android/server/am/a;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    check-cast p1, Lcom/android/server/am/a;

    invoke-virtual {p1}, Lcom/android/server/am/a;->d()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/a;->g()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/powermo/smartshow/frameworks/e;->c(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/server/am/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/android/server/am/a;

    invoke-virtual {p1}, Lcom/android/server/am/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/e;->b:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    const-string v6, "SMALLEST_DISPLAY_NEVER"

    invoke-virtual {v5, v6, v4, v3}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x5

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/server/am/a;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    const-string v6, "SameWithDst"

    invoke-virtual {v5, v6, v4, v3}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    const-string v6, "PhyPanel"

    invoke-virtual {v5, v6, v4, v3}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/frameworks/e;->a(Lcom/android/server/am/a;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const/4 v0, 0x4

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    const-string v6, "VirtualPanel"

    invoke-virtual {v5, v6, v4, v3}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/android/server/am/a;->j()Z

    move-result v0

    if-nez v0, :cond_8

    sget v0, Lcom/powermo/smartshow/frameworks/d;->KEEP_AUTO_FIT:I

    if-ne v0, v2, :cond_9

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_1
.end method

.method public d(ILjava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/android/server/am/a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/server/am/a;

    invoke-virtual {v0}, Lcom/android/server/am/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v1, p2}, Lcom/powermo/smartshow/frameworks/b;->a(ILjava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    const-string v4, "REQUEST_ORIENTATION_NEVER"

    invoke-virtual {v3, v4, v0, v2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    instance-of v0, p1, Lcom/android/server/am/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/a;

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v3, v3, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v3, v0}, Lcom/powermo/smartshow/frameworks/l;->a(Lcom/android/server/am/a;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, p1}, Lcom/powermo/smartshow/frameworks/e;->b(ILjava/lang/Object;)I

    move-result v4

    invoke-virtual {p0, v2, v3}, Lcom/powermo/smartshow/frameworks/e;->b(ILjava/lang/Object;)I

    move-result v5

    if-eq v4, v5, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    const-string v6, "SHOULD_KEEP_TRANSLUCENT"

    invoke-virtual {v5, v6, v0, v4}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/powermo/smartshow/frameworks/e;->b(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v3}, Lcom/powermo/smartshow/frameworks/e;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v0, :cond_3

    if-ne v0, v4, :cond_0

    invoke-virtual {p0, v2, p1}, Lcom/powermo/smartshow/frameworks/e;->a(ILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v2, v3}, Lcom/powermo/smartshow/frameworks/e;->a(ILjava/lang/Object;)I

    move-result v3

    if-ne v0, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/powermo/smartshow/frameworks/b;->d(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public e(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/android/server/am/a;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/android/server/am/a;

    invoke-virtual {p1}, Lcom/android/server/am/a;->d()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    if-ne v2, v1, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/server/am/a;->a(I)V

    invoke-virtual {p1}, Lcom/android/server/am/a;->c()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/e;->b:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/e;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    if-ne v2, v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    invoke-virtual {p1}, Lcom/android/server/am/a;->g()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/powermo/smartshow/frameworks/e;->c(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public e(ILjava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    :cond_2
    check-cast p2, Lcom/android/server/SmartShowEvent;

    iget-object v0, p2, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/android/server/am/a;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/android/server/am/a;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/e;->b:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    iget-object v0, p2, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_4

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/e;->b:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_1
    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/e;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_4
    move v0, v2

    goto :goto_0
.end method
