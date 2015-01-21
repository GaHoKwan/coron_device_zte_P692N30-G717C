.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;
.super Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;
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
    .line 726
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 780
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v1

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v1

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_1

    .line 782
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v2, 0xd1

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$502(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I

    .line 783
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v2, 0x139e

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(II)V
    invoke-static {v1, v2, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;II)V

    .line 784
    const/4 v0, 0x1

    .line 787
    :goto_0
    return v0

    .line 786
    :cond_1
    const-string v1, "BluetoothFtpService"

    const-string v2, "[BT][FTP] Client aborts without trnasferring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connect()V
    .locals 3

    .prologue
    .line 766
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentServer:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    .line 767
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connect to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentServer:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v1, 0xca

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$502(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I

    .line 771
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mCurrentServer:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientConnectReqNative(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 777
    :goto_0
    return-void

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const-string v1, "Invalid connect request: no server device or connected already."

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v1, 0x31

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->postClientEvent(II)I
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;II)I

    goto :goto_0
.end method

.method public createFolder(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    .line 849
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v1, 0xcf

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$502(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I

    .line 850
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientCurrentPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientNextPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4602(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)Ljava/lang/String;

    .line 851
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientCreateFolderReqNative(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$5000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 855
    :goto_0
    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFolder() in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printWrn(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    .line 877
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v1, 0xcf

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$502(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I

    .line 878
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientDeleteReqNative(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$5200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 882
    :goto_0
    return-void

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete() in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printWrn(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mDisconnectByUser:Z
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3202(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Z)Z

    .line 794
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_0

    .line 795
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mNM:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x5b8d83

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 796
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientCancelConnectNative()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    .line 800
    :goto_0
    return-void

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientDisconnectReqNative()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    goto :goto_0
.end method

.method public getCurrentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientCurrentPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastTransferResult()I
    .locals 1

    .prologue
    .line 762
    const/4 v0, -0x1

    return v0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 737
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v0

    .line 740
    .local v0, ret:I
    packed-switch v0, :pswitch_data_0

    .line 754
    :goto_0
    :pswitch_0
    return v0

    .line 743
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v2, 0xcb

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$502(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I

    goto :goto_0

    .line 747
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v2, 0xc9

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$502(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I

    goto :goto_0

    .line 740
    :pswitch_data_0
    .packed-switch 0xce
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public goBackward()V
    .locals 4

    .prologue
    .line 825
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v1

    const/16 v2, 0xcb

    if-ne v1, v2, :cond_1

    .line 826
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v2, 0xcf

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$502(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I

    .line 827
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientCurrentPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 828
    .local v0, lastSlash:I
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientCurrentPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientNextPath:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4602(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)Ljava/lang/String;

    .line 829
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goBackward(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientNextPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 830
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientGoBackwardReqNative()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    .line 834
    .end local v0           #lastSlash:I
    :goto_1
    return-void

    .line 828
    .restart local v0       #lastSlash:I
    :cond_0
    const-string v1, "/"

    goto :goto_0

    .line 832
    .end local v0           #lastSlash:I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goBackward() in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printWrn(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public goForward(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 813
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_1

    .line 814
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v1, 0xcf

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$502(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I

    .line 815
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientCurrentPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientCurrentPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientNextPath:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4602(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)Ljava/lang/String;

    .line 817
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goForward(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientNextPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientGoForwardReqNative(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 822
    :goto_1
    return-void

    .line 815
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goForward() in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printWrn(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public goToRoot()V
    .locals 3

    .prologue
    .line 837
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    .line 838
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v1, 0xcf

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$502(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I

    .line 839
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const-string v1, "/"

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientNextPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4602(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)Ljava/lang/String;

    .line 840
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToRoot(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientNextPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientGoToRootReqNative()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4900(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    .line 845
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToRoot() in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printWrn(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 803
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v0

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v0

    const/16 v1, 0xce

    if-ne v0, v1, :cond_1

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v1, 0xcf

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$502(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I

    .line 806
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientRefreshReqNative()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V

    .line 810
    :goto_0
    return-void

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh() in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printWrn(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerCallback(Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 729
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpClientCallback:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 730
    :cond_0
    return-void
.end method

.method public startPull()V
    .locals 3

    .prologue
    .line 858
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    .line 859
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v1, 0xcd

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$502(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I

    .line 860
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v1, 0x13a4

    const/4 v2, 0x0

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(ILandroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$5100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;ILandroid/os/Bundle;)V

    .line 864
    :goto_0
    return-void

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPull() in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printWrn(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPush()V
    .locals 3

    .prologue
    .line 867
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    .line 868
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v1, 0xcc

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$502(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I

    .line 869
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v1, 0x13a5

    const/4 v2, 0x0

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(ILandroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$5100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;ILandroid/os/Bundle;)V

    .line 873
    :goto_0
    return-void

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPush() in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printWrn(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 733
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$8;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpClientCallback:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$4000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 734
    :cond_0
    return-void
.end method
