.class public Lzte/com/cn/driverMode/service/DMNaviStartReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    invoke-direct {v0, p1}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    const-string v1, "Start_by_Navi"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.driverMode.startDMService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method
