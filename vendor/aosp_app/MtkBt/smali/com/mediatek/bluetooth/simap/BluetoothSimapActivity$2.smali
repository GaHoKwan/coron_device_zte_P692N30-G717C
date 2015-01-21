.class Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity$2;
.super Landroid/os/Handler;
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
    .line 282
    iput-object p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 285
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 297
    :goto_0
    return-void

    .line 287
    :pswitch_0
    const-string v0, "BluetoothSimapConfirmActivity"

    const-string v1, "Received DISMISS_TIMEOUT_DIALOG msg."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 291
    :pswitch_1
    const-string v0, "BluetoothSimapConfirmActivity"

    const-string v1, "Received DISMISS_DISCONNECTED_DIALOG msg."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
