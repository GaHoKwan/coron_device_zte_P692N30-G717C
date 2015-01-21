.class public Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$switchHighlightReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$switchHighlightReceiver;->a:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zte.com.cn.driverMode.SwitchHighlight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DMSelectAddressActivity"

    const-string v1, "switchHighlightReceiver -- onReceive!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$switchHighlightReceiver;->a:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->a(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)Lzte/com/cn/driverMode/ui/a;

    move-result-object v0

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lzte/com/cn/driverMode/ui/a;->g:I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$switchHighlightReceiver;->a:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->a(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)Lzte/com/cn/driverMode/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
