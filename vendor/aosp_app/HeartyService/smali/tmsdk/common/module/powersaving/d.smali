.class Ltmsdk/common/module/powersaving/d;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private AS:Ltmsdk/common/module/powersaving/PowerSavingConfig;

.field private AT:Z

.field private AU:Ltmsdk/common/module/powersaving/IBatteryInfoHelper;

.field private AV:Ltmsdk/common/module/powersaving/a;

.field private AW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltmsdk/common/module/powersaving/PowerSavingEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdk/common/module/powersaving/d;->AT:Z

    .line 38
    new-instance v0, Ltmsdk/common/module/powersaving/d$1;

    invoke-direct {v0, p0}, Ltmsdk/common/module/powersaving/d$1;-><init>(Ltmsdk/common/module/powersaving/d;)V

    iput-object v0, p0, Ltmsdk/common/module/powersaving/d;->AV:Ltmsdk/common/module/powersaving/a;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/powersaving/d;->AW:Ljava/util/List;

    return-void
.end method

.method private B(Z)V
    .locals 4
    .parameter "open"

    .prologue
    const/4 v2, 0x0

    .line 371
    iget-object v1, p0, Ltmsdk/common/module/powersaving/d;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    move-object v0, v1

    check-cast v0, Landroid/media/AudioManager;

    .line 372
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 373
    return-void

    :cond_0
    move v1, v2

    .line 372
    goto :goto_0
.end method

.method private C(Z)V
    .locals 0
    .parameter "open"

    .prologue
    .line 380
    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 381
    return-void
.end method

.method private D(Z)V
    .locals 3
    .parameter "open"

    .prologue
    .line 388
    iget-object v0, p0, Ltmsdk/common/module/powersaving/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 389
    return-void

    .line 388
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private E(Z)V
    .locals 4
    .parameter "airplaneModeState"

    .prologue
    .line 396
    iget-object v1, p0, Ltmsdk/common/module/powersaving/d;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 397
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 399
    iget-object v1, p0, Ltmsdk/common/module/powersaving/d;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 400
    return-void

    .line 396
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ltmsdk/common/module/powersaving/d;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Ltmsdk/common/module/powersaving/d;->AT:Z

    return v0
.end method

.method static synthetic b(Ltmsdk/common/module/powersaving/d;)Ltmsdk/common/module/powersaving/PowerSavingConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Ltmsdk/common/module/powersaving/d;->AS:Ltmsdk/common/module/powersaving/PowerSavingConfig;

    return-object v0
.end method

.method private bN(I)V
    .locals 3
    .parameter "time"

    .prologue
    .line 343
    iget-object v1, p0, Ltmsdk/common/module/powersaving/d;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 344
    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 345
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Ltmsdk/common/module/powersaving/d;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 346
    return-void
.end method

