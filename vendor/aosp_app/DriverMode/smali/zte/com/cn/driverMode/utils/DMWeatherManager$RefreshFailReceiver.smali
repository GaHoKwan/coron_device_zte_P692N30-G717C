.class public Lzte/com/cn/driverMode/utils/DMWeatherManager$RefreshFailReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/utils/DMWeatherManager;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMWeatherManager$RefreshFailReceiver;->a:Lzte/com/cn/driverMode/utils/DMWeatherManager;

    iget-object v0, v0, Lzte/com/cn/driverMode/utils/DMWeatherManager;->a:Landroid/os/Handler;

    const/16 v1, 0x4008

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
