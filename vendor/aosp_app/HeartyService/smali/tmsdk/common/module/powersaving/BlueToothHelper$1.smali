.class Ltmsdk/common/module/powersaving/BlueToothHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/powersaving/BlueToothHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AN:Ltmsdk/common/module/powersaving/BlueToothHelper;


# direct methods
.method constructor <init>(Ltmsdk/common/module/powersaving/BlueToothHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$1;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$1;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    invoke-static {v2}, Ltmsdk/common/module/powersaving/BlueToothHelper;->a(Ltmsdk/common/module/powersaving/BlueToothHelper;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "start to scan"

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    iget-object v2, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$1;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    invoke-static {v2}, Ltmsdk/common/module/powersaving/BlueToothHelper;->b(Ltmsdk/common/module/powersaving/BlueToothHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$1;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    invoke-static {v2}, Ltmsdk/common/module/powersaving/BlueToothHelper;->a(Ltmsdk/common/module/powersaving/BlueToothHelper;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "found device"

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 108
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$1;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    invoke-static {v2}, Ltmsdk/common/module/powersaving/BlueToothHelper;->b(Ltmsdk/common/module/powersaving/BlueToothHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$1;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    invoke-static {v2}, Ltmsdk/common/module/powersaving/BlueToothHelper;->a(Ltmsdk/common/module/powersaving/BlueToothHelper;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "scan finish"

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    iget-object v2, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$1;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    invoke-static {v2}, Ltmsdk/common/module/powersaving/BlueToothHelper;->c(Ltmsdk/common/module/powersaving/BlueToothHelper;)Ltmsdk/common/module/powersaving/BlueToothHelper$BlueToothObserver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$1;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    invoke-static {v2}, Ltmsdk/common/module/powersaving/BlueToothHelper;->c(Ltmsdk/common/module/powersaving/BlueToothHelper;)Ltmsdk/common/module/powersaving/BlueToothHelper$BlueToothObserver;

    move-result-object v2

    iget-object v3, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$1;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    invoke-static {v3}, Ltmsdk/common/module/powersaving/BlueToothHelper;->b(Ltmsdk/common/module/powersaving/BlueToothHelper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltmsdk/common/module/powersaving/BlueToothHelper$BlueToothObserver;->ScanFinish(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
