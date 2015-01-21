.class Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;
.super Landroid/bluetooth/IBluetoothHealth$Stub;
.source "HealthService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hdp/HealthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHealthBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/hdp/HealthService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hdp/HealthService;)V
    .locals 0
    .parameter "svc"

    .prologue
    .line 310
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHealth$Stub;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->mService:Lcom/android/bluetooth/hdp/HealthService;

    .line 312
    return-void
.end method

.method private getService()Lcom/android/bluetooth/hdp/HealthService;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 320
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    const-string v1, "HealthService"

    const-string v2, "Health call not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_0
    return-object v0

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->mService:Lcom/android/bluetooth/hdp/HealthService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->mService:Lcom/android/bluetooth/hdp/HealthService;

    #calls: Lcom/android/bluetooth/btservice/ProfileService;->isAvailable()Z
    invoke-static {v1}, Lcom/android/bluetooth/hdp/HealthService;->access$2700(Lcom/android/bluetooth/hdp/HealthService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->mService:Lcom/android/bluetooth/hdp/HealthService;

    goto :goto_0

    .line 328
    :cond_1
    const-string v1, "HealthService"

    const-string v2, "getService::service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->mService:Lcom/android/bluetooth/hdp/HealthService;

    .line 316
    const/4 v0, 0x1

    return v0
.end method

.method public connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 2
    .parameter "device"
    .parameter "config"
    .parameter "channelType"

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 355
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 356
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hdp/HealthService;->connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v1

    goto :goto_0
.end method

.method public connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 2
    .parameter "device"
    .parameter "config"

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 348
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 349
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v1

    goto :goto_0
.end method

.method public disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 2
    .parameter "device"
    .parameter "config"
    .parameter "channelId"

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 362
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 363
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hdp/HealthService;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v1

    goto :goto_0
.end method

.method public getConnectedHealthDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 381
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 382
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hdp/HealthService;->getConnectedHealthDevices()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 375
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 376
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hdp/HealthService;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 387
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 388
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hdp/HealthService;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "device"
    .parameter "config"

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 369
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 370
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method public registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z
    .locals 2
    .parameter "config"
    .parameter "callback"

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 335
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 336
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z

    move-result v1

    goto :goto_0
.end method

.method public unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 341
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 342
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hdp/HealthService;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v1

    goto :goto_0
.end method
