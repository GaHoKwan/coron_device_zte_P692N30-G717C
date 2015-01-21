.class public Lcom/powermo/base/p;
.super Lcom/powermo/base/c;


# instance fields
.field private final a:Lcom/powermo/base/n;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Object;

.field private d:Lcom/powermo/base/h;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/powermo/base/c;-><init>()V

    new-instance v0, Lcom/powermo/base/n;

    invoke-direct {v0}, Lcom/powermo/base/n;-><init>()V

    iput-object v0, p0, Lcom/powermo/base/p;->a:Lcom/powermo/base/n;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/base/p;->d:Lcom/powermo/base/h;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/base/p;->e:Z

    iput-object p1, p0, Lcom/powermo/base/p;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/powermo/base/p;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/powermo/base/p;->a:Lcom/powermo/base/n;

    iget-object v1, p0, Lcom/powermo/base/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/powermo/base/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/base/p;->c:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public a(Lcom/powermo/base/e;)V
    .locals 2

    iget-object v1, p0, Lcom/powermo/base/p;->d:Lcom/powermo/base/h;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/powermo/base/h;->c(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/powermo/base/e;->g()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/powermo/base/h;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/powermo/base/p;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powermo/base/p;->a:Lcom/powermo/base/n;

    iget-object v1, p0, Lcom/powermo/base/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/powermo/base/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/base/p;->a:Lcom/powermo/base/n;

    iget-object v1, p0, Lcom/powermo/base/p;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/powermo/base/p;->c:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/powermo/base/n;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/powermo/base/p;->a:Lcom/powermo/base/n;

    iget-object v1, p0, Lcom/powermo/base/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/powermo/base/n;->a(Ljava/lang/String;Lcom/powermo/base/c;)V

    iput-object p1, p0, Lcom/powermo/base/p;->d:Lcom/powermo/base/h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/base/p;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Object;Z)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/base/p;->a:Lcom/powermo/base/n;

    iget-object v1, p0, Lcom/powermo/base/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/powermo/base/n;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/powermo/base/p;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/base/p;->a:Lcom/powermo/base/n;

    iget-object v1, p0, Lcom/powermo/base/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/powermo/base/n;->b(Ljava/lang/String;Lcom/powermo/base/c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/base/p;->d:Lcom/powermo/base/h;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/base/p;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/powermo/base/e;)V
    .locals 2

    iget-object v1, p0, Lcom/powermo/base/p;->d:Lcom/powermo/base/h;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/powermo/base/h;->b(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/powermo/base/e;->g()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Lcom/powermo/base/e;)V
    .locals 2

    iget-object v1, p0, Lcom/powermo/base/p;->d:Lcom/powermo/base/h;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/powermo/base/h;->b(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/powermo/base/e;->g()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
