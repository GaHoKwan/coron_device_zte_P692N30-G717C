.class public Lcom/zte/zdm/b/g/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/zte/zdm/b/g/e;

.field private b:Lcom/zte/zdm/d/c/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/b/g/g;

    invoke-direct {v0}, Lcom/zte/zdm/b/g/g;-><init>()V

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/g/d;-><init>(Lcom/zte/zdm/b/g/e;)V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/b/g/e;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/g/d;->a:Lcom/zte/zdm/b/g/e;

    iput-object v0, p0, Lcom/zte/zdm/b/g/d;->b:Lcom/zte/zdm/d/c/m;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "idGenerator cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/b/g/d;->a:Lcom/zte/zdm/b/g/e;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/zte/zdm/d/c/m;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/zte/zdm/d/c/m;

    iget-object v1, p0, Lcom/zte/zdm/b/g/d;->a:Lcom/zte/zdm/b/g/e;

    invoke-interface {v1}, Lcom/zte/zdm/b/g/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/zdm/b/g/d;->b:Lcom/zte/zdm/d/c/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/g/d;->a:Lcom/zte/zdm/b/g/e;

    invoke-interface {v0}, Lcom/zte/zdm/b/g/e;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Lcom/zte/zdm/d/c/m;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/g/d;->b:Lcom/zte/zdm/d/c/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
