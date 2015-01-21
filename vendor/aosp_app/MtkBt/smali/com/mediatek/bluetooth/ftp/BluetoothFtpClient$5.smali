.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$5;
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
    .line 482
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "pos"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 485
    if-nez p2, :cond_2

    .line 490
    const-string v4, "BluetoothFtpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BT][FTP] Get the file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 492
    .local v3, values:Landroid/content/ContentValues;
    sget-object v2, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$TransferringFile;->CONTENT_URI:Landroid/net/Uri;

    .line 495
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 497
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1900(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 499
    const-string v4, "name"

    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v4, "status"

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    const-string v4, "direction"

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1900(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$TransferringFile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 503
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const/16 v5, 0x7e4

    const/4 v6, 0x0

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 525
    return-void

    .line 506
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 507
    .local v1, msg:Landroid/os/Message;
    const/16 v4, 0x2a

    iput v4, v1, Landroid/os/Message;->what:I

    .line 508
    const/4 v4, 0x1

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 509
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 512
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 513
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "BluetoothFtpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BT][FTP] mFileOpListener.onClick(), Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const/16 v5, 0x7de

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V
    invoke-static {v4, v5, v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;ILjava/lang/String;)V

    goto :goto_0

    .line 517
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_2
    if-ne p2, v4, :cond_0

    .line 519
    const-string v4, "BluetoothFtpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BT][FTP] Delete the file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$5;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showConfirmDeleteDialog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$2000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;Ljava/lang/String;)V

    goto :goto_0
.end method
