.class Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$6;
.super Ljava/lang/Object;
.source "BluetoothMapServerSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$6;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 208
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$6;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    const-string v2, "Proxy object connected"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$100(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$6;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    invoke-static {p2}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    move-result-object v2

    #setter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$402(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;)Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    .line 210
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$6;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$400(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$6;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$400(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$6;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mCallback:Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;
    invoke-static {v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$600(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;->registerCallback(Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;)V

    .line 213
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$6;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$6;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$400(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    :goto_0
    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->updateMapState(I)V
    invoke-static {v2, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$500(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;I)V

    .line 214
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$6;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->updateSim()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$700(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)V

    .line 215
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$6;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->updateAccount()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$200(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$6;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->registerAccountOberver()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$800(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;)V

    .line 221
    :cond_0
    return-void

    .line 213
    :cond_1
    const/16 v1, 0xd

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$6;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$100(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$6;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    const-string v1, "Proxy object disconnected"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$100(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings$6;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->mService:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;->access$402(Lcom/mediatek/bluetooth/map/BluetoothMapServerSettings;Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;)Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    .line 226
    return-void
.end method
