.class Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSimapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.mediatek.bluetooth.simap.userconfirmtimeout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity;

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity;->onTimeout()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity;->access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v1, "com.mediatek.bluetooth.simap.intent.action.BTSIMAP_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity;

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity;->onDisconnected()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity;->access$100(Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity;)V

    goto :goto_0

    .line 107
    :cond_2
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_0
    const-string v1, "BluetoothSimapConfirmActivity"

    const-string v2, "Received BluetoothAdapter.STATE_TURNING_OFF."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity$1;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
