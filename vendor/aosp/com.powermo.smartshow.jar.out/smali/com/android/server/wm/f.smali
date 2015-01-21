.class public Lcom/android/server/wm/f;
.super Lcom/android/server/wm/e;


# instance fields
.field a:Lcom/android/server/wm/a;

.field b:I

.field final c:Landroid/content/Context;

.field d:I

.field e:Lcom/android/server/wm/a;

.field f:Landroid/os/Handler;

.field g:Z

.field h:Lcom/android/server/wm/WindowManagerService;

.field final i:Landroid/view/SurfaceSession;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceSession;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/e;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceSession;)V

    iput-boolean v0, p0, Lcom/android/server/wm/f;->l:Z

    iput-boolean v0, p0, Lcom/android/server/wm/f;->g:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/f;->b:I

    new-instance v0, Lcom/android/server/wm/g;

    invoke-direct {v0, p0}, Lcom/android/server/wm/g;-><init>(Lcom/android/server/wm/f;)V

    iput-object v0, p0, Lcom/android/server/wm/f;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/wm/h;

    invoke-direct {v0, p0}, Lcom/android/server/wm/h;-><init>(Lcom/android/server/wm/f;)V

    iput-object v0, p0, Lcom/android/server/wm/f;->k:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/wm/f;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/f;->h:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/wm/f;->i:Landroid/view/SurfaceSession;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/f;->f:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/a;

    invoke-direct {v0}, Lcom/android/server/wm/a;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/f;->e:Lcom/android/server/wm/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/f;->a:Lcom/android/server/wm/a;

    return-void
.end method

.method static synthetic a(Lcom/android/server/wm/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/f;->c()V

    return-void
.end method

.method private b()Lcom/android/server/wm/a;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/f;->a:Lcom/android/server/wm/a;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/f;->h:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/f;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/f;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wm/f;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private c(Z)V
    .locals 7

    iget v0, p0, Lcom/android/server/wm/f;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/wm/f;->e:Lcom/android/server/wm/a;

    iput-object v0, p0, Lcom/android/server/wm/f;->a:Lcom/android/server/wm/a;

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/android/server/wm/c;

    iget-object v1, p0, Lcom/android/server/wm/f;->h:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/f;->i:Landroid/view/SurfaceSession;

    iget v3, p0, Lcom/android/server/wm/f;->d:I

    iget v4, p0, Lcom/android/server/wm/f;->b:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/c;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceSession;II)V

    iput-object v0, p0, Lcom/android/server/wm/f;->a:Lcom/android/server/wm/a;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/server/wm/d;

    iget-object v1, p0, Lcom/android/server/wm/f;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/f;->h:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/f;->i:Landroid/view/SurfaceSession;

    iget v4, p0, Lcom/android/server/wm/f;->d:I

    iget v5, p0, Lcom/android/server/wm/f;->b:I

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/d;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceSession;IIZ)V

    iput-object v0, p0, Lcom/android/server/wm/f;->a:Lcom/android/server/wm/a;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/f;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/f;->b()Lcom/android/server/wm/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/a;->d()V

    iget-object v0, p0, Lcom/android/server/wm/f;->h:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/f;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/f;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/f;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/f;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/android/server/wm/f;->b()Lcom/android/server/wm/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/f;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/f;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/f;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/f;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public a(IIZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/f;->h:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/f;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/f;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "SmartShowAnimationImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Has locked or started, should not lock again lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/f;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " started:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/f;->l:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/f;->g:Z

    iput p2, p0, Lcom/android/server/wm/f;->b:I

    iput p1, p0, Lcom/android/server/wm/f;->d:I

    if-nez p3, :cond_2

    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/server/wm/f;->c(Z)V

    invoke-direct {p0}, Lcom/android/server/wm/f;->b()Lcom/android/server/wm/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/a;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p3, :cond_3

    :try_start_2
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    if-nez p3, :cond_4

    :try_start_3
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public a(Landroid/view/IApplicationToken;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/f;->h:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    if-nez p3, :cond_0

    :try_start_0
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wm/f;->b()Lcom/android/server/wm/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/a;->a(Landroid/view/IApplicationToken;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_1

    :try_start_2
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    if-nez p3, :cond_2

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public a(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wm/f;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/f;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/f;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/f;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/android/server/wm/f;->g:Z

    iput-boolean v2, p0, Lcom/android/server/wm/f;->l:Z

    invoke-direct {p0}, Lcom/android/server/wm/f;->b()Lcom/android/server/wm/a;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    :cond_0
    if-eqz v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/f;->b()Lcom/android/server/wm/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/f;->a:Lcom/android/server/wm/a;

    return-void

    :catchall_0
    move-exception v0

    if-nez p1, :cond_3

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_3
    throw v0
.end method

.method public b(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/f;->h:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/f;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/f;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "SmartShowAnimationImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not locked or started, should not unlock again lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/f;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " started:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/f;->l:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/f;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/f;->l:Z

    if-nez p1, :cond_2

    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wm/f;->b()Lcom/android/server/wm/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/a;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_3

    :try_start_2
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, Lcom/android/server/wm/f;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-nez p1, :cond_4

    :try_start_3
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getTransformation(Ljava/lang/Object;)Landroid/view/animation/Transformation;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/f;->b()Lcom/android/server/wm/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/a;->a(Ljava/lang/Object;)Landroid/view/animation/Transformation;

    move-result-object v0

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/f;->b()Lcom/android/server/wm/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/f;->b()Lcom/android/server/wm/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/a;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public rotationChanged(IZ)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/f;->a(Z)V

    return-void
.end method

.method public stepAnimationLocked(J)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/f;->b()Lcom/android/server/wm/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/a;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/f;->a(Z)V

    :cond_0
    return v0
.end method

.method public updateAfterLayoutLocked()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/f;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/f;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/f;->b()Lcom/android/server/wm/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/f;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/f;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/f;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v0
.end method

.method public updateSurfacesInTransaction()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/f;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/f;->b()Lcom/android/server/wm/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/a;->g()V

    goto :goto_0
.end method
