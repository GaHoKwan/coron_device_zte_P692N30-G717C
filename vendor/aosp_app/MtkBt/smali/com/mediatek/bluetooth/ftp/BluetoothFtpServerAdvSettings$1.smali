.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$1;
.super Landroid/bluetooth/IBluetoothFtpServerCallback$Stub;
.source "BluetoothFtpServerAdvSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothFtpServerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public postEvent(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "event"
    .parameter "data"

    .prologue
    .line 108
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 109
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 110
    if-eqz p2, :cond_0

    .line 111
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerAdvSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    return-void
.end method
