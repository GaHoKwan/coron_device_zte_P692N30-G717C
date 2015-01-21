.class final Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;
.super Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

.field private b:Landroid/media/AudioManager;

.field private c:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$ServiceListener;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;-><init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->b:Landroid/media/AudioManager;

    const-string v0, "Bluetooth 2.2 created"

    const-string v1, "DMT-Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->mStateReceiverRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->mStateReceiverRegistered:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final createFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->ACTION_STATE_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final createHeadset()V
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$ServiceListener;

    if-nez v2, :cond_0

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$1;

    invoke-direct {v2, p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$1;-><init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;)V

    iput-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$ServiceListener;

    :cond_0
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$ServiceListener;

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;-><init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$ServiceListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    return-void
.end method

.method public final getAudioState()I
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->mAudioConnected:Z

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
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->mHeadsetConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPlaybackStream()I
    .locals 2

    sget-boolean v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/AndroidVersion;->USE_MUSIC_STREAM_FOR_BLUETOOTH:Z

    if-eqz v0, :cond_0

    const-string v0, "Bluetooth 2.2 playback stream = MUSIC_STREAM"

    const-string v1, "DMT-Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Audio;->MUSIC_STREAM:I

    :goto_0
    return v0

    :cond_0
    const-string v0, "Bluetooth 2.2 playback stream = VOICE_CALL_STREAM"

    const-string v1, "DMT-Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Audio;->VOICE_CALL_STREAM:I

    goto :goto_0
.end method

.method public final getRecordingSource()I
    .locals 1

    sget v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Audio;->DEFAULT_AUDIO_SOURCE:I

    return v0
.end method

.method protected final getStateReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$2;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d$2;-><init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->d:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->d:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public final startBluetoothSco()Z
    .locals 1

    sget-boolean v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/AndroidVersion;->USE_MUSIC_STREAM_FOR_BLUETOOTH:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->b:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final stopBluetoothSco()V
    .locals 1

    sget-boolean v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/AndroidVersion;->USE_MUSIC_STREAM_FOR_BLUETOOTH:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;->b:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    :cond_0
    return-void
.end method
