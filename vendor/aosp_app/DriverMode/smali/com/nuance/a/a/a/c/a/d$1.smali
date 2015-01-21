.class final Lcom/nuance/a/a/a/c/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/a/a/a/c/a/c$a;


# instance fields
.field private synthetic a:Lcom/nuance/a/a/a/c/a/d;


# direct methods
.method constructor <init>(Lcom/nuance/a/a/a/c/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/a/a/a/c/a/d$1;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/nuance/a/a/a/c/a/d;->c()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/a/a/a/c/a/d;->c()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    const-string v1, "BluetoothHeadsetOEM reflected onServiceConnected()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->c(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$1;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->a(Lcom/nuance/a/a/a/c/a/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$1;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->b(Lcom/nuance/a/a/a/c/a/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$1;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->c(Lcom/nuance/a/a/a/c/a/d;)Z

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$1;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->a(Lcom/nuance/a/a/a/c/a/d;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$1;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->d(Lcom/nuance/a/a/a/c/a/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/nuance/a/a/a/c/a/d;->c()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/a/a/a/c/a/d;->c()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    const-string v1, "BluetoothHeadsetOEM reflected onServiceDisconnected()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->c(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$1;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->a(Lcom/nuance/a/a/a/c/a/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$1;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->d(Lcom/nuance/a/a/a/c/a/d;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$1;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->b(Lcom/nuance/a/a/a/c/a/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$1;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->c(Lcom/nuance/a/a/a/c/a/d;)Z

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$1;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->a(Lcom/nuance/a/a/a/c/a/d;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
