.class final Lzte/com/cn/driverMode/ui/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMBluetoothNoticeDialog;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMBluetoothNoticeDialog;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/l;->a:Lzte/com/cn/driverMode/ui/DMBluetoothNoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/l;->a:Lzte/com/cn/driverMode/ui/DMBluetoothNoticeDialog;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMBluetoothNoticeDialog;->finish()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "zte.com.cn.driverMode.ConfirmOpenBluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action"

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/l;->a:Lzte/com/cn/driverMode/ui/DMBluetoothNoticeDialog;

    iget-object v2, v2, Lzte/com/cn/driverMode/ui/DMBluetoothNoticeDialog;->j:Landroid/content/Context;

    const v3, 0x7f080207

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/l;->a:Lzte/com/cn/driverMode/ui/DMBluetoothNoticeDialog;

    iget-object v1, v1, Lzte/com/cn/driverMode/ui/DMBluetoothNoticeDialog;->j:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method