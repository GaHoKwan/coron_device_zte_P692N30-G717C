.class final Lzte/com/cn/driverMode/service/bk;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/bk;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bk;->a:Lzte/com/cn/driverMode/service/DMService;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    iget-object v2, p0, Lzte/com/cn/driverMode/service/bk;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->u:Lzte/com/cn/driverMode/service/by;

    const-string v3, "join_ue"

    invoke-virtual {v2, v3, v4}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bk;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->bc:Ljava/lang/String;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/bk;->a:Lzte/com/cn/driverMode/service/DMService;

    const v3, 0x7f0803a6

    invoke-virtual {v1, v3}, Lzte/com/cn/driverMode/service/DMService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bk;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/service/DMService;->bt:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bk;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lcom/b/b/a/d;->a(Landroid/content/Context;)V

    new-instance v0, Lzte/com/cn/driverMode/service/bt;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/bk;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/service/bt;-><init>(Lzte/com/cn/driverMode/service/DMService;)V

    invoke-static {v0}, Lcom/b/b/a/d;->a(Lcom/b/b/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
