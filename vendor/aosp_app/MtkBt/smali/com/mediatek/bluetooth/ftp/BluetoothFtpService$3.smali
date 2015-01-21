.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;
.super Ljava/lang/Object;
.source "BluetoothFtpService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .parameter "msg"

    .prologue
    const/16 v10, 0x13ec

    const/16 v8, 0x66

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 339
    .local v2, noti:Landroid/app/Notification;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 340
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v7, "string_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, strData:Ljava/lang/String;
    :goto_0
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    move v4, v5

    .line 478
    :goto_1
    return v4

    .end local v3           #strData:Ljava/lang/String;
    :cond_0
    move-object v3, v4

    .line 340
    goto :goto_0

    .line 344
    .restart local v3       #strData:Ljava/lang/String;
    :sswitch_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNeedUpdatePref:Z
    invoke-static {v4, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$902(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Z)Z

    .line 345
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    invoke-static {}, Lcom/mediatek/bluetooth/util/SystemUtils;->getMountPointPath()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->serverEnableReqNative(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    :cond_1
    :goto_2
    :sswitch_1
    move v4, v6

    .line 478
    goto :goto_1

    .line 349
    :sswitch_2
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNeedUpdatePref:Z
    invoke-static {v4, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$902(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Z)Z

    .line 350
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->serverDisableReqNative()V
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    goto :goto_2

    .line 354
    :sswitch_3
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const-string v5, "Handling: Server Authorizing"

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 355
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentClient:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentClient:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->serverAuthorizeRspNative(Z)V
    invoke-static {v4, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Z)V

    .line 364
    :goto_3
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentClient:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    const/16 v7, 0x65

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->handleStateChanged(ILandroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v10, v5, v7, v8}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;ILandroid/bluetooth/BluetoothDevice;II)V

    goto :goto_2

    .line 360
    :cond_2
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const v5, 0x5b8d81

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->genFtpNotification(ILjava/lang/String;Z)Landroid/app/Notification;
    invoke-static {v4, v5, v3, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;ILjava/lang/String;Z)Landroid/app/Notification;

    move-result-object v2

    .line 361
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNM:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/app/NotificationManager;

    move-result-object v4

    const v5, 0x5b8d81

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_3

    .line 370
    :sswitch_4
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v4

    if-ne v4, v8, :cond_4

    .line 371
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v6, :cond_3

    .line 372
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->serverAuthorizeRspNative(Z)V
    invoke-static {v4, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Z)V

    goto :goto_2

    .line 374
    :cond_3
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->serverAuthorizeRspNative(Z)V
    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Z)V

    goto :goto_2

    .line 377
    :cond_4
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTPS_AUTHORIZE_RES, wrong state: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I
    invoke-static {v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 382
    :sswitch_5
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const-string v7, "Handling: Server Connected"

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v4, v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 384
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const v7, 0x5b8d82

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->genFtpNotification(ILjava/lang/String;Z)Landroid/app/Notification;
    invoke-static {v4, v7, v3, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;ILjava/lang/String;Z)Landroid/app/Notification;

    move-result-object v2

    .line 385
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNM:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/app/NotificationManager;

    move-result-object v4

    const v5, 0x5b8d82

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 386
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentClient:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    const/16 v7, 0x67

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->handleStateChanged(ILandroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v10, v5, v8, v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;ILandroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_2

    .line 392
    :sswitch_6
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const-string v7, "Handling: Server Disconnected"

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v5, v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 395
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v5, "server_disconnected"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    invoke-virtual {v5, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 398
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    iget-object v7, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentClient:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x65

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->handleStateChanged(ILandroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v5, v10, v7, v8, v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;ILandroid/bluetooth/BluetoothDevice;II)V

    .line 400
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentClient:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1202(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 401
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNM:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/app/NotificationManager;

    move-result-object v4

    const v5, 0x5b8d81

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 402
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNM:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/app/NotificationManager;

    move-result-object v4

    const v5, 0x5b8d82

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_2

    .line 406
    :sswitch_7
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const-string v5, "Handling: Client Connected"

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 407
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v5, 0x13ed

    iget-object v7, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentServer:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    const/16 v8, 0xca

    const/16 v9, 0xcb

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->handleStateChanged(ILandroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v5, v7, v8, v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;ILandroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_2

    .line 413
    :sswitch_8
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const-string v7, "Handling: Client Disconnected"

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v5, v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 415
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v7, 0x13ed

    iget-object v8, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentServer:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v8}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    const/16 v10, 0xc9

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->handleStateChanged(ILandroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v5, v7, v8, v9, v10}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;ILandroid/bluetooth/BluetoothDevice;II)V

    .line 417
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentServer:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1802(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 418
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNM:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/app/NotificationManager;

    move-result-object v4

    const v5, 0x5b8d83

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_2

    .line 427
    :sswitch_9
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    iget v5, p1, Landroid/os/Message;->what:I

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->startClientTransfer(I)V
    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1900(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)V

    goto/16 :goto_2

    .line 431
    :sswitch_a
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mAbortByUser:Z
    invoke-static {v4, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$2002(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Z)Z

    .line 432
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientAbortReqNative()Z
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 433
    const-string v4, "BluetoothFtpService"

    const-string v5, "[BT][FTP] User aborts after transfer finished."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 439
    :sswitch_b
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    iget v5, p1, Landroid/os/Message;->what:I

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->handleClientTransferring(ILandroid/os/Bundle;)V
    invoke-static {v4, v5, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$2100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;ILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 444
    :sswitch_c
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    iget v5, p1, Landroid/os/Message;->what:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->handleClientTransferResult(II)V
    invoke-static {v4, v5, v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$2200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;II)V

    goto/16 :goto_2

    .line 448
    :sswitch_d
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->showTextToast(I)V
    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$2300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)V

    goto/16 :goto_2

    .line 453
    :sswitch_e
    iget-object v7, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$2400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 454
    iget-object v7, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$2400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 455
    iget-object v7, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mTransferringCursor:Landroid/database/Cursor;
    invoke-static {v7, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$2402(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 459
    :cond_5
    iget-object v7, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$2500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 460
    iget-object v7, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$2500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 461
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$2500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 463
    :cond_6
    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$2502(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_2

    .line 468
    :sswitch_f
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateMediaStore(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$2600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 472
    :sswitch_10
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->updateNotification(I)V
    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$2700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)V

    goto/16 :goto_2

    .line 342
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x6 -> :sswitch_5
        0x17 -> :sswitch_6
        0x23 -> :sswitch_7
        0x25 -> :sswitch_b
        0x26 -> :sswitch_c
        0x28 -> :sswitch_1
        0x29 -> :sswitch_b
        0x2a -> :sswitch_c
        0x31 -> :sswitch_8
        0x1389 -> :sswitch_d
        0x138a -> :sswitch_e
        0x138b -> :sswitch_f
        0x138c -> :sswitch_10
        0x1392 -> :sswitch_0
        0x1393 -> :sswitch_2
        0x1394 -> :sswitch_4
        0x139e -> :sswitch_a
        0x13a4 -> :sswitch_9
        0x13a5 -> :sswitch_9
    .end sparse-switch
.end method
