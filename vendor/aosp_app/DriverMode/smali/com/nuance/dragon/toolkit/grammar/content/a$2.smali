.class final Lcom/nuance/dragon/toolkit/grammar/content/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:La/a/m;

.field final synthetic c:Lcom/nuance/dragon/toolkit/grammar/content/a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/a;ILa/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/a;

    iput p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->a:I

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->b:La/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a(Lcom/nuance/dragon/toolkit/grammar/content/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/a;->c(Lcom/nuance/dragon/toolkit/grammar/content/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/a;

    const-string v2, "Accepting unexpectedly interrupted"

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/a;

    iget v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->a:I

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a(Lcom/nuance/dragon/toolkit/grammar/content/a;I)I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->b:La/a/m;

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a(Lcom/nuance/dragon/toolkit/grammar/content/a;La/a/m;)La/a/m;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/grammar/content/a;->d(Lcom/nuance/dragon/toolkit/grammar/content/a;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->b:La/a/m;

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/grammar/content/a;->b(Lcom/nuance/dragon/toolkit/grammar/content/a;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/a;->e(Lcom/nuance/dragon/toolkit/grammar/content/a;)La/a/m;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/a;->f(Lcom/nuance/dragon/toolkit/grammar/content/a;)Ljava/util/List;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/a;->g(Lcom/nuance/dragon/toolkit/grammar/content/a;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/a;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/content/a$a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->b:La/a/m;

    iget v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->a:I

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/a;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/grammar/content/a;->h(Lcom/nuance/dragon/toolkit/grammar/content/a;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/grammar/content/a$a;-><init>(La/a/m;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a(Lcom/nuance/dragon/toolkit/grammar/content/a;Lcom/nuance/dragon/toolkit/grammar/content/a$a;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
