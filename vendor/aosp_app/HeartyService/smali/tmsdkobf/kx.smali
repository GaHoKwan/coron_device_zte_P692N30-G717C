.class public Ltmsdkobf/kx;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field private rc:J

.field private sU:Ltmsdkobf/jc$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .parameter "name"
    .parameter "priority"
    .parameter "ident"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-wide p3, p0, Ltmsdkobf/kx;->rc:J

    .line 31
    return-void
.end method

.method private fS()Ltmsdkobf/jc$a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ltmsdkobf/kx;->sU:Ltmsdkobf/jc$a;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Ltmsdkobf/jb;->dU()Ltmsdkobf/jc$a;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/kx;->sU:Ltmsdkobf/jc$a;

    .line 68
    :cond_0
    iget-object v0, p0, Ltmsdkobf/kx;->sU:Ltmsdkobf/jc$a;

    return-object v0
.end method


# virtual methods
.method public dY()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Ltmsdkobf/kx;->rc:J

    return-wide v0
.end method

.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ltmsdkobf/kx;->fS()Ltmsdkobf/jc$a;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Ltmsdkobf/jc$a;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 55
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 57
    invoke-direct {p0}, Ltmsdkobf/kx;->fS()Ltmsdkobf/jc$a;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Ltmsdkobf/jc$a;->b(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltmsdkobf/kx;->fS()Ltmsdkobf/jc$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ltmsdkobf/jc$a;->a(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 43
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
