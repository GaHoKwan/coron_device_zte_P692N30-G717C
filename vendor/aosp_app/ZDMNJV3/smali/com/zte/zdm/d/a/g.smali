.class public Lcom/zte/zdm/d/a/g;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/zte/zdm/d/a/f;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/d/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/a/g;->a:Lcom/zte/zdm/d/a/f;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/d/a/g;->a:Lcom/zte/zdm/d/a/f;

    invoke-static {v0}, Lcom/zte/zdm/d/a/f;->a(Lcom/zte/zdm/d/a/f;)J

    move-result-wide v0

    return-wide v0
.end method

.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An IO operation did not complete before the maximum allowed time ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/d/a/g;->a:Lcom/zte/zdm/d/a/f;

    invoke-static {v1}, Lcom/zte/zdm/d/a/f;->a(Lcom/zte/zdm/d/a/f;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] msecs.IOTimeout is true, and will clean stream."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/d/a/g;->a:Lcom/zte/zdm/d/a/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zte/zdm/d/a/f;->a(Lcom/zte/zdm/d/a/f;Z)Z

    iget-object v0, p0, Lcom/zte/zdm/d/a/g;->a:Lcom/zte/zdm/d/a/f;

    invoke-static {v0}, Lcom/zte/zdm/d/a/f;->b(Lcom/zte/zdm/d/a/f;)V

    iget-object v0, p0, Lcom/zte/zdm/d/a/g;->a:Lcom/zte/zdm/d/a/f;

    invoke-static {v0}, Lcom/zte/zdm/d/a/f;->c(Lcom/zte/zdm/d/a/f;)Lcom/zte/zdm/g/e;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/d/a/g;->a:Lcom/zte/zdm/d/a/f;

    invoke-static {v0}, Lcom/zte/zdm/d/a/f;->c(Lcom/zte/zdm/d/a/f;)Lcom/zte/zdm/g/e;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b;->b(Lcom/zte/zdm/g/e;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
