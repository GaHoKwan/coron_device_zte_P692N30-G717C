.class public Lcom/mediatek/bluetooth/AdvancedService;
.super Landroid/app/Service;
.source "AdvancedService.java"


# static fields
.field private static final BIP_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.bluetooth.bip.BipService"

.field private static final DBG:Z = true

.field private static final DUN_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.bluetooth.dun.BluetoothDunService"

.field private static final FTP_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.bluetooth.ftp.BluetoothFtpService"

.field private static final MAP_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.bluetooth.map.BluetoothMapServerService"

.field private static final PROFILE_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.bluetooth.ProfileService"

.field private static final SIMAP_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.bluetooth.simap.BluetoothSimapService"

.field private static final TAG:Ljava/lang/String; = "BluetoothAdvancedService"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mIsInitiated:Z

.field private mIsProfilesStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const-string v0, "extadvanced_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 134
    iput-boolean v0, p0, Lcom/mediatek/bluetooth/AdvancedService;->mIsInitiated:Z

    .line 135
    iput-boolean v0, p0, Lcom/mediatek/bluetooth/AdvancedService;->mIsProfilesStarted:Z

    return-void
.end method

.method private native advancedDisableNative()V
.end method

.method private native advancedEnableNative()V
.end method

.method private native cleanupNative()V
.end method

.method private clearService()V
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/AdvancedService;->mIsInitiated:Z

    if-nez v0, :cond_0

    .line 240
    const-string v0, "Advanced Service is already initiated"

    invoke-static {v0}, Lcom/mediatek/bluetooth/AdvancedService;->log(Ljava/lang/String;)V

    .line 247
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/AdvancedService;->advancedDisableNative()V

    .line 245
    invoke-direct {p0}, Lcom/mediatek/bluetooth/AdvancedService;->cleanupNative()V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/AdvancedService;->mIsInitiated:Z

    goto :goto_0
.end method

