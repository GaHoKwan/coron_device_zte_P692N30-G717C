.class public Lzte/com/cn/driverMode/service/DMService$StartActivityFromHome;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMService$StartActivityFromHome;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "DMService"

    const-string v1, "StartActivityFromHome --- >onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bStartMusicActivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMService$StartActivityFromHome;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMService$StartActivityFromHome;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    invoke-virtual {v1}, Lzte/com/cn/driverMode/service/ca;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StartActivityFromHome;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/ca;->a(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StartActivityFromHome;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ca;->f()V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StartActivityFromHome;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StartActivityFromHome;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/l;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StartActivityFromHome;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/l;->c()Z

    :cond_1
    return-void
.end method