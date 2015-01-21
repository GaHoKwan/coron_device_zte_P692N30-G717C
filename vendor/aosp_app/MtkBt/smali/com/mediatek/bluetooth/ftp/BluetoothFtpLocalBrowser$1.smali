.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 107
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 110
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, path:Ljava/lang/String;
    :goto_0
    const-string v2, "BluetoothFtpLocalBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][FTP] onReceive(), unmounted path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 116
    :cond_0
    return-void

    .line 110
    .end local v0           #path:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
