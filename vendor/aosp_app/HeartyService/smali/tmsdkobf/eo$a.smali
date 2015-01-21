.class final Ltmsdkobf/eo$a;
.super Ltmsdkobf/eo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/eo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private kW:Z

.field private lc:Ljava/util/concurrent/ScheduledExecutorService;

.field private ld:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ltmsdkobf/eo;-><init>()V

    .line 62
    iput-object v0, p0, Ltmsdkobf/eo$a;->lc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 63
    iput-object v0, p0, Ltmsdkobf/eo$a;->ld:Landroid/util/SparseArray;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdkobf/eo$a;->kW:Z

    .line 69
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/eo$a;->lc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ltmsdkobf/eo$a;->ld:Landroid/util/SparseArray;

    .line 71
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(ILjava/lang/Runnable;JJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x2710

    const-wide/16 v2, 0x0

    .line 94
    monitor-enter p0

    if-nez p2, :cond_1

    .line 101
    :try_start_0
    const-string v0, "rqdp{  task runner should not be null}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    :cond_1
    cmp-long v4, p3, v2

    if-lez v4, :cond_2

    move-wide v2, p3

    .line 105
    :cond_2
    :try_start_1
    sget-boolean v4, Ltmsdkobf/eo$a;->a:Z

    if-eqz v4, :cond_4

    .line 106
    cmp-long v4, p5, v0

    if-lez v4, :cond_3

    :goto_1
    move-wide v4, p5

    .line 108
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ltmsdkobf/eo$a;->b(IZ)V

    .line 110
    iget-object v0, p0, Ltmsdkobf/eo$a;->lc:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 113
    const-string v1, "rqdp{  add a new future! taskId} %d ,rqdp{   periodTime} %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v1, p0, Ltmsdkobf/eo$a;->ld:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-wide p5, v0

    .line 106
    goto :goto_1

    :cond_4
    move-wide v4, p5

    goto :goto_2
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    monitor-enter p0

    if-nez p1, :cond_0

    .line 83
    :try_start_0
    const-string v0, "rqdp{  task runner should not be null}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :goto_0
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    iget-object v0, p0, Ltmsdkobf/eo$a;->lc:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 158
    monitor-enter p0

    if-nez p1, :cond_0

    .line 165
    :try_start_0
    const-string v0, "rqdp{  task runner should not be null}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_0
    monitor-exit p0

    return-void

    .line 169
    :cond_0
    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 170
    :goto_1
    :try_start_1
    iget-object v0, p0, Ltmsdkobf/eo$a;->lc:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-wide p2, v0

    .line 169
    goto :goto_1
.end method

.method public final declared-synchronized b(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/eo$a;->ld:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 129
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    const-string v1, "cancel a old future!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 134
    :cond_0
    iget-object v0, p0, Ltmsdkobf/eo$a;->ld:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
