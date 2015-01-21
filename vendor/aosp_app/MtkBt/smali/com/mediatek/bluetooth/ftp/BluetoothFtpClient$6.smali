.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$6;
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
    .line 528
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "pos"

    .prologue
    .line 530
    if-nez p2, :cond_1

    .line 532
    const-string v0, "BluetoothFtpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][FTP] Open the folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const/16 v1, 0x7e0

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;ILjava/lang/String;)V

    .line 546
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 547
    return-void

    .line 535
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 540
    const-string v0, "BluetoothFtpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][FTP] Delete the folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showConfirmDeleteDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$2000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;Ljava/lang/String;)V

    goto :goto_0
.end method
