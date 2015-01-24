.class final Lcom/powermo/ui/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Landroid/hardware/display/DisplayManager;

.field private d:Lcom/powermo/b/a;

.field private e:Z

.field private f:Lcom/powermo/ui/b;

.field private g:Lcom/powermo/ui/f;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/powermo/ui/b;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/powermo/ui/a;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/powermo/ui/a;->b:Landroid/os/Handler;

    iput-object v1, p0, Lcom/powermo/ui/a;->c:Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/powermo/ui/a;->d:Lcom/powermo/b/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/ui/a;->e:Z

    iput-object v1, p0, Lcom/powermo/ui/a;->f:Lcom/powermo/ui/b;

    iput-object v1, p0, Lcom/powermo/ui/a;->g:Lcom/powermo/ui/f;

    iput-object p1, p0, Lcom/powermo/ui/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/powermo/ui/a;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/powermo/ui/a;->f:Lcom/powermo/ui/b;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Landroid/os/Handler;Lcom/powermo/ui/b;)Lcom/powermo/ui/a;
    .locals 3

    const-class v1, Lcom/powermo/ui/a;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/powermo/ui/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/powermo/ui/a;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/powermo/ui/b;)V

    invoke-direct {v0}, Lcom/powermo/ui/a;->c()V

    iget-boolean v2, v0, Lcom/powermo/ui/a;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/powermo/ui/a;)V
    .locals 2

    const-class v0, Lcom/powermo/ui/a;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/powermo/ui/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Lcom/powermo/ui/a;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/powermo/ui/a;->c:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/powermo/ui/a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/ui/a;->g:Lcom/powermo/ui/f;

    invoke-virtual {v0}, Lcom/powermo/ui/f;->a()V

    iput-object v2, p0, Lcom/powermo/ui/a;->g:Lcom/powermo/ui/f;

    :cond_0
    iput-object v2, p0, Lcom/powermo/ui/a;->c:Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/powermo/ui/a;->d:Lcom/powermo/b/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/ui/a;->e:Z

    return-void
.end method

.method static synthetic c(Lcom/powermo/ui/a;)Lcom/powermo/ui/b;
    .locals 1

    iget-object v0, p0, Lcom/powermo/ui/a;->f:Lcom/powermo/ui/b;

    return-object v0
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/powermo/ui/a;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/powermo/ui/a;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/powermo/ui/a;->b()V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/powermo/ui/a;->a:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/powermo/ui/a;->c:Landroid/hardware/display/DisplayManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/powermo/ui/a;->c:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/powermo/ui/a;->b()V

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/powermo/ui/a;->c:Landroid/hardware/display/DisplayManager;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/powermo/b/a;->a()Lcom/powermo/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/ui/a;->d:Lcom/powermo/b/a;

    iget-object v0, p0, Lcom/powermo/ui/a;->d:Lcom/powermo/b/a;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/powermo/ui/a;->b()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/ui/a;->e:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/powermo/ui/f;

    invoke-direct {v0, p0, v2}, Lcom/powermo/ui/f;-><init>(Lcom/powermo/ui/a;Lcom/powermo/ui/e;)V

    iput-object v0, p0, Lcom/powermo/ui/a;->g:Lcom/powermo/ui/f;

    iget-object v0, p0, Lcom/powermo/ui/a;->g:Lcom/powermo/ui/f;

    invoke-virtual {v0}, Lcom/powermo/ui/f;->b()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/powermo/ui/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/powermo/ui/a;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/view/Surface;II)Landroid/os/IBinder;
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/ui/a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/ui/a;->d:Lcom/powermo/b/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/powermo/b/a;->a(ILandroid/view/Surface;II)Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/powermo/ui/a;->g:Lcom/powermo/ui/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/powermo/ui/a;->g:Lcom/powermo/ui/f;

    invoke-static {v0}, Lcom/powermo/ui/f;->a(Lcom/powermo/ui/f;)Landroid/view/Display;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/powermo/ui/a;->g:Lcom/powermo/ui/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/powermo/ui/a;->g:Lcom/powermo/ui/f;

    invoke-static {v0, p1}, Lcom/powermo/ui/f;->a(Lcom/powermo/ui/f;I)Landroid/view/Display;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/ui/a;->e:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/powermo/ui/a;->d:Lcom/powermo/b/a;

    invoke-virtual {v0, p1}, Lcom/powermo/b/a;->a(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method
