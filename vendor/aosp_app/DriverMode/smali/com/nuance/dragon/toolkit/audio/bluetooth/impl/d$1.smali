.class final Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$ServiceListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BluetoothHeadset service connected mHeadset = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    invoke-interface {v1, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;->onServiceConnected(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;

    iput-boolean v1, v2, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->mServiceConnected:Z

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->getState()I

    move-result v3

    sget v4, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->STATE_CONNECTED:I

    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, v2, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->mHeadsetConnected:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;->onServiceConnected(Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->getHeadsetState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;->onConnectionStateChanged(I)V

    goto :goto_0
.end method

.method public final onServiceDisconnected()V
    .locals 2

    const-string v0, "BluetoothHeadset service disconnected"

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;->onServiceDisconnected()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->mServiceConnected:Z

    return-void
.end method
