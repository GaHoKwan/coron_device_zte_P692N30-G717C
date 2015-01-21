.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$2;
.super Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback$Stub;
.source "BluetoothFtpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public postEvent(II)V
    .locals 2
    .parameter "event"
    .parameter "param"

    .prologue
    .line 352
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 353
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 354
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 355
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    return-void
.end method

.method public postEventWithData(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "event"
    .parameter "data"

    .prologue
    .line 359
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 360
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 361
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 362
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 363
    return-void
.end method
