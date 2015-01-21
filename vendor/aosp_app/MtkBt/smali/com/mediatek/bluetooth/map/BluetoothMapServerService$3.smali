.class Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;
.super Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub;
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
    .line 939
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disableServer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 950
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "mSettingBinder:disableServer"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    .line 951
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disable()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$2600(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V

    .line 952
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "BluetoothMapServerService"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 953
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "map server enable setting"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 954
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 955
    return-void
.end method

.method public enableServer()V
    .locals 4

    .prologue
    .line 942
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "mSettingBinder:enableServer"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    .line 943
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->enable()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$2500(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V

    .line 945
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "BluetoothMapServerService"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 946
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "map server enable setting"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 947
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 948
    return-void
.end method

.method public getEmailAccount()J
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/InstanceManager;->getEmailAccount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSims()[I
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/InstanceManager;->getSims()[I

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$2700(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Z

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 978
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mMapServerCallback:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$2800(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 979
    return-void
.end method

.method public registerSim(I)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 960
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSettingBinder:registerSim,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetooth/map/InstanceManager;->registerSim(I)Z

    move-result v0

    return v0
.end method

.method public replaceAccount(J)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 968
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/bluetooth/map/InstanceManager;->replaceAccount(J)Z

    move-result v0

    return v0
.end method

.method public unregisterCallback(Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 981
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mMapServerCallback:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$2800(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 982
    return-void
.end method

.method public unregisterSim(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 964
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSettingBinder:unregisterSim, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetooth/map/InstanceManager;->unregisterSim(I)Z

    .line 966
    return-void
.end method
