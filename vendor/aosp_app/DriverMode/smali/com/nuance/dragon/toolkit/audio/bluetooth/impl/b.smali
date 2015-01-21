.class final Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;
.super Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

.field private b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$ServiceListener;

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;-><init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    const-string v0, "close()"

    const-string v1, "DMT-Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mStateReceiverRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mStateReceiverRegistered:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final createFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->ACTION_STATE_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final createHeadset()V
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$ServiceListener;

    if-nez v2, :cond_0

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;

    invoke-direct {v2, p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$1;-><init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;)V

    iput-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$ServiceListener;

    :cond_0
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$ServiceListener;

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;-><init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$ServiceListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    return-void
.end method

.method public final getAudioState()I
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mAudioConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBondedDevices()[Ljava/lang/String;
    .locals 6

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    if-eqz v3, :cond_1

    move-object v0, v3

    :goto_2
    aput-object v0, v4, v1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v4

    goto :goto_0
.end method

.method public final getHeadsetState()I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->getState()I

    move-result v0

    sget v3, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->STATE_CONNECTED:I

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mHeadsetConnected:Z

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->mHeadsetConnected:Z

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final getPlaybackStream()I
    .locals 3

    sget v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Audio;->VOICE_CALL_STREAM:I

    :try_start_0
    const-string v1, "android.media.AudioManager"

    const-string v2, "STREAM_BLUETOOTH_SCO"

    invoke-static {v1, v2}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/ReflectionFactory;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPlaybackStream returns = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DMT-Bluetooth"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v1

    const-string v1, "getPlaybackStream, problem finding field STREAM_BLUETOOTH_SCO in class AudioManager"

    const-string v2, "DMT-Bluetooth"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final getRecordingSource()I
    .locals 1

    sget v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Audio;->DEFAULT_AUDIO_SOURCE:I

    return v0
.end method

.method protected final getStateReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$2;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b$2;-><init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->c:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->c:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public final startBluetoothSco()Z
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->startVoiceRecognition()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mHeadset.startVoiceRecognition() returned "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DMT-Bluetooth"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final stopBluetoothSco()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->stopVoiceRecognition()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mHeadset.stopVoiceRecognition() returned "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMT-Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
