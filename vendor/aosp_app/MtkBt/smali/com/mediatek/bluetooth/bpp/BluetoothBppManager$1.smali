.class Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$1;
.super Landroid/bluetooth/IBluetoothBpp$Stub;
.source "BluetoothBppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothBpp$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$000()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;
    invoke-static {v0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$100(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppDisconnect()V

    .line 167
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$000()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x5

    return v0
.end method
