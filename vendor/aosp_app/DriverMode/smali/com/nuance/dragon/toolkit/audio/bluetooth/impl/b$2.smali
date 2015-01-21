.class final Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$2;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$2;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->ACTION_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->EXTRA_STATE:Ljava/lang/String;

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bluetooth state changed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->a(Ljava/lang/String;)V

    sget v3, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->STATE_CONNECTED:I

    if-ne v2, v3, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$2;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iget-boolean v1, v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mHeadsetConnected:Z

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$2;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iput-boolean v0, v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mHeadsetConnected:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$2;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$2;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$2;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->getHeadsetState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;->onConnectionStateChanged(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->EXTRA_STATE:Ljava/lang/String;

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bluetooth audio state changed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->a(Ljava/lang/String;)V

    sget v3, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->AUDIO_STATE_DISCONNECTED:I

    if-eq v2, v3, :cond_3

    sget v3, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->AUDIO_STATE_CONNECTED:I

    if-eq v2, v3, :cond_3

    sget v3, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->AUDIO_STATE_CONNECTING:I

    if-ne v2, v3, :cond_0

    :cond_3
    sget v3, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->AUDIO_STATE_CONNECTED:I

    if-ne v2, v3, :cond_4

    :goto_2
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$2;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iget-boolean v1, v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mAudioConnected:Z

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$2;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iput-boolean v0, v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mAudioConnected:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$2;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$2;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$2;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->getAudioState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;->onAudioStateChanged(I)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method