.method private bO(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    .line 353
    new-instance v1, Ltmsdk/common/module/powersaving/e;

    invoke-direct {v1}, Ltmsdk/common/module/powersaving/e;-><init>()V

    .line 355
    .local v1, mWindowManager:Ltmsdk/common/module/powersaving/e;
    invoke-virtual {v1}, Ltmsdk/common/module/powersaving/e;->getAnimationScales()[F

    move-result-object v0

    .line 356
    .local v0, mAnimationScales:[F
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lt v2, v4, :cond_0

    .line 357
    const/4 v2, 0x0

    rem-int/lit8 v3, p1, 0xa

    int-to-float v3, v3

    aput v3, v0, v2

    .line 359
    :cond_0
    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 360
    div-int/lit8 v2, p1, 0xa

    rem-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    aput v2, v0, v4

    .line 363
    :cond_1
    invoke-virtual {v1, v0}, Ltmsdk/common/module/powersaving/e;->setAnimationScales([F)V

    .line 364
    return-void
.end method

.method static synthetic c(Ltmsdk/common/module/powersaving/d;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Ltmsdk/common/module/powersaving/d;->AW:Ljava/util/List;

    return-object v0
.end method

.method private fO()V
    .locals 3

    .prologue
    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, eventFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Ltmsdk/common/module/powersaving/d;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ltmsdk/common/module/powersaving/d;->AV:Ltmsdk/common/module/powersaving/a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    return-void
.end method


# virtual methods
.method public a(Ltmsdk/common/module/powersaving/PowerSavingEventListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 199
    iget-object v0, p0, Ltmsdk/common/module/powersaving/d;->AW:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method public b(Ltmsdk/common/module/powersaving/PowerSavingEventListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v4, p0, Ltmsdk/common/module/powersaving/d;->AW:Ljava/util/List;

    monitor-enter v4

    .line 211
    const/4 v2, 0x0

    .line 212
    .local v2, tempListener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget-object v3, p0, Ltmsdk/common/module/powersaving/d;->AW:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 213
    iget-object v3, p0, Ltmsdk/common/module/powersaving/d;->AW:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 214
    iget-object v3, p0, Ltmsdk/common/module/powersaving/d;->AW:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 218
    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 212
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public declared-synchronized getBatteryInfoHelper()Ltmsdk/common/module/powersaving/IBatteryInfoHelper;
    .locals 2

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdk/common/module/powersaving/d;->AU:Ltmsdk/common/module/powersaving/IBatteryInfoHelper;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Ltmsdk/common/module/powersaving/b;

    iget-object v1, p0, Ltmsdk/common/module/powersaving/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltmsdk/common/module/powersaving/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltmsdk/common/module/powersaving/d;->AU:Ltmsdk/common/module/powersaving/IBatteryInfoHelper;

    .line 410
    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/powersaving/d;->AU:Ltmsdk/common/module/powersaving/IBatteryInfoHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 335
    sget v0, Ltmsdk/common/module/powersaving/a;->As:I

    return v0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 171
    iput-object p1, p0, Ltmsdk/common/module/powersaving/d;->mContext:Landroid/content/Context;

    .line 172
    invoke-direct {p0}, Ltmsdk/common/module/powersaving/d;->fO()V

    .line 173
    return-void
.end method

.method public setPowerSavingConfig(Ltmsdk/common/module/powersaving/PowerSavingConfig;Z)V
    .locals 9
    .parameter "config"
    .parameter "isClose"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 227
    if-nez p1, :cond_0

    .line 328
    :goto_0
    return-void

    .line 231
    :cond_0
    iput-object p1, p0, Ltmsdk/common/module/powersaving/d;->AS:Ltmsdk/common/module/powersaving/PowerSavingConfig;

    .line 232
    iput-boolean p2, p0, Ltmsdk/common/module/powersaving/d;->AT:Z

    .line 235
    iget v4, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mBrightness:I

    if-gtz v4, :cond_8

    .line 237
    iget-object v4, p0, Ltmsdk/common/module/powersaving/d;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Ltmsdkobf/jn;->c(Landroid/content/ContentResolver;)V

    .line 244
    :goto_1
    iget v4, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mScreenOffTime:I

    invoke-direct {p0, v4}, Ltmsdk/common/module/powersaving/d;->bN(I)V

    .line 247
    iget-byte v4, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mHapticFeedbackStateOperation:B

    if-ne v4, v5, :cond_9

    .line 248
    invoke-direct {p0, v5}, Ltmsdk/common/module/powersaving/d;->D(Z)V

    .line 254
    :cond_1
    :goto_2
    iget-byte v4, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mVibrateStateOperation:B

    if-ne v4, v5, :cond_a

    .line 255
    invoke-direct {p0, v5}, Ltmsdk/common/module/powersaving/d;->B(Z)V

    .line 261
    :cond_2
    :goto_3
    iget-byte v4, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mAutoSyncStateOperation:B

    if-ne v4, v5, :cond_b

    .line 262
    invoke-direct {p0, v5}, Ltmsdk/common/module/powersaving/d;->C(Z)V

    .line 268
    :cond_3
    :goto_4
    const-class v4, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v4}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v3

    check-cast v3, Ltmsdk/common/module/netsetting/NetSettingManager;

    .line 269
    .local v3, netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    iget-object v4, p0, Ltmsdk/common/module/powersaving/d;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "airplane_mode_on"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 270
    .local v1, modeIdx:I
    if-ne v1, v5, :cond_c

    move v0, v5

    .line 272
    .local v0, isOpen:Z
    :goto_5
    iget-byte v4, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mAirplaneModeStateOperation:B

    if-eq v4, v5, :cond_10

    .line 274
    iget-byte v4, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mAirplaneModeStateOperation:B

    if-ne v4, v8, :cond_4

    if-eqz v0, :cond_4

    .line 275
    invoke-direct {p0, v6}, Ltmsdk/common/module/powersaving/d;->E(Z)V

    .line 278
    :cond_4
    iget-byte v4, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mWifiStateOperation:B

    if-ne v4, v5, :cond_d

    invoke-virtual {v3}, Ltmsdk/common/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_d

    .line 279
    invoke-virtual {v3, v5}, Ltmsdk/common/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    .line 280
    sput-boolean v5, Ltmsdk/common/module/powersaving/a;->Av:Z

    .line 287
    :cond_5
    :goto_6
    const-class v4, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v4}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/netsetting/NetSettingManager;

    .line 288
    .local v2, netManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    iget-byte v4, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mMobileNetWorkStateOperation:B

    if-ne v4, v5, :cond_e

    invoke-virtual {v2}, Ltmsdk/common/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v4

    if-nez v4, :cond_e

    .line 289
    const-class v4, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v4}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v4

    check-cast v4, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-virtual {v4, v5}, Ltmsdk/common/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    .line 290
    sput-boolean v5, Ltmsdk/common/module/powersaving/a;->AA:Z

    .line 297
    :cond_6
    :goto_7
    iget-byte v4, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mBlueToothStateOperation:B

    if-ne v4, v5, :cond_f

    invoke-virtual {v3}, Ltmsdk/common/module/netsetting/NetSettingManager;->isBluetoothEnabled()Z

    move-result v4

    if-nez v4, :cond_f

    .line 298
    invoke-virtual {v3}, Ltmsdk/common/module/netsetting/NetSettingManager;->enableBluetooth()Z

    .line 299
    sput-boolean v5, Ltmsdk/common/module/powersaving/a;->AC:Z

    .line 327
    .end local v2           #netManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    :cond_7
    :goto_8
    sget-object v4, Ltmsdk/common/module/powersaving/PowerSavingConfig;->ANIMATION_STATE_SETTINGS:[I

    iget v5, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mAnimationState:I

    aget v4, v4, v5

    invoke-direct {p0, v4}, Ltmsdk/common/module/powersaving/d;->bO(I)V

    goto/16 :goto_0

    .line 239
    .end local v0           #isOpen:Z
    .end local v1           #modeIdx:I
    .end local v3           #netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    :cond_8
    iget-object v4, p0, Ltmsdk/common/module/powersaving/d;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Ltmsdkobf/jn;->b(Landroid/content/ContentResolver;)V

    .line 240
    iget v4, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mBrightness:I

    iget-object v7, p0, Ltmsdk/common/module/powersaving/d;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v4, v7}, Ltmsdkobf/jn;->a(ILandroid/content/ContentResolver;)V

    goto/16 :goto_1

    .line 249
    :cond_9
    iget-byte v4, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mHapticFeedbackStateOperation:B

    if-ne v4, v8, :cond_1

    .line 250
    invoke-direct {p0, v6}, Ltmsdk/common/module/powersaving/d;->D(Z)V

    goto/16 :goto_2

    .line 256
    :cond_a
    iget-byte v4, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mVibrateStateOperation:B

    if-ne v4, v8, :cond_2

    .line 257
    invoke-direct {p0, v6}, Ltmsdk/common/module/powersaving/d;->B(Z)V

    goto/16 :goto_3

    .line 263
    :cond_b
    iget-byte v4, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mAutoSyncStateOperation:B

    if-ne v4, v8, :cond_3

    .line 264
    invoke-direct {p0, v6}, Ltmsdk/common/module/powersaving/d;->C(Z)V

    goto/16 :goto_4

    .restart local v1       #modeIdx:I
    .restart local v3       #netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    :cond_c
    move v0, v6

    .line 270
    goto/16 :goto_5

    .line 281
    .restart local v0       #isOpen:Z
    :cond_d
    iget-byte v4, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mWifiStateOperation:B

    if-ne v4, v8, :cond_5

    invoke-virtual {v3}, Ltmsdk/common/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 282
    invoke-virtual {v3, v6}, Ltmsdk/common/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    .line 283
    sput-boolean v5, Ltmsdk/common/module/powersaving/a;->Av:Z

    goto :goto_6

    .line 291
    .restart local v2       #netManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    :cond_e
    iget-byte v4, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mMobileNetWorkStateOperation:B

    if-ne v4, v8, :cond_6

    invoke-virtual {v2}, Ltmsdk/common/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 292
    const-class v4, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v4}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v4

    check-cast v4, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-virtual {v4, v6}, Ltmsdk/common/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    .line 293
    sput-boolean v5, Ltmsdk/common/module/powersaving/a;->AA:Z

    goto :goto_7

    .line 300
    :cond_f
    iget-byte v4, p1, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mBlueToothStateOperation:B

    if-ne v4, v8, :cond_7

    invoke-virtual {v3}, Ltmsdk/common/module/netsetting/NetSettingManager;->isBluetoothEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 301
    invoke-virtual {v3}, Ltmsdk/common/module/netsetting/NetSettingManager;->disableBluetooth()Z

    .line 302
    sput-boolean v5, Ltmsdk/common/module/powersaving/a;->AC:Z

    goto :goto_8

    .line 306
    .end local v2           #netManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    :cond_10
    if-nez v0, :cond_11

    .line 307
    invoke-direct {p0, v5}, Ltmsdk/common/module/powersaving/d;->E(Z)V

    goto :goto_8

    .line 310
    :cond_11
    invoke-virtual {v3}, Ltmsdk/common/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 311
    invoke-virtual {v3, v6}, Ltmsdk/common/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    .line 312
    sput-boolean v5, Ltmsdk/common/module/powersaving/a;->Av:Z

    .line 314
    :cond_12
    const-class v4, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v4}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/netsetting/NetSettingManager;

    .line 315
    .restart local v2       #netManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    invoke-virtual {v2}, Ltmsdk/common/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 316
    const-class v4, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v4}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v4

    check-cast v4, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-virtual {v4, v6}, Ltmsdk/common/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    .line 317
    sput-boolean v5, Ltmsdk/common/module/powersaving/a;->AA:Z

    .line 319
    :cond_13
    invoke-virtual {v3}, Ltmsdk/common/module/netsetting/NetSettingManager;->isBluetoothEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 320
    invoke-virtual {v3}, Ltmsdk/common/module/netsetting/NetSettingManager;->disableBluetooth()Z

    .line 321
    sput-boolean v5, Ltmsdk/common/module/powersaving/a;->AC:Z

    goto/16 :goto_8
.end method
