.class final Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$ServiceListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "BluetoothHeadset service connected"

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;->a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    invoke-interface {v1, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;->onServiceConnected(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;

    iput-boolean v1, v2, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;->mServiceConnected:Z

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;->a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->getState()I

    move-result v3

    sget v4, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->STATE_CONNECTED:I

    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, v2, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;->mHeadsetConnected:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;->onServiceConnected(Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;->getHeadsetState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;->onConnectionStateChanged(I)V

    goto :goto_0
.end method

.method public final onServiceDisconnected()V
    .locals 2

    const-string v0, "BluetoothHeadset service disconnected"

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;->onServiceDisconnected()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;->mServiceConnected:Z

    return-void
.end method
