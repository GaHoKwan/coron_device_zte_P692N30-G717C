.class final Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$ServiceListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "onServiceConnected(), BluetoothHeadset_3_0 service connected"

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onServiceConnected(), mHeadset = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mListener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    invoke-interface {v1, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;->onServiceConnected(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iput-boolean v1, v2, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mServiceConnected:Z

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->getState()I

    move-result v3

    sget v4, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->STATE_CONNECTED:I

    if-ne v3, v4, :cond_3

    move v0, v1

    :cond_3
    iput-boolean v0, v2, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mHeadsetConnected:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;->onServiceConnected(Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->getHeadsetState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;->onConnectionStateChanged(I)V

    goto :goto_0
.end method

.method public final onServiceDisconnected()V
    .locals 2

    const-string v0, "BluetoothHeadset_3_0 service disconnected"

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;->onServiceDisconnected()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mServiceConnected:Z

    return-void
.end method
