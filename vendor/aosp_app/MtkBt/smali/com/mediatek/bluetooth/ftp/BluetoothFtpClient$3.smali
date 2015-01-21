.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;
.super Ljava/lang/Object;
.source "BluetoothFtpClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 366
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .parameter "className"
    .parameter "service"

    .prologue
    const/16 v8, 0x7dd

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x7df

    .line 369
    const/4 v1, -0x1

    .line 371
    .local v1, state:I
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-static {p2}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    move-result-object v3

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1402(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;)Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    .line 372
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 374
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClientCallback:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;
    invoke-static {v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;->registerCallback(Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;)V

    .line 375
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;->getState()I

    move-result v1

    .line 376
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;
    invoke-static {v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;->getCurrentPath()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentPath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1602(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    const-string v2, "BluetoothFtpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][FTP] Client state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 449
    :cond_0
    :goto_1
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothFtpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][FTP] Exception occurred when registerCallback(), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "BluetoothFtpClient"

    const-string v3, "[BT][FTP] onServiceConnected(), mFtpClient is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 389
    :pswitch_0
    const-string v2, "BluetoothFtpClient"

    const-string v3, "[BT][FTP] Enable and connect to FTP server."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V
    invoke-static {v2, v8, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;ILjava/lang/String;)V

    goto :goto_1

    .line 394
    :pswitch_1
    const-string v2, "BluetoothFtpClient"

    const-string v3, "[BT][FTP] Connected with FTP service, Authorizing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showProgressDialog(I)V
    invoke-static {v2, v8}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;I)V

    goto :goto_1

    .line 399
    :pswitch_2
    const-string v2, "BluetoothFtpClient"

    const-string v3, "[BT][FTP] Connected with FTP service, Connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1100()Lcom/mediatek/bluetooth/ftp/XMLParsingThread;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 401
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showProgressDialog(I)V
    invoke-static {v2, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;I)V

    .line 402
    invoke-static {}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1100()Lcom/mediatek/bluetooth/ftp/XMLParsingThread;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-virtual {v2, v3}, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->isDone(Lcom/mediatek/bluetooth/ftp/XMLParsingThread$ParsingDoneListener;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    invoke-static {v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1102(Lcom/mediatek/bluetooth/ftp/XMLParsingThread;)Lcom/mediatek/bluetooth/ftp/XMLParsingThread;

    .line 404
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->updateUI()V
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    goto :goto_1

    .line 407
    :cond_2
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->updateUI()V
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    goto :goto_1

    .line 412
    :pswitch_3
    const-string v2, "BluetoothFtpClient"

    const-string v3, "[BT][FTP] Connected with FTP service, Sending."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->updateUI()V
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    .line 414
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const/16 v3, 0x7e5

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->prepareTransferringDialog(IZ)V
    invoke-static {v2, v3, v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;IZ)V

    goto :goto_1

    .line 418
    :pswitch_4
    const-string v2, "BluetoothFtpClient"

    const-string v3, "[BT][FTP] Connected with FTP service, Receiving."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->updateUI()V
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    .line 420
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const/16 v3, 0x7e4

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->prepareTransferringDialog(IZ)V
    invoke-static {v2, v3, v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;IZ)V

    goto/16 :goto_1

    .line 424
    :pswitch_5
    const-string v2, "BluetoothFtpClient"

    const-string v3, "[BT][FTP] Connected with FTP Service, To refresh"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showProgressDialog(I)V
    invoke-static {v2, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;I)V

    .line 426
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V
    invoke-static {v2, v5, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 430
    :pswitch_6
    const-string v2, "BluetoothFtpClient"

    const-string v3, "[BT][FTP] Connected with FTP service, Refreshing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showProgressDialog(I)V
    invoke-static {v2, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;I)V

    goto/16 :goto_1

    .line 435
    :pswitch_7
    const-string v2, "BluetoothFtpClient"

    const-string v3, "[BT][FTP] Connected with FTP service, Start parsing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showProgressDialog(I)V
    invoke-static {v2, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;I)V

    .line 437
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->parseFolderContent()V
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    goto/16 :goto_1

    .line 441
    :pswitch_8
    const-string v2, "BluetoothFtpClient"

    const-string v3, "[BT][FTP] Connected with FTP service, Aborting."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->updateUI()V
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    .line 443
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const/16 v3, 0x7e7

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showProgressDialog(I)V
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;I)V

    goto/16 :goto_1

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 452
    const-string v0, "BluetoothFtpClient"

    const-string v1, "[BT][FTP] FTP Service disconnected unexpectedly. Finish this activity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1402(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;)Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    .line 455
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 456
    return-void
.end method
