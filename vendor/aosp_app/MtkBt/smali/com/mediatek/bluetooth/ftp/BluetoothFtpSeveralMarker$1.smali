.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker$1;
.super Landroid/os/Handler;
.source "BluetoothFtpSeveralMarker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 134
    :pswitch_0
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->access$002(Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;)Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;

    .line 135
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->sendResult(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;Z)V

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->access$002(Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;)Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;

    .line 140
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.bluetooth.ftp.client.ACTION_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 142
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x961
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
