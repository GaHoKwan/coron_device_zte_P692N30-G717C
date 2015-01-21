.class Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;
.super Landroid/bluetooth/IBluetoothSimap$Stub;
.source "BluetoothSimapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/simap/BluetoothSimapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V
    .locals 0
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothSimap$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const/4 v0, 0x0

    return v0
.end method

.method public disableService()V
    .locals 3

    .prologue
    .line 749
    const-string v0, "BluetoothSimapService"

    const-string v1, "turn Off SIMAP... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->enableAction:Z
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1002(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;Z)Z

    .line 751
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->disable()V

    .line 754
    return-void
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 785
    const-string v0, "BluetoothSimapService"

    const-string v1, "disconnectClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    monitor-enter v1

    .line 790
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1100(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 798
    :goto_0
    monitor-exit v1

    .line 799
    return-void

    .line 793
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->IMMEDIATE_DISC_MODE:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1200(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)I

    move-result v2

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->disconnectClient(I)V
    invoke-static {v0, v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1300(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;I)V

    goto :goto_0

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 790
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public enableService()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 739
    const-string v0, "BluetoothSimapService"

    const-string v1, "turn On SIMAP... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #setter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->enableAction:Z
    invoke-static {v0, v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1002(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;Z)Z

    .line 741
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->enable()Z

    .line 745
    return v3
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .prologue
    .line 764
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClient"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1100(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 768
    const/4 v0, 0x0

    .line 770
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    goto :goto_0
.end method

.method public getSIMIndex()I
    .locals 3

    .prologue
    .line 813
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSIMIndex return:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSIMIndex:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1500(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSIMIndex:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1500(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 757
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1100(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1100(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)I

    move-result v0

    return v0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v0, 0x1

    .line 774
    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mState:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1100(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceStarted()Z
    .locals 3

    .prologue
    .line 832
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServiceStarted return:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1700()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-static {}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1700()Z

    move-result v0

    return v0
.end method

.method public registerCallback(Landroid/bluetooth/IBluetoothSimapCallback;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 820
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+registerCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    if-eqz p1, :cond_0

    .line 822
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSimapCallback:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1600(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 823
    :cond_0
    return-void
.end method

.method public selectSIM(I)Z
    .locals 3
    .parameter "simIndex"

    .prologue
    .line 802
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select SIM:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->selectSIMNative(I)Z
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1400(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;I)Z

    .line 807
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #setter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSIMIndex:I
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1502(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;I)I

    .line 809
    const/4 v0, 0x1

    return v0
.end method

.method public startSimapService()V
    .locals 3

    .prologue
    .line 837
    const-string v1, "BluetoothSimapService"

    const-string v2, "startSimapService ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 839
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 840
    return-void
.end method

.method public unregisterCallback(Landroid/bluetooth/IBluetoothSimapCallback;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 826
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-unregisterCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    if-eqz p1, :cond_0

    .line 828
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$2;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #getter for: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->mSimapCallback:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1600(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 829
    :cond_0
    return-void
.end method
