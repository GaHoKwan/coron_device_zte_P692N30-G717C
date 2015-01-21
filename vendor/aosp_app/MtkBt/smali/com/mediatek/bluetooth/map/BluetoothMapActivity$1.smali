.class Lcom/mediatek/bluetooth/map/BluetoothMapActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/BluetoothMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/BluetoothMapActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/map/BluetoothMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 82
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapActivity;Ljava/lang/String;)V

    .line 83
    const-string v2, "com.mediatek.bluetooth.map.BluetoothMapNotification.action.MAP_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    const-string v2, "com.mediatek.bluetooth.map.BluetoothMapNotification.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 85
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapActivity;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->access$100(Lcom/mediatek/bluetooth/map/BluetoothMapActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 95
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 91
    .local v1, state:I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
