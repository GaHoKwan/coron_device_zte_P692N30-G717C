.class Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;
.super Landroid/bluetooth/IBluetoothGatt$Stub;
.source "GattService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothGattBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 0
    .parameter "svc"

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGatt$Stub;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 232
    return-void
.end method

.method private getService()Lcom/android/bluetooth/gatt/GattService;
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    #calls: Lcom/android/bluetooth/btservice/ProfileService;->isAvailable()Z
    invoke-static {v0}, Lcom/android/bluetooth/gatt/GattService;->access$000(Lcom/android/bluetooth/gatt/GattService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 242
    :goto_0
    return-object v0

    .line 241
    :cond_0
    const-string v0, "BtGatt.GattService"

    const-string v1, "getService() - Service requested, but not available!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCharacteristic(ILandroid/os/ParcelUuid;II)V
    .locals 2
    .parameter "serverIf"
    .parameter "charId"
    .parameter "properties"
    .parameter "permissions"

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 430
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->addCharacteristic(ILjava/util/UUID;II)V

    goto :goto_0
.end method

.method public addDescriptor(ILandroid/os/ParcelUuid;I)V
    .locals 2
    .parameter "serverIf"
    .parameter "descId"
    .parameter "permissions"

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 438
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 439
    :cond_0
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/bluetooth/gatt/GattService;->addDescriptor(ILjava/util/UUID;I)V

    goto :goto_0
.end method

.method public addIncludedService(IIILandroid/os/ParcelUuid;)V
    .locals 2
    .parameter "serverIf"
    .parameter "srvcType"
    .parameter "srvcInstanceId"
    .parameter "srvcId"

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 422
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/bluetooth/gatt/GattService;->addIncludedService(IIILjava/util/UUID;)V

    goto :goto_0
.end method

.method public beginReliableWrite(ILjava/lang/String;)V
    .locals 1
    .parameter "clientIf"
    .parameter "address"

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 359
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->beginReliableWrite(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public beginServiceDeclaration(IIIILandroid/os/ParcelUuid;)V
    .locals 6
    .parameter "serverIf"
    .parameter "srvcType"
    .parameter "srvcInstanceId"
    .parameter "minHandles"
    .parameter "srvcId"

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 414
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/gatt/GattService;->beginServiceDeclaration(IIIILjava/util/UUID;)V

    goto :goto_0
.end method

.method public cleanup()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public clearServices(I)V
    .locals 1
    .parameter "serverIf"

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 458
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->clearServices(I)V

    goto :goto_0
.end method

.method public clientConnect(ILjava/lang/String;Z)V
    .locals 1
    .parameter "clientIf"
    .parameter "address"
    .parameter "isDirect"

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 287
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->clientConnect(ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public clientDisconnect(ILjava/lang/String;)V
    .locals 1
    .parameter "clientIf"
    .parameter "address"

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 293
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->clientDisconnect(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public discoverServices(ILjava/lang/String;)V
    .locals 1
    .parameter "clientIf"
    .parameter "address"

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 305
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->discoverServices(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public endReliableWrite(ILjava/lang/String;Z)V
    .locals 1
    .parameter "clientIf"
    .parameter "address"
    .parameter "execute"

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 365
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->endReliableWrite(ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public endServiceDeclaration(I)V
    .locals 1
    .parameter "serverIf"

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 444
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->endServiceDeclaration(I)V

    goto :goto_0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
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
    .line 246
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 247
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 9
    .parameter "clientIf"
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstanceId"
    .parameter "srvcId"
    .parameter "charInstanceId"
    .parameter "charId"
    .parameter "authReq"

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 314
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->readCharacteristic(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;I)V

    goto :goto_0
.end method

.method public readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;I)V
    .locals 10
    .parameter "clientIf"
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstanceId"
    .parameter "srvcId"
    .parameter "charInstanceId"
    .parameter "charId"
    .parameter "descrId"
    .parameter "authReq"

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 337
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual/range {p8 .. p8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v8

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/bluetooth/gatt/GattService;->readDescriptor(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Ljava/util/UUID;I)V

    goto :goto_0
.end method

.method public readRemoteRssi(ILjava/lang/String;)V
    .locals 1
    .parameter "clientIf"
    .parameter "address"

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 382
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->readRemoteRssi(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public refreshDevice(ILjava/lang/String;)V
    .locals 1
    .parameter "clientIf"
    .parameter "address"

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 299
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->refreshDevice(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 2
    .parameter "uuid"
    .parameter "callback"

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 253
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/bluetooth/gatt/GattService;->registerClient(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattCallback;)V

    goto :goto_0
.end method

.method public registerForNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z)V
    .locals 9
    .parameter "clientIf"
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstanceId"
    .parameter "srvcId"
    .parameter "charInstanceId"
    .parameter "charId"
    .parameter "enable"

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 374
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->registerForNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z)V

    goto :goto_0
.end method

.method public registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    .locals 2
    .parameter "uuid"
    .parameter "callback"

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 388
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/bluetooth/gatt/GattService;->registerServer(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattServerCallback;)V

    goto :goto_0
.end method

.method public removeService(IIILandroid/os/ParcelUuid;)V
    .locals 2
    .parameter "serverIf"
    .parameter "srvcType"
    .parameter "srvcInstanceId"
    .parameter "srvcId"

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 451
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/bluetooth/gatt/GattService;->removeService(IIILjava/util/UUID;)V

    goto :goto_0
.end method

.method public sendNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z[B)V
    .locals 10
    .parameter "serverIf"
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstanceId"
    .parameter "srvcId"
    .parameter "charInstanceId"
    .parameter "charId"
    .parameter "confirm"
    .parameter "value"

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 474
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/bluetooth/gatt/GattService;->sendNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z[B)V

    goto :goto_0
.end method

.method public sendResponse(ILjava/lang/String;III[B)V
    .locals 7
    .parameter "serverIf"
    .parameter "address"
    .parameter "requestId"
    .parameter "status"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 465
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 467
    :goto_0
    return-void

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 466
    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->sendResponse(ILjava/lang/String;III[B)V

    goto :goto_0
.end method

.method public serverConnect(ILjava/lang/String;Z)V
    .locals 1
    .parameter "serverIf"
    .parameter "address"
    .parameter "isDirect"

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 400
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->serverConnect(ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public serverDisconnect(ILjava/lang/String;)V
    .locals 1
    .parameter "serverIf"
    .parameter "address"

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 406
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->serverDisconnect(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public startScan(IZ)V
    .locals 1
    .parameter "appIf"
    .parameter "isServer"

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 265
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->startScan(IZ)V

    goto :goto_0
.end method

.method public startScanWithUuids(IZ[Landroid/os/ParcelUuid;)V
    .locals 4
    .parameter "appIf"
    .parameter "isServer"
    .parameter "ids"

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v1

    .line 271
    .local v1, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v1, :cond_0

    .line 277
    :goto_0
    return-void

    .line 272
    :cond_0
    array-length v3, p3

    new-array v2, v3, [Ljava/util/UUID;

    .line 273
    .local v2, uuids:[Ljava/util/UUID;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p3

    if-eq v0, v3, :cond_1

    .line 274
    aget-object v3, p3, v0

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v2, v0

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 276
    :cond_1
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/bluetooth/gatt/GattService;->startScanWithUuids(IZ[Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public stopScan(IZ)V
    .locals 1
    .parameter "appIf"
    .parameter "isServer"

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 281
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->stopScan(IZ)V

    goto :goto_0
.end method

.method public unregisterClient(I)V
    .locals 1
    .parameter "clientIf"

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 259
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->unregisterClient(I)V

    goto :goto_0
.end method

.method public unregisterServer(I)V
    .locals 1
    .parameter "serverIf"

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 394
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->unregisterServer(I)V

    goto :goto_0
.end method

.method public writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    .locals 11
    .parameter "clientIf"
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstanceId"
    .parameter "srvcId"
    .parameter "charInstanceId"
    .parameter "charId"
    .parameter "writeType"
    .parameter "authReq"
    .parameter "value"

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 325
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/bluetooth/gatt/GattService;->writeCharacteristic(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;II[B)V

    goto :goto_0
.end method

.method public writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;II[B)V
    .locals 12
    .parameter "clientIf"
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstanceId"
    .parameter "srvcId"
    .parameter "charInstanceId"
    .parameter "charId"
    .parameter "descrId"
    .parameter "writeType"
    .parameter "authReq"
    .parameter "value"

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 350
    .local v0, service:Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual/range {p8 .. p8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v8

    move v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/bluetooth/gatt/GattService;->writeDescriptor(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Ljava/util/UUID;II[B)V

    goto :goto_0
.end method
