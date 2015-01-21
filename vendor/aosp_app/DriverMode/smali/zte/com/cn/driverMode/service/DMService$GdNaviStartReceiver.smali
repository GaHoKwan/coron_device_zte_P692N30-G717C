.class public Lzte/com/cn/driverMode/service/DMService$GdNaviStartReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "DMService"

    const-string v1, "receiver navigation start broadcast!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviStartReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lzte/com/cn/driverMode/service/DMService;->aD:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviStartReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviStartReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/l;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviStartReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->p()V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviStartReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "zte.com.cn.driverMode.navi.LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
