.class public Lzte/com/cn/driverMode/ui/DMHomeActivity$QuitLaunchReceier;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMHomeActivity;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$QuitLaunchReceier;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "DMHomeActivity"

    const-string v1, "Receiv the carmodeexitreceiver!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$QuitLaunchReceier;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->d()V

    return-void
.end method
