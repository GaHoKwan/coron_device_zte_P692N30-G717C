.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser$2;
.super Landroid/os/Handler;
.source "BluetoothFtpLocalBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 125
    :pswitch_0
    const-string v0, "BluetoothFtpLocalBrowser"

    const-string v1, "[BT][FTP] Data is ready for retrieving."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->access$102(Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;)Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;

    .line 127
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->updateUI()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->access$200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;)V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->sendErrorAndFinish()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;)V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
