.class Lcom/zte/zdm/b/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/zte/zdm/b/a;

.field private b:Lcom/zte/zdm/b/e/a;


# direct methods
.method private constructor <init>(Lcom/zte/zdm/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/c;->a:Lcom/zte/zdm/b/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/zdm/b/a;Lcom/zte/zdm/b/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c;-><init>(Lcom/zte/zdm/b/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c;->a:Lcom/zte/zdm/b/a;

    invoke-static {v0}, Lcom/zte/zdm/b/a;->d(Lcom/zte/zdm/b/a;)Lcom/zte/zdm/b/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/c;->a()Lcom/zte/zdm/b/e/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/e/b;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/zte/zdm/b/e/b;->e(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/zte/zdm/b/e/b;->a([B)V

    invoke-direct {p0}, Lcom/zte/zdm/b/c;->b()V

    return-void
.end method

.method private b()V
    .locals 0

    return-void
.end method

.method private declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/c;->b:Lcom/zte/zdm/b/e/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "run session instance can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zte/zdm/b/c;->a:Lcom/zte/zdm/b/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Engine is busy now,please try again later..."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/zte/zdm/b/c;->a:Lcom/zte/zdm/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zte/zdm/b/a;->a(Lcom/zte/zdm/b/a;Z)V

    iget-object v0, p0, Lcom/zte/zdm/b/c;->b:Lcom/zte/zdm/b/e/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a;->g()V

    invoke-virtual {p0}, Lcom/zte/zdm/b/c;->a()V

    iget-object v0, p0, Lcom/zte/zdm/b/c;->a:Lcom/zte/zdm/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/zdm/b/a;->a(Lcom/zte/zdm/b/a;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "destroyAllSession()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/c;->a:Lcom/zte/zdm/b/a;

    invoke-static {v0}, Lcom/zte/zdm/b/a;->d(Lcom/zte/zdm/b/a;)Lcom/zte/zdm/b/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/c;->d()V

    return-void
.end method

.method public declared-synchronized a(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "into loadTransportAgentConfiguration()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/c;->a:Lcom/zte/zdm/b/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->p()V

    iget-object v0, p0, Lcom/zte/zdm/b/c;->a:Lcom/zte/zdm/b/a;

    invoke-static {v0}, Lcom/zte/zdm/b/a;->d(Lcom/zte/zdm/b/a;)Lcom/zte/zdm/b/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/c;->a:Lcom/zte/zdm/b/a;

    invoke-static {v1}, Lcom/zte/zdm/b/a;->a(Lcom/zte/zdm/b/a;)Lcom/zte/zdm/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c;->a:Lcom/zte/zdm/b/a;

    invoke-static {v2}, Lcom/zte/zdm/b/a;->b(Lcom/zte/zdm/b/a;)Lcom/zte/zdm/d/a/f;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/b/c;->a:Lcom/zte/zdm/b/a;

    invoke-static {v3}, Lcom/zte/zdm/b/a;->c(Lcom/zte/zdm/b/a;)Lcom/zte/zdm/b/b/a;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/zte/zdm/b/e/c;->a(ILcom/zte/zdm/b/e;Lcom/zte/zdm/d/a/k;Lcom/zte/zdm/b/b/a;)Lcom/zte/zdm/b/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/c;->b:Lcom/zte/zdm/b/e/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSession(int sessionType) instance with session type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/zte/zdm/b/c;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/c;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSession(int sessionType, String alertType, String alertData) instance with session type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
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
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/b/c;->c()V

    return-void
.end method