.method private native initNative()Z
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 250
    const-string v0, "BluetoothAdvancedService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method private declared-synchronized onAdvancedDisableCnf(Z)V
    .locals 2
    .parameter "result"

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdvancedDisableCnf, result["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onAdvancedEnableCnf(Z)V
    .locals 2
    .parameter "result"

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdvancedEnableCnf, result["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onAdvancedStartRequestInd(Z)V
    .locals 3
    .parameter "result"

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/AdvancedService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 207
    .local v0, btState:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdvancedStartRequestInd, btState["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsProfilesStarted["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/bluetooth/AdvancedService;->mIsProfilesStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->i(Ljava/lang/String;)V

    .line 210
    iget-boolean v1, p0, Lcom/mediatek/bluetooth/AdvancedService;->mIsProfilesStarted:Z

    if-nez v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 214
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/bluetooth/AdvancedService;->mIsProfilesStarted:Z

    .line 215
    iget-object v1, p0, Lcom/mediatek/bluetooth/AdvancedService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/AdvancedService;->startProfileServices(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_1
    monitor-exit p0

    return-void

    .line 206
    .end local v0           #btState:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onAdvancedStopRequestInd(Z)V
    .locals 3
    .parameter "result"

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/AdvancedService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 224
    .local v0, btState:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdvancedStopRequestInd, btState["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsProfilesStarted["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/bluetooth/AdvancedService;->mIsProfilesStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->i(Ljava/lang/String;)V

    .line 227
    iget-boolean v1, p0, Lcom/mediatek/bluetooth/AdvancedService;->mIsProfilesStarted:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/AdvancedService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/AdvancedService;->stopProfileServices(Landroid/content/Context;)V

    .line 232
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/bluetooth/AdvancedService;->mIsProfilesStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_1
    monitor-exit p0

    return-void

    .line 223
    .end local v0           #btState:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private preStartProfilesService()V
    .locals 4

    .prologue
    .line 260
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 261
    .local v0, btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 262
    .local v1, btState:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preStartProfilesService, btState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mIsProfilesStarted["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/bluetooth/AdvancedService;->mIsProfilesStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->i(Ljava/lang/String;)V

    .line 266
    iget-boolean v2, p0, Lcom/mediatek/bluetooth/AdvancedService;->mIsProfilesStarted:Z

    if-nez v2, :cond_0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 268
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/bluetooth/AdvancedService;->mIsProfilesStarted:Z

    .line 269
    iget-object v2, p0, Lcom/mediatek/bluetooth/AdvancedService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/AdvancedService;->startProfileServices(Landroid/content/Context;)V

    .line 271
    :cond_0
    return-void
.end method

.method private startProfileServices(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xa

    .line 275
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 276
    .local v0, btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 277
    .local v1, btState:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startProfileServices, btState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->i(Ljava/lang/String;)V

    .line 279
    const-string v2, "profile_supported_ftp"

    invoke-static {v2}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v1, v4, :cond_0

    if-eq v1, v5, :cond_0

    .line 281
    const-string v2, "Advanced Service => start FTP"

    invoke-static {v2}, Lcom/mediatek/bluetooth/AdvancedService;->log(Ljava/lang/String;)V

    .line 282
    const-string v2, "com.mediatek.bluetooth.ftp.BluetoothFtpService"

    invoke-direct {p0, p1, v2}, Lcom/mediatek/bluetooth/AdvancedService;->startService(Landroid/content/Context;Ljava/lang/String;)V

    .line 284
    :cond_0
    const-string v2, "profile_supported_bip"

    invoke-static {v2}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    if-ne v1, v4, :cond_1

    if-eq v1, v5, :cond_2

    .line 286
    :cond_1
    const-string v2, "Advanced Service => start BIP"

    invoke-static {v2}, Lcom/mediatek/bluetooth/AdvancedService;->log(Ljava/lang/String;)V

    .line 287
    const-string v2, "com.mediatek.bluetooth.bip.BipService"

    invoke-direct {p0, p1, v2}, Lcom/mediatek/bluetooth/AdvancedService;->startService(Landroid/content/Context;Ljava/lang/String;)V

    .line 289
    :cond_2
    const-string v2, "profile_supported_maps"

    invoke-static {v2}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    if-ne v1, v4, :cond_3

    if-eq v1, v5, :cond_4

    .line 291
    :cond_3
    const-string v2, "Advanced Service => start MAP"

    invoke-static {v2}, Lcom/mediatek/bluetooth/AdvancedService;->log(Ljava/lang/String;)V

    .line 292
    const-string v2, "com.mediatek.bluetooth.map.BluetoothMapServerService"

    invoke-direct {p0, p1, v2}, Lcom/mediatek/bluetooth/AdvancedService;->startService(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    :cond_4
    const-string v2, "profile_supported_dun"

    invoke-static {v2}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    if-ne v1, v4, :cond_5

    if-eq v1, v5, :cond_6

    .line 296
    :cond_5
    const-string v2, "Advanced Service => start DUN"

    invoke-static {v2}, Lcom/mediatek/bluetooth/AdvancedService;->log(Ljava/lang/String;)V

    .line 297
    const-string v2, "com.mediatek.bluetooth.dun.BluetoothDunService"

    invoke-direct {p0, p1, v2}, Lcom/mediatek/bluetooth/AdvancedService;->startService(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    :cond_6
    const-string v2, "profile_supported_simap"

    invoke-static {v2}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    if-ne v1, v4, :cond_7

    if-eq v1, v5, :cond_8

    .line 301
    :cond_7
    const-string v2, "Advanced Service => start SIMAP"

    invoke-static {v2}, Lcom/mediatek/bluetooth/AdvancedService;->log(Ljava/lang/String;)V

    .line 302
    const-string v2, "com.mediatek.bluetooth.simap.BluetoothSimapService"

    invoke-direct {p0, p1, v2}, Lcom/mediatek/bluetooth/AdvancedService;->startService(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    :cond_8
    const-string v2, "profile_supported_prxr"

    invoke-static {v2}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    if-ne v1, v4, :cond_9

    if-eq v1, v5, :cond_a

    .line 307
    :cond_9
    const-string v2, "Advanced Service => start PRXP"

    invoke-static {v2}, Lcom/mediatek/bluetooth/AdvancedService;->log(Ljava/lang/String;)V

    .line 308
    const-string v2, "com.mediatek.bluetooth.ProfileService"

    invoke-direct {p0, p1, v2}, Lcom/mediatek/bluetooth/AdvancedService;->startService(Landroid/content/Context;Ljava/lang/String;)V

    .line 310
    :cond_a
    return-void
.end method

.method private startService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "serviceClass"

    .prologue
    .line 336
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start service for class["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "serviceClass"
    .parameter "extraName"
    .parameter "extraValue"

    .prologue
    .line 354
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start service for class["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private stopProfileServices(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 313
    const-string v0, "profile_supported_ftp"

    invoke-static {v0}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const-string v0, "com.mediatek.bluetooth.ftp.BluetoothFtpService"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bluetooth/AdvancedService;->stopService(Landroid/content/Context;Ljava/lang/String;)V

    .line 316
    :cond_0
    const-string v0, "profile_supported_bip"

    invoke-static {v0}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    const-string v0, "com.mediatek.bluetooth.bip.BipService"

    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bipiservice.action.BIP_DISABLE"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mediatek/bluetooth/AdvancedService;->startService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_1
    const-string v0, "profile_supported_dun"

    invoke-static {v0}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    const-string v0, "com.mediatek.bluetooth.dun.BluetoothDunService"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bluetooth/AdvancedService;->stopService(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    :cond_2
    const-string v0, "profile_supported_maps"

    invoke-static {v0}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    const-string v0, "com.mediatek.bluetooth.map.BluetoothMapServerService"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bluetooth/AdvancedService;->stopService(Landroid/content/Context;Ljava/lang/String;)V

    .line 325
    :cond_3
    const-string v0, "profile_supported_simap"

    invoke-static {v0}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    const-string v0, "com.mediatek.bluetooth.simap.BluetoothSimapService"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bluetooth/AdvancedService;->stopService(Landroid/content/Context;Ljava/lang/String;)V

    .line 328
    :cond_4
    const-string v0, "profile_supported_prxr"

    invoke-static {v0}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 329
    const-string v0, "com.mediatek.bluetooth.ProfileService"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bluetooth/AdvancedService;->stopService(Landroid/content/Context;Ljava/lang/String;)V

    .line 331
    :cond_5
    return-void
.end method

.method private stopService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "serviceClass"

    .prologue
    .line 345
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop service for class["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 190
    const-string v0, "unsupported function: BluetoothAdvancedService.onBind()"

    invoke-static {v0}, Lcom/mediatek/bluetooth/AdvancedService;->log(Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 146
    const-string v0, "Advanced Service for advanced profiles is created"

    invoke-static {v0}, Lcom/mediatek/bluetooth/AdvancedService;->log(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/AdvancedService;->mContext:Landroid/content/Context;

    .line 148
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/AdvancedService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 150
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/AdvancedService;->mIsInitiated:Z

    if-nez v0, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/mediatek/bluetooth/AdvancedService;->initNative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const-string v0, "Could not init Bluetooth Advanced Service"

    invoke-static {v0}, Lcom/mediatek/bluetooth/AdvancedService;->log(Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/AdvancedService;->advancedEnableNative()V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/AdvancedService;->mIsInitiated:Z

    .line 160
    invoke-direct {p0}, Lcom/mediatek/bluetooth/AdvancedService;->preStartProfilesService()V

    goto :goto_0

    .line 163
    :cond_1
    const-string v0, "Already started, just return!"

    invoke-static {v0}, Lcom/mediatek/bluetooth/AdvancedService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 182
    const-string v0, "Bluetooth Advanced Service is destroyed"

    invoke-static {v0}, Lcom/mediatek/bluetooth/AdvancedService;->log(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/mediatek/bluetooth/AdvancedService;->clearService()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/AdvancedService;->mIsInitiated:Z

    .line 185
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 171
    const-string v0, "Bluetooth Advanced Service is started"

    invoke-static {v0}, Lcom/mediatek/bluetooth/AdvancedService;->log(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/mediatek/bluetooth/AdvancedService;->preStartProfilesService()V

    .line 176
    const/4 v0, 0x1

    return v0
.end method
