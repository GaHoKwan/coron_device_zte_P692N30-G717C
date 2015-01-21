.class final Lzte/com/cn/driverMode/ui/av;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMHomeActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/av;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/av;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->I:Lzte/com/cn/driverMode/ui/aw;

    const/16 v1, 0x4051

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/aw;->sendEmptyMessage(I)Z

    return-void
.end method
