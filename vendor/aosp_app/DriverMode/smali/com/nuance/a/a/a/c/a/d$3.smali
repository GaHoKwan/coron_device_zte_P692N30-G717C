.class final Lcom/nuance/a/a/a/c/a/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private synthetic a:Lcom/nuance/a/a/a/c/a/d;


# direct methods
.method constructor <init>(Lcom/nuance/a/a/a/c/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/a/a/a/c/a/d$3;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/nuance/a/a/a/c/a/d;->c()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/a/a/a/c/a/d;->c()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    const-string v1, "BluetoothHeadsetOEM native onServiceConnected()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->c(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$3;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->a(Lcom/nuance/a/a/a/c/a/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$3;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->b(Lcom/nuance/a/a/a/c/a/d;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$3;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->c(Lcom/nuance/a/a/a/c/a/d;)Z

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$3;->a:Lcom/nuance/a/a/a/c/a/d;

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-static {v0, v2}, Lcom/nuance/a/a/a/c/a/d;->a(Lcom/nuance/a/a/a/c/a/d;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$3;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->a(Lcom/nuance/a/a/a/c/a/d;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_0
    monitor-exit v1

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$3;->a:Lcom/nuance/a/a/a/c/a/d;

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-static {v0, v2}, Lcom/nuance/a/a/a/c/a/d;->b(Lcom/nuance/a/a/a/c/a/d;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nuance/a/a/a/c/a/d;->c()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/nuance/a/a/a/c/a/d;->c()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    const-string v1, "BluetoothHeadsetOEM native onServiceDisconnected()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->c(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$3;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->a(Lcom/nuance/a/a/a/c/a/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$3;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->b(Lcom/nuance/a/a/a/c/a/d;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$3;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->c(Lcom/nuance/a/a/a/c/a/d;)Z

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d$3;->a:Lcom/nuance/a/a/a/c/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/d;->a(Lcom/nuance/a/a/a/c/a/d;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method