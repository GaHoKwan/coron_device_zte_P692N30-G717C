.class Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification$2;
.super Landroid/os/Handler;
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
    .line 212
    iput-object p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 223
    :goto_0
    return-void

    .line 217
    :pswitch_0
    const-string v0, "BluetoothSimapConnNotification"

    const-string v1, "Received DISMISS_DISCONNECTED_DIALOG msg."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
