.class Lcom/powermo/SmartBar/cl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:I

.field public b:J

.field final synthetic c:Lcom/powermo/SmartBar/ck;

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/powermo/SmartBar/ck;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/powermo/SmartBar/cl;->c:Lcom/powermo/SmartBar/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/powermo/SmartBar/cl;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/powermo/SmartBar/cl;->b:J

    iput-boolean v2, p0, Lcom/powermo/SmartBar/cl;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/SmartBar/ck;Lcom/powermo/SmartBar/cl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/SmartBar/cl;-><init>(Lcom/powermo/SmartBar/ck;)V

    return-void
.end method

.method private a(II)V
    .locals 13

    const/4 v7, 0x1

    const/4 v8, 0x0

    and-int/lit16 v0, p2, 0x80

    if-nez v0, :cond_0

    move v7, v8

    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    iget-wide v1, p0, Lcom/powermo/SmartBar/cl;->b:J

    invoke-direct {p0}, Lcom/powermo/SmartBar/cl;->b()J

    move-result-wide v3

    iget v6, p0, Lcom/powermo/SmartBar/cl;->a:I

    const/4 v9, -0x1

    or-int/lit8 v11, p2, 0x48

    const/16 v12, 0x101

    move v5, p1

    move v10, v8

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    :try_start_0
    iget-object v1, p0, Lcom/powermo/SmartBar/cl;->c:Lcom/powermo/SmartBar/ck;

    invoke-static {v1}, Lcom/powermo/SmartBar/ck;->b(Lcom/powermo/SmartBar/ck;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/SmartBar/cl;->c:Lcom/powermo/SmartBar/ck;

    invoke-static {v2}, Lcom/powermo/SmartBar/ck;->c(Lcom/powermo/SmartBar/ck;)Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/powermo/SmartBar/cl;->c:Lcom/powermo/SmartBar/ck;

    invoke-static {v4}, Lcom/powermo/SmartBar/ck;->d(Lcom/powermo/SmartBar/ck;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private b(I)V
    .locals 3

    const/4 v2, 0x0

    iput p1, p0, Lcom/powermo/SmartBar/cl;->a:I

    invoke-direct {p0}, Lcom/powermo/SmartBar/cl;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powermo/SmartBar/cl;->b:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/SmartBar/cl;->d:Z

    invoke-direct {p0, v2, v2}, Lcom/powermo/SmartBar/cl;->a(II)V

    iget-object v0, p0, Lcom/powermo/SmartBar/cl;->c:Lcom/powermo/SmartBar/ck;

    invoke-static {v0}, Lcom/powermo/SmartBar/ck;->a(Lcom/powermo/SmartBar/ck;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x258

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lcom/powermo/SmartBar/cl;->d:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/SmartBar/cl;->d:Z

    iget-object v0, p0, Lcom/powermo/SmartBar/cl;->c:Lcom/powermo/SmartBar/ck;

    invoke-static {v0}, Lcom/powermo/SmartBar/ck;->a(Lcom/powermo/SmartBar/ck;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/powermo/SmartBar/cl;->a(II)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/powermo/SmartBar/cl;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/powermo/SmartBar/cl;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/powermo/SmartBar/cl;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/powermo/SmartBar/cl;->a(II)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
