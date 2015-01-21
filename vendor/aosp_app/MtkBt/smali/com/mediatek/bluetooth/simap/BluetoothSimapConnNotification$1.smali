.class Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSimapConnNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.mediatek.bluetooth.simap.intent.action.BTSIMAP_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->onDisconnected()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    const-string v1, "BluetoothSimapConnNotification"

    const-string v2, "Received BluetoothAdapter.STATE_TURNING_OFF."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
