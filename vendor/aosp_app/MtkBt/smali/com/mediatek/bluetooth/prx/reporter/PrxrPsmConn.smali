.class public Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;
.super Lcom/mediatek/bluetooth/psm/PsmConnection;
.source "PrxrPsmConn.java"


# instance fields
.field private peerDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/psm/PsmConnection;-><init>(I)V

    .line 59
    return-void
.end method


# virtual methods
.method public getPeerDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;->peerDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method protected setPeerDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "peerDevice"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;->peerDevice:Landroid/bluetooth/BluetoothDevice;

    .line 63
    return-void
.end method
