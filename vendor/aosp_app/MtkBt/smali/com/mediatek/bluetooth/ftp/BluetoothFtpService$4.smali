.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;
.super Landroid/bluetooth/IBluetoothFtpCtrl$Stub;
.source "BluetoothFtpService.java"


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
    .line 543
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothFtpCtrl$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 10
    .parameter "device"

    .prologue
    const/16 v9, 0x13ed

    const/16 v5, 0x1389

    const/16 v8, 0xca

    const/4 v7, 0x0

    const/16 v6, 0xc9

    .line 554
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const-string v4, "Launching FTP Client"

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 555
    const/4 v1, 0x0

    .line 568
    .local v1, launched:Z
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->handleStateChanged(ILandroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v3, v9, p1, v6, v8}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;ILandroid/bluetooth/BluetoothDevice;II)V

    .line 572
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 573
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const v4, 0x5b8d83

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->genFtpNotification(ILjava/lang/String;Z)Landroid/app/Notification;
    invoke-static {v3, v4, v5, v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;ILjava/lang/String;Z)Landroid/app/Notification;

    move-result-object v2

    .line 574
    .local v2, noti:Landroid/app/Notification;
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNM:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/app/NotificationManager;

    move-result-object v3

    const v4, 0x5b8d83

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 576
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 578
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const-string v4, "/"

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientCurrentPath:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3102(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)Ljava/lang/String;

    .line 579
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentServer:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1802(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 581
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 584
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mDisconnectByUser:Z
    invoke-static {v3, v7}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3202(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Z)Z

    .line 585
    const/4 v1, 0x1

    .line 586
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 597
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #noti:Landroid/app/Notification;
    :goto_0
    if-nez v1, :cond_0

    .line 598
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->handleStateChanged(ILandroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v3, v9, p1, v8, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;ILandroid/bluetooth/BluetoothDevice;II)V

    .line 602
    :cond_0
    return-void

    .line 588
    :cond_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    .line 589
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const-string v4, "FTP client is not available."

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 590
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const v4, 0x7f07006b

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(II)V
    invoke-static {v3, v5, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;II)V

    goto :goto_0

    .line 594
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const v4, 0x7f07009a

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(II)V
    invoke-static {v3, v5, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;II)V

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mDisconnectByUser:Z
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3202(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Z)Z

    .line 606
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientDisconnectReqNative()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    .line 607
    return-void
.end method

.method public getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentServer:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$4;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v0

    return v0
.end method
