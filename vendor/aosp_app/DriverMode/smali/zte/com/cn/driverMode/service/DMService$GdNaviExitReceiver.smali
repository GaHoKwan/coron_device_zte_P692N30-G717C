.class public Lzte/com/cn/driverMode/service/DMService$GdNaviExitReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviExitReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviExitReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iput-boolean v3, v0, Lzte/com/cn/driverMode/service/DMService;->aD:Z

    const-string v0, "DMService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GdNaviExitReceiver, the boradcast is :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.autonavi.xmgd.navigator.broadcast.APP_EXIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviExitReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/service/DMService;->bh:Z

    if-eqz v0, :cond_0

    const-string v0, "DMService"

    const-string v1, "start by navi ..and exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviExitReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iput-boolean v3, v0, Lzte/com/cn/driverMode/service/DMService;->bh:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviExitReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "zte.com.cn.driverMode.exit_application"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviExitReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "zte.com.cn.driverMode.navi.QUITE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
