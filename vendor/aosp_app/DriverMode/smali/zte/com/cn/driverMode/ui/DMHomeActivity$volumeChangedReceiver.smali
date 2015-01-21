.class public Lzte/com/cn/driverMode/ui/DMHomeActivity$volumeChangedReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMHomeActivity;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$volumeChangedReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "volumeLevel"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$volumeChangedReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->a(F)V

    return-void
.end method
