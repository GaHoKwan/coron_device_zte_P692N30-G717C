.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$8;
.super Ljava/lang/Object;
.source "BluetoothFtpClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 585
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 587
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const/16 v2, 0x7e6

    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;ILjava/lang/String;)V

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 592
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x2e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 593
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 594
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
