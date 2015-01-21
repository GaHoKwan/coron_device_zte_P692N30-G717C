.class Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;
.super Landroid/bluetooth/IBluetoothMap$Stub;
.source "BluetoothMapServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/BluetoothMapServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V
    .locals 0
    .parameter

    .prologue
    .line 985
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothMap$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 1028
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 1025
    return-void
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v1, "disconnect"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$2700(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v1, "error, the service has not been ready "

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    .line 1020
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1021
    const/4 v0, 0x1

    return v0
.end method

.method public getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v1, "getConnectedDevice"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$2700(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v1, "error, the service has not been ready "

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/InstanceManager;->getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v1, "getState"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    .line 1009
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$2700(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v1, "error, the service has not been ready "

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetooth/map/InstanceManager;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 991
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v1, "isConnetected"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$2700(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v1, "error, the service has not been ready "

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetooth/map/InstanceManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method
