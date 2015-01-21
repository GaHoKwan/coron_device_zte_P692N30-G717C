.class final Lzte/com/cn/driverMode/service/ay;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMMusicService;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/DMMusicService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/ay;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ay;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->b(Lzte/com/cn/driverMode/service/DMMusicService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2005

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ay;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMMusicService;->b(Lzte/com/cn/driverMode/service/DMMusicService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
