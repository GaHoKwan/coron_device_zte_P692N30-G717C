.class public Lzte/com/cn/driverMode/service/DMService$ConfirmOpenBluetoothReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMService$ConfirmOpenBluetoothReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "action"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMService$ConfirmOpenBluetoothReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/DMService;->d(Ljava/lang/String;)V

    return-void
.end method
