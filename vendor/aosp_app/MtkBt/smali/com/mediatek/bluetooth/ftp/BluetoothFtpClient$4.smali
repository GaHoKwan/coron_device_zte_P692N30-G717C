.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$4;
.super Landroid/content/BroadcastReceiver;
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
    .line 463
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 465
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, act:Ljava/lang/String;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 468
    .local v1, msg:Landroid/os/Message;
    const-string v2, "com.mediatek.bluetooth.ftp.client.ACTION_PULL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    const/16 v2, 0x7d2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 478
    :goto_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 479
    :goto_1
    return-void

    .line 470
    :cond_0
    const-string v2, "com.mediatek.bluetooth.ftp.client.ACTION_PUSH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 471
    const/16 v2, 0x7d3

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 472
    :cond_1
    const-string v2, "com.mediatek.bluetooth.ftp.client.ACTION_ERROR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 473
    const/16 v2, 0x7d4

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 475
    :cond_2
    const-string v2, "BluetoothFtpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][FTP] Invalid action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
