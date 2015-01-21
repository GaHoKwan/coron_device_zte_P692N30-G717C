.class public Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;
.super Lcom/mediatek/bluetooth/psm/PsmConnection;
.source "PrxmPsmConn.java"


# instance fields
.field private callback:Landroid/os/ResultReceiver;

.field private deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

.field public isLastPathLossLevelChanged:Z

.field private isMonitoring:Z

.field public isWaitingForSetPathLossCnf:Z

.field public lastPathLossLevel:B

.field private linkLossLevelPending:B

.field private monitorDelay:I


# direct methods
.method protected constructor <init>(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;)V
    .locals 2
    .parameter "deviceInfo"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/psm/PsmConnection;-><init>(I)V

    .line 60
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->isMonitoring:Z

    .line 65
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->monitorDelay:I

    .line 75
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->isWaitingForSetPathLossCnf:Z

    .line 76
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->isLastPathLossLevelChanged:Z

    .line 77
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->lastPathLossLevel:B

    .line 88
    iput-object p1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    .line 89
    return-void
.end method


# virtual methods
.method public getCallback()Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->callback:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    return-object v0
.end method

.method public getLinkLossLevelPending()B
    .locals 1

    .prologue
    .line 108
    iget-byte v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->linkLossLevelPending:B

    return v0
.end method

.method public getMonitorDelay()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->monitorDelay:I

    return v0
.end method

.method public isMonitoring()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->isMonitoring:Z

    return v0
.end method

.method public setCallback(Landroid/os/ResultReceiver;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->callback:Landroid/os/ResultReceiver;

    .line 106
    return-void
.end method

.method public setCurrentState(I)V
    .locals 2
    .parameter "currentState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/mediatek/bluetooth/psm/PsmConnection;->setCurrentState(I)V

    .line 95
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->setCurrentState(B)V

    .line 96
    return-void
.end method

.method public setLinkLossLevelPending(B)V
    .locals 0
    .parameter "linkLossLevelPending"

    .prologue
    .line 111
    iput-byte p1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->linkLossLevelPending:B

    .line 112
    return-void
.end method

.method public setMonitorDelay(I)V
    .locals 0
    .parameter "monitorDelay"

    .prologue
    .line 123
    iput p1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->monitorDelay:I

    .line 124
    return-void
.end method

.method public setMonitoring(Z)V
    .locals 0
    .parameter "isMonitoring"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->isMonitoring:Z

    .line 118
    return-void
.end method
