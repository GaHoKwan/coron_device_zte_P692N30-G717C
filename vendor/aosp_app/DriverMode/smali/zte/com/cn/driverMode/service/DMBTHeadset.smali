.class public final Lzte/com/cn/driverMode/service/DMBTHeadset;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lzte/com/cn/driverMode/service/DMService;

.field protected b:Landroid/bluetooth/BluetoothHeadset;

.field protected c:Lzte/com/cn/driverMode/service/bp;

.field protected d:Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;

.field protected e:Landroid/bluetooth/BluetoothDevice;

.field protected f:Z

.field protected g:Landroid/bluetooth/BluetoothAdapter;

.field protected h:Z

.field protected i:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private j:Z

.field private k:Z


# direct methods
.method static synthetic a(Lzte/com/cn/driverMode/service/DMBTHeadset;)Z
    .locals 1

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->k:Z

    return v0
.end method

.method static synthetic b(Lzte/com/cn/driverMode/service/DMBTHeadset;)Z
    .locals 1

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->j:Z

    return v0
.end method

.method static synthetic c(Lzte/com/cn/driverMode/service/DMBTHeadset;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->k:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "DMBTHeadset"

    const-string v1, "enableBTVoiceRecognition---flag=true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->a:Lzte/com/cn/driverMode/service/DMService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/service/DMBTHeadset;->a(Lzte/com/cn/driverMode/service/DMService;)V

    :cond_0
    return-void
.end method

.method protected final a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->e:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method protected final a(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "DMBTHeadset"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start---bStarted="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->h:Z

    if-nez v0, :cond_1

    const-string v0, "DMBTHeadset"

    const-string v1, "setAudioChanelToBTHeadset-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->a:Lzte/com/cn/driverMode/service/DMService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->g:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->g:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->g:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->i:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, p1, v1, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DMBTHeadset"

    const-string v1, "Getting Headset Proxy failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iput-boolean v4, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->h:Z

    :cond_1
    return-void

    :cond_2
    iput-boolean v3, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->f:Z

    const-string v0, "DMBTHeadset"

    const-string v1, "bluetooth unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    const-string v0, "DMBTHeadset"

    const-string v1, "resetBTConnection----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMBTHeadset;->c()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->d:Lzte/com/cn/driverMode/service/DMBTHeadset$DriverModeBroadcastReceiver;

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected final c()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "DMBTHeadset"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stop---bStarted="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->h:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->b:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    const-string v0, "DMBTHeadset"

    const-string v1, "stop----before stopVoiceRecognition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->b:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->g:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->b:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->b:Landroid/bluetooth/BluetoothHeadset;

    :cond_1
    const-string v0, "DMBTHeadset"

    const-string v1, "resetAudioChanel-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->a:Lzte/com/cn/driverMode/service/DMService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/DMBTHeadset;->h:Z

    goto :goto_0
.end method
