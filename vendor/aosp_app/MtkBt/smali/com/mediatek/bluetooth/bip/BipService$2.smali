.class Lcom/mediatek/bluetooth/bip/BipService$2;
.super Landroid/bluetooth/IBluetoothBipr$Stub;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/bip/BipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/bip/BipService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/bip/BipService;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipService$2;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothBipr$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$700()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 358
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService$2;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$500(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 360
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService$2;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$900(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/app/NotificationManager;

    move-result-object v1

    const v2, 0x26259ff

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 361
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.bluetooth.biprpushconfirmation.action.CANCEL_BY_PEER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, bIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService$2;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 364
    .end local v0           #bIntent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$702(I)I

    .line 365
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService$2;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprDisconnect()Z

    .line 366
    const/4 v1, 0x1

    return v1
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$700()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$700()I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 351
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService$2;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderRemoteBtAddr:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$800(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 353
    :cond_0
    return-object v0
.end method

.method public getState()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 340
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$700()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$200()I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 341
    const/4 v0, 0x1

    .line 344
    :cond_0
    return v0
.end method
