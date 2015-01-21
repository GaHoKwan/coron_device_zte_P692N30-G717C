.class public abstract Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;
.super Ljava/lang/Object;


# static fields
.field public static final HEADSET_AUDIO_STATE_CONNECTED:I = 0x1

.field public static final HEADSET_AUDIO_STATE_DISCONNECTED:I = 0x0

.field public static final HEADSET_STATE_CONNECTED:I = 0x1

.field public static final HEADSET_STATE_DISCONNECTED:I


# instance fields
.field protected mAudioConnected:Z

.field protected mContext:Landroid/content/Context;

.field protected mHeadsetConnected:Z

.field protected mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

.field protected mServiceConnected:Z

.field protected mStateReceiverRegistered:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->createHeadset()V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->createFilter()Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->getStateReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->mStateReceiverRegistered:Z

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->mListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->getHeadsetState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;->onConnectionStateChanged(I)V

    :cond_0
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DMT-Bluetooth"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static createInstance(Landroid/content/Context;Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;
    .locals 5

    sget v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/AndroidVersion;->SDK:I

    const/16 v0, 0x8

    if-lt v1, v0, :cond_0

    sget-boolean v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/AndroidVersion;->IS_BROKEN_HTC:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/c;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/c;-><init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;)V

    :goto_0
    const-string v2, "DMT-Bluetooth"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createInstance() returns "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> for SDK version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const/16 v0, 0x9

    if-ge v1, v0, :cond_2

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/d;-><init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xb

    if-ge v1, v0, :cond_3

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/a;-><init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/b;-><init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract close()V
.end method

.method protected abstract createFilter()Landroid/content/IntentFilter;
.end method

.method protected abstract createHeadset()V
.end method

.method public abstract getAudioState()I
.end method

.method public abstract getBondedDevices()[Ljava/lang/String;
.end method

.method public abstract getHeadsetState()I
.end method

.method public abstract getPlaybackStream()I
.end method

.method public abstract getRecordingSource()I
.end method

.method protected abstract getStateReceiver()Landroid/content/BroadcastReceiver;
.end method

.method public isEnabled()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public abstract startBluetoothSco()Z
.end method

.method public abstract stopBluetoothSco()V
.end method
