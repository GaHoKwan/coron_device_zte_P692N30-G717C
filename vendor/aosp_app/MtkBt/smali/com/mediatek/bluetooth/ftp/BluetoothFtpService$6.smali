.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;
.super Landroid/bluetooth/IBluetoothFtpServer$Stub;
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
    .line 642
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothFtpServer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    .line 667
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 668
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v1, 0x1393

    const/4 v2, 0x0

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(II)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;II)V

    .line 673
    :goto_0
    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const-string v1, "Server has already been disabled."

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v1, 0x19

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->postServerEvent(I)I
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I

    goto :goto_0
.end method

.method public enable()Z
    .locals 3

    .prologue
    .line 657
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 658
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v1, 0x1392

    const/4 v2, 0x0

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(II)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;II)V

    .line 663
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const-string v1, "Server has already been enabled."

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/4 v1, 0x2

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->postServerEvent(I)I
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    const-string v0, "Name"

    return-object v0
.end method

.method public getPermission()I
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerPermission:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$1700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v0

    return v0
.end method

.method public registerCallback(Landroid/bluetooth/IBluetoothFtpServerCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 649
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpServerCallback:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 650
    :cond_0
    return-void
.end method

.method public setPermission(I)Z
    .locals 4
    .parameter "permission"

    .prologue
    const/16 v1, 0x3e8

    .line 680
    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 681
    .local v0, read_only:Z
    :goto_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    if-eqz v0, :cond_1

    :goto_1
    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerPermission:I
    invoke-static {v2, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3702(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;I)I

    .line 684
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "server_permission"

    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerPermission:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 688
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->setPermissionNative(Z)Z
    invoke-static {v1, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3900(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Z)Z

    move-result v1

    return v1

    .line 680
    .end local v0           #read_only:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 681
    .restart local v0       #read_only:Z
    :cond_1
    const/16 v1, 0x3e9

    goto :goto_1
.end method

.method public setRootDir(Ljava/lang/String;)Z
    .locals 1
    .parameter "newRoot"

    .prologue
    .line 696
    const/4 v0, 0x0

    .line 699
    .local v0, ret:Z
    return v0
.end method

.method public unregisterCallback(Landroid/bluetooth/IBluetoothFtpServerCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 653
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$6;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mFtpServerCallback:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$3500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 654
    :cond_0
    return-void
.end method
