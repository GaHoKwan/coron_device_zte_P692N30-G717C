.class public final Lcom/nuance/dragon/toolkit/util/internal/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/LinkedList;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private d:Lcom/nuance/dragon/toolkit/util/internal/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->a:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/util/internal/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/util/internal/a;)Lcom/nuance/dragon/toolkit/util/internal/a$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->d:Lcom/nuance/dragon/toolkit/util/internal/a$a;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/util/internal/a;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/util/internal/a;)Lcom/nuance/dragon/toolkit/util/internal/a$a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->d:Lcom/nuance/dragon/toolkit/util/internal/a$a;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/util/internal/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->c:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->d:Lcom/nuance/dragon/toolkit/util/internal/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->d:Lcom/nuance/dragon/toolkit/util/internal/a$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/util/internal/a$a;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->d:Lcom/nuance/dragon/toolkit/util/internal/a$a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/nuance/dragon/toolkit/util/internal/a$b;)V
    .locals 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->a:Ljava/util/LinkedList;

    new-instance v3, Lcom/nuance/dragon/toolkit/util/internal/a$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/nuance/dragon/toolkit/util/internal/a$1;-><init>(Lcom/nuance/dragon/toolkit/util/internal/a;Lcom/nuance/dragon/toolkit/util/internal/a$b;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->d:Lcom/nuance/dragon/toolkit/util/internal/a$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/a$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/nuance/dragon/toolkit/util/internal/a$a;-><init>(Lcom/nuance/dragon/toolkit/util/internal/a;B)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->d:Lcom/nuance/dragon/toolkit/util/internal/a$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->d:Lcom/nuance/dragon/toolkit/util/internal/a$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/util/internal/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 5

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->d:Lcom/nuance/dragon/toolkit/util/internal/a$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/a$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/nuance/dragon/toolkit/util/internal/a$a;-><init>(Lcom/nuance/dragon/toolkit/util/internal/a;B)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->d:Lcom/nuance/dragon/toolkit/util/internal/a$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a;->d:Lcom/nuance/dragon/toolkit/util/internal/a$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/util/internal/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
