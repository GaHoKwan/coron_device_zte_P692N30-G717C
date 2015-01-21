.class public final Lzte/com/cn/driverMode/service/y;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lzte/com/cn/driverMode/service/DMService;

.field protected b:Landroid/content/Context;

.field protected c:Landroid/app/KeyguardManager;

.field protected d:Landroid/app/KeyguardManager$KeyguardLock;

.field protected e:Landroid/os/PowerManager;

.field protected f:Landroid/os/PowerManager$WakeLock;

.field protected g:Landroid/os/PowerManager$WakeLock;

.field protected h:Landroid/media/AudioManager;

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:Z

.field protected n:Lzte/com/cn/driverMode/service/by;

.field protected o:Lzte/com/cn/driverMode/service/DMApplication;

.field protected p:Lzte/com/cn/driverMode/utils/g;

.field q:I

.field r:I

.field s:I

.field t:Ljava/lang/String;

.field private u:I


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lzte/com/cn/driverMode/service/y;->i:I

    const/4 v0, 0x2

    iput v0, p0, Lzte/com/cn/driverMode/service/y;->j:I

    iput v1, p0, Lzte/com/cn/driverMode/service/y;->k:I

    iput v1, p0, Lzte/com/cn/driverMode/service/y;->l:I

    iput v1, p0, Lzte/com/cn/driverMode/service/y;->u:I

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/y;->m:Z

    iput v1, p0, Lzte/com/cn/driverMode/service/y;->q:I

    iput v1, p0, Lzte/com/cn/driverMode/service/y;->r:I

    iput v1, p0, Lzte/com/cn/driverMode/service/y;->s:I

    const-string v0, "0"

    iput-object v0, p0, Lzte/com/cn/driverMode/service/y;->t:Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p1, Lzte/com/cn/driverMode/service/DMService;

    iput-object p1, p0, Lzte/com/cn/driverMode/service/y;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/y;->b:Landroid/content/Context;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->b:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lzte/com/cn/driverMode/service/y;->c:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->b:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lzte/com/cn/driverMode/service/y;->e:Landroid/os/PowerManager;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->a:Lzte/com/cn/driverMode/service/DMService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lzte/com/cn/driverMode/service/y;->h:Landroid/media/AudioManager;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    iput-object v0, p0, Lzte/com/cn/driverMode/service/y;->o:Lzte/com/cn/driverMode/service/DMApplication;

    new-instance v0, Lzte/com/cn/driverMode/utils/g;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/y;->b:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/y;->o:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-direct {v0, v1, v2}, Lzte/com/cn/driverMode/utils/g;-><init>(Landroid/content/Context;Lzte/com/cn/driverMode/service/DMApplication;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/y;->p:Lzte/com/cn/driverMode/utils/g;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->f:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v5, p0, Lzte/com/cn/driverMode/service/y;->f:Landroid/os/PowerManager$WakeLock;

    :cond_0
    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/y;->d()V

    const-string v0, "resetAutoRotation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "originalRotation ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/y;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/y;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://settings/system"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    const-string v4, "name"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "value"

    iget-object v4, p0, Lzte/com/cn/driverMode/service/y;->t:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->g:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iput-object v5, p0, Lzte/com/cn/driverMode/service/y;->g:Landroid/os/PowerManager$WakeLock;

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "DMControl"

    const-string v1, "openSpeaker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    :try_start_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v1, "version"

    invoke-static {p1, v1}, Lzte/com/cn/driverMode/service/ce;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const v2, 0x7f080297

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0802a0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0802a1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f080293

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "DMControl"

    const-string v3, "setMode->MODE_IN_CALL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    :cond_1
    if-eqz v1, :cond_2

    const v2, 0x7f080298

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->isAdapterEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "DMControl"

    const-string v2, "setMode->MODE_RINGTONE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    :cond_2
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lzte/com/cn/driverMode/service/y;->u:I

    const-string v1, "DMControl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "back up volume ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lzte/com/cn/driverMode/service/y;->u:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DMControl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSpeakerphoneOn:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DMControl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "audioManager.getMode():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const-string v1, "DMControl"

    const-string v2, "--- on "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string v1, "DMControl"

    const-string v2, "setMode->MODE_IN_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/y;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->e:Landroid/os/PowerManager;

    const v1, 0x20000001

    const-string v2, "DMService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/y;->f:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 4

    const-string v0, "DMControl"

    const-string v1, "closeSpeaker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    :try_start_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v1, "version"

    invoke-static {p1, v1}, Lzte/com/cn/driverMode/service/ce;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f080297

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const v2, 0x7f0802a0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f0802a1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f080293

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f080298

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "DMControl"

    const-string v2, "setMode->MODE_NORMAL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "DMControl"

    const-string v2, "closeSpeaker---"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const-string v1, "DMControl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "restore volume ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lzte/com/cn/driverMode/service/y;->u:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget v2, p0, Lzte/com/cn/driverMode/service/y;->u:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->p:Lzte/com/cn/driverMode/utils/g;

    invoke-virtual {v0, p1}, Lzte/com/cn/driverMode/utils/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->g:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->e:Landroid/os/PowerManager;

    const v1, 0x3000001a

    const-string v2, "DMService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/y;->g:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->g:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->g:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    const-string v0, "DMControl"

    const-string v1, "reLightScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->p:Lzte/com/cn/driverMode/utils/g;

    invoke-virtual {v0, p1}, Lzte/com/cn/driverMode/utils/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->g:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const-string v0, "DMControl"

    const-string v1, "releaseLightScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->d:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->c:Landroid/app/KeyguardManager;

    const-string v1, "DMService"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/y;->d:Landroid/app/KeyguardManager$KeyguardLock;

    :cond_0
    const-string v0, "DMControl"

    const-string v1, "disableKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->d:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->d:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    const-string v0, "DMControl"

    const-string v1, "reenableKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->d:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/y;->d:Landroid/app/KeyguardManager$KeyguardLock;

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->c:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->c:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->e:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->p:Lzte/com/cn/driverMode/utils/g;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/y;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/utils/g;->a(Lzte/com/cn/driverMode/service/DMService;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/y;->m:Z

    return-void
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/y;->m:Z

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->p:Lzte/com/cn/driverMode/utils/g;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/utils/g;->a()V

    return-void
.end method

.method public final l()I
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.autonavi.xmgd.action.START"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.autonavi.xmgd.navigator.tob"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lzte/com/cn/driverMode/service/y;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()I
    .locals 5

    const/4 v0, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.zte.cartracker"

    const-string v4, "com.zte.cartracker.MainActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "zte.com.cn.drivermode.lanuchcartracker"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lzte/com/cn/driverMode/service/y;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()V
    .locals 2

    const-string v0, "DMControl"

    const-string v1, "setSilenceRinger---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->h:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->h:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/service/y;->j:I

    const-string v0, "back1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveInitRinger---initringmode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lzte/com/cn/driverMode/service/y;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final p()V
    .locals 3

    const-string v0, "back1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetInitRinger---initringmode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lzte/com/cn/driverMode/service/y;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->h:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->h:Landroid/media/AudioManager;

    iget v1, p0, Lzte/com/cn/driverMode/service/y;->j:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 4

    const/4 v3, 0x3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->h:Landroid/media/AudioManager;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/y;->h:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public final r()V
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x1

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://settings/system"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v7, "accelerometer_rotation"

    const-string v3, "name=?"

    new-array v4, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lzte/com/cn/driverMode/service/y;->t:Ljava/lang/String;

    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "name="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  ;  vaule ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lzte/com/cn/driverMode/service/y;->t:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v2, "openAutoRotation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "originalRotation ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lzte/com/cn/driverMode/service/y;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "name"

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public final s()V
    .locals 3

    const-string v0, "DMControl"

    const-string v1, "backpMusicVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->h:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/service/y;->q:I

    const-string v0, "back1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "originalMusicVolume="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lzte/com/cn/driverMode/service/y;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final t()V
    .locals 4

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->h:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lzte/com/cn/driverMode/service/y;->q:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string v0, "back1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restoreMusicVolume ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lzte/com/cn/driverMode/service/y;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final u()V
    .locals 3

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/y;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/y;->n:Lzte/com/cn/driverMode/service/by;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/y;->n:Lzte/com/cn/driverMode/service/by;

    const-string v1, "disturb_btn_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public final v()Z
    .locals 1

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/y;->m:Z

    return v0
.end method

.method public final w()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/y;->m:Z

    return-void
.end method
