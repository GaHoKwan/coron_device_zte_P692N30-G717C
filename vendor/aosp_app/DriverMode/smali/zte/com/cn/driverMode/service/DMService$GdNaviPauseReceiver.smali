.class public Lzte/com/cn/driverMode/service/DMService$GdNaviPauseReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviPauseReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "DMService"

    const-string v1, "receiver navigation pause broadcast!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviPauseReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lzte/com/cn/driverMode/service/DMService;->aD:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviPauseReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->m(Lzte/com/cn/driverMode/service/DMService;)V

    return-void
.end method
