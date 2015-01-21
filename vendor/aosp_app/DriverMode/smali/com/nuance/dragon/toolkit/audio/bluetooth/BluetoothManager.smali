.class public Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;


# static fields
.field private static final i:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;


# instance fields
.field private a:I

.field private b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;

.field private c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

.field private d:Z

.field private e:I

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/lang/Runnable;

.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;-><init>()V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->i:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager$1;-><init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->g:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager$2;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager$2;-><init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->h:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager$3;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager$3;-><init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->j:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt at using uninitialized BluetoothManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;->onAudioDisconnected(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;->onAudioConnected(I)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    return v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b(I)V

    return-void
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->a(I)V

    return-void
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "DMT-BluetoothManager"

    const-string v1, "finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    iput-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;->onBluetoothReleased(I)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->i:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;

    return-object v0
.end method

.method public static isAdapterEnabled()Z
    .locals 1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public connectAudio()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->connectAudio(I)V

    return-void
.end method

.method public connectAudio(I)V
    .locals 5

    const-string v0, "DMT-BluetoothManager"

    const-string v1, "connectAudio()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->a()V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection timeout cannot be 0 or negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->a:I

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->isDeviceConnected()Z

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->isAudioConnected()Z

    move-result v1

    const-string v2, "DMT-BluetoothManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connectAudio(), deviceConnected = <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">, audioConnected = <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b(I)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connectAudio() - illegal audio state, mAudioState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->startBluetoothSco()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->g:Ljava/lang/Runnable;

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->a:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connectAudio() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connectAudio() called twice, already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connectAudio() should not be called until the disconnectAudio() has been acknowledged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public disconnectAudio()V
    .locals 4

    const/4 v2, 0x3

    const-string v0, "DMT-BluetoothManager"

    const-string v1, "disconnectAudio()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->a()V

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disconnectAudio() - illegal audio state, mAudioState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "disconnectAudio() - audio already disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b(I)V

    iput v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_2
    iput v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "calling disconnectAudio() twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPlaybackStream()I
    .locals 3

    const-string v0, "DMT-BluetoothManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPlaybackStream(), mBluetoothImpl = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->a()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->getPlaybackStream()I

    move-result v0

    return v0
.end method

.method public initialize(Landroid/content/Context;Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;)V
    .locals 3

    const-string v0, "DMT-BluetoothManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialize(), context = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The context argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The listener argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->d:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt at double-initialization of Bluetooth manager, it has been already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->f:Landroid/os/Handler;

    invoke-static {p1, p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->createInstance(Landroid/content/Context;Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth$HeadsetStateListener;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    const-string v0, "DMT-BluetoothManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init(), returning mBluetoothImpl = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isAudioConnected()Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "DMT-BluetoothManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAudioConnected(), mBluetoothImpl = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->a()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->getAudioState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    const-string v1, "DMT-BluetoothManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAudioConnected() returning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceConnected()Z
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->a()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->getHeadsetState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    const-string v1, "DMT-BluetoothManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isDeviceConnected() returning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAudioStateChanged(I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v0, "DMT-BluetoothManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioStateChanged(), state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioConnected() - illegal audio state, mAudioState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "DMT-BluetoothManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioStateChanged(), possible state error, mAudioState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioDisconnected() - illegal audio state, mAudioState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iput v4, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    invoke-direct {p0, v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->stopBluetoothSco()V

    iput v3, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    invoke-direct {p0, v4}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->a(I)V

    :cond_1
    :goto_1
    :pswitch_3
    return-void

    :pswitch_4
    iput v3, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    invoke-direct {p0, v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->a(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onConnectionStateChanged(I)V
    .locals 3

    const-string v0, "DMT-BluetoothManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnectionStateChanged(), state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;->onDeviceConnected(I)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;->onDeviceDisconnected(I)V

    :cond_1
    return-void
.end method

.method public onServiceConnected(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->d:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;->onBluetoothInitialized(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->d:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;->onBluetoothInitialized(I)V

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->d:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;->onBluetoothReleased(I)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "DMT-BluetoothManager"

    const-string v1, "release()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->d:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->d:Z

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "DMT-BluetoothManager"

    const-string v1, "release(), disconnecting audio: recommended to disconnect BT audio before calling release()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->stopBluetoothSco()V

    :cond_1
    iput v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->e:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "release() - BluetoothManager is not active."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
