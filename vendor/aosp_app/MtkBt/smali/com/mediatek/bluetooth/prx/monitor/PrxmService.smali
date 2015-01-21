.class public Lcom/mediatek/bluetooth/prx/monitor/PrxmService;
.super Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;
.source "PrxmService.java"

# interfaces
.implements Lcom/mediatek/bluetooth/psm/PsmServiceBinder;


# instance fields
.field private connMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private contentResolver:Landroid/content/ContentResolver;

.field private prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

.field private registeredDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;)V
    .locals 17
    .parameter "prxmPsm"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;-><init>()V

    .line 86
    const-string v2, "PrxmService()[+]"

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->i(Ljava/lang/String;)V

    .line 89
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    .line 90
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->connMap:Ljava/util/HashMap;

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->registeredDevices:Ljava/util/ArrayList;

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->contentResolver:Landroid/content/ContentResolver;

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mediatek/bluetooth/prx/monitor/PrxmProvider$BluetoothPrxmDeviceMetaData;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 96
    .local v11, c:Landroid/database/Cursor;
    invoke-static {v11}, Lcom/mediatek/bluetooth/prx/monitor/PrxmProvider;->fetchDevices(Landroid/database/Cursor;)[Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v13

    .line 97
    .local v13, dl:[Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    .line 98
    .local v10, bta:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v9

    .line 99
    .local v9, bondedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    move-object v8, v13

    .local v8, arr$:[Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    aget-object v12, v8, v15

    .line 103
    .local v12, d:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    :try_start_0
    invoke-virtual {v12}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->registerDevice(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;)V

    .line 99
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 109
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mediatek/bluetooth/prx/monitor/PrxmProvider$BluetoothPrxmDeviceMetaData;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addr=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 114
    :catch_0
    move-exception v14

    .line 116
    .local v14, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading saved BluetoothDevice["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 119
    .end local v12           #d:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    .end local v14           #ex:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private getConnId(Ljava/lang/String;)I
    .locals 4
    .parameter "bdaddr"

    .prologue
    .line 496
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->connMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 497
    .local v0, connId:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnId failed - invalid bdaddr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;)V

    .line 500
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid bdaddr:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 503
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private getConnection(Ljava/lang/String;)Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;
    .locals 4
    .parameter "bdaddr"

    .prologue
    .line 515
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->getConnId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/psm/Psm;->getConnection(I)Lcom/mediatek/bluetooth/psm/PsmConnection;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;

    .line 516
    .local v0, result:Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;
    if-nez v0, :cond_0

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnection failed - bdaddr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;)V

    .line 519
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid bdaddr:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 521
    :cond_0
    return-object v0
.end method

.method private registerDevice(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;)V
    .locals 3
    .parameter "deviceInfo"

    .prologue
    .line 265
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    new-instance v2, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;

    invoke-direct {v2, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;-><init>(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/psm/Psm;->registerConnection(Lcom/mediatek/bluetooth/psm/PsmConnection;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 266
    .local v0, connId:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->connMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->registeredDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method


# virtual methods
.method public configPathLossLevel(Ljava/lang/String;B)I
    .locals 7
    .parameter "bdaddr"
    .parameter "level"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 374
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->getDeviceInfo(Ljava/lang/String;)Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v1

    .line 375
    .local v1, device:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    invoke-virtual {v1, p2}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->setPathLossLevel(B)V

    .line 378
    sget-object v3, Lcom/mediatek/bluetooth/prx/monitor/PrxmProvider$BluetoothPrxmDeviceMetaData;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 379
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 380
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "path_ll"

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getPathLossLevel()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 381
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 383
    invoke-static {v5}, Lcom/mediatek/bluetooth/psm/ResultCode;->rspcode(I)I

    move-result v3

    return v3
.end method

.method public configPathLossThreshold(Ljava/lang/String;B)I
    .locals 7
    .parameter "bdaddr"
    .parameter "threshold"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 391
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->getDeviceInfo(Ljava/lang/String;)Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v1

    .line 392
    .local v1, device:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    invoke-virtual {v1, p2}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->setPathLossThreshold(B)V

    .line 395
    sget-object v3, Lcom/mediatek/bluetooth/prx/monitor/PrxmProvider$BluetoothPrxmDeviceMetaData;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 396
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 397
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "path_lt"

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getPathLossThreshold()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 398
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 400
    invoke-static {v5}, Lcom/mediatek/bluetooth/psm/ResultCode;->rspcode(I)I

    move-result v3

    return v3
.end method

.method public connect(Ljava/lang/String;)I
    .locals 4
    .parameter "bdaddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect()[+]: bdaddr["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 429
    new-instance v0, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v1, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_CONNECT_REQ:[I

    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->getConnId(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    .line 430
    .local v0, req:Lcom/mediatek/bluetooth/psm/PsmMessage;
    const/4 v1, 0x5

    const/4 v2, 0x6

    invoke-static {p1}, Lcom/mediatek/bluetooth/util/ConvertUtils;->convertBdAddr(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/ilm/Message;->setByteArray(II[B)V

    .line 431
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    invoke-virtual {v1, v0}, Lcom/mediatek/bluetooth/psm/Psm;->handleMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v1

    return v1
.end method

.method public connectByProfileManager(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectByProfileManager()[+]: device["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 413
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.bluetooth.prx.monitor.device.setting.action.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 415
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 416
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 418
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v1

    return v1
.end method

.method public disconnect(Ljava/lang/String;)I
    .locals 4
    .parameter "bdaddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect()[+]: bdaddr["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    new-instance v1, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v2, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_DISCONNECT_REQ:[I

    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->getConnId(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/psm/Psm;->handleMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v0

    return v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 141
    return-object p0
.end method

.method public getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->registeredDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->registeredDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    .local v2, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->registeredDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    .line 210
    .local v0, device:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getCurrentState()B

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    .end local v0           #device:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/bluetooth/BluetoothDevice;

    .line 218
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;

    goto :goto_1
.end method

.method public getDeviceInfo(Ljava/lang/String;)Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    .locals 1
    .parameter "bdaddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->getConnection(Ljava/lang/String;)Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v0

    return-object v0
.end method

.method public getProfileManagerState(Ljava/lang/String;)I
    .locals 4
    .parameter "bdaddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 354
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->connMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 355
    .local v0, connId:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 365
    :goto_0
    :pswitch_0
    return v2

    .line 359
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->getConnection(Ljava/lang/String;)Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getCurrentState()B

    move-result v1

    .line 360
    .local v1, localState:I
    packed-switch v1, :pswitch_data_0

    .line 365
    const/4 v2, 0x5

    goto :goto_0

    .line 362
    :pswitch_1
    const/4 v2, 0x3

    goto :goto_0

    .line 363
    :pswitch_2
    const/4 v2, 0x4

    goto :goto_0

    .line 364
    :pswitch_3
    const/4 v2, 0x1

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized getRegisteredDevices()[Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->registeredDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->registeredDevices:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->registeredDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteCapability(Ljava/lang/String;)I
    .locals 4
    .parameter "bdaddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    new-instance v1, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v2, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_GET_CAPABILITY_REQ:[I

    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->getConnId(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/psm/Psm;->handleMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v0

    return v0
.end method

.method public getRemoteTxPower(Ljava/lang/String;)I
    .locals 4
    .parameter "bdaddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    new-instance v1, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v2, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_GET_REMOTE_TXPOWER_REQ:[I

    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->getConnId(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/psm/Psm;->handleMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v0

    return v0
.end method

.method public onMessageReceived(Lcom/mediatek/bluetooth/psm/PsmMessage;)V
    .locals 7
    .parameter "message"

    .prologue
    const/4 v6, 0x5

    .line 147
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/psm/PsmMessage;->getIndex()B

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/bluetooth/psm/Psm;->getConnection(I)Lcom/mediatek/bluetooth/psm/PsmConnection;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;

    .line 148
    .local v0, conn:Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;
    if-nez v0, :cond_0

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PrxmService.onMessageReceived() error: can\'t get PrxmPsmConn for message["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/ilm/Message;->toPrintString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/ilm/Message;->getId()I

    move-result v1

    .line 157
    .local v1, mid:I
    sparse-switch v1, :sswitch_data_0

    .line 174
    const/16 v3, 0x7f

    .line 178
    .local v3, rspcode:B
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getCallback()Landroid/os/ResultReceiver;

    move-result-object v4

    if-nez v4, :cond_2

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PrxmService: no callback for message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/ilm/Message;->toPrintString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/bluetooth/util/BtLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .end local v3           #rspcode:B
    :sswitch_0
    invoke-virtual {p1, v6}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v3

    .line 161
    .restart local v3       #rspcode:B
    if-nez v3, :cond_1

    .line 162
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/mediatek/bluetooth/prx/monitor/PrxmUtils;->broadcastProfileManagerStateChanged(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_1

    .line 166
    .end local v3           #rspcode:B
    :sswitch_1
    invoke-virtual {p1, v6}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v3

    .line 168
    .restart local v3       #rspcode:B
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/mediatek/bluetooth/prx/monitor/PrxmUtils;->broadcastProfileManagerStateChanged(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_1

    .line 171
    .end local v3           #rspcode:B
    :sswitch_2
    invoke-virtual {p1, v6}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v3

    .line 172
    .restart local v3       #rspcode:B
    goto :goto_1

    .line 183
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v2, resultData:Landroid/os/Bundle;
    const-string v4, "rspcode"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 185
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getCallback()Landroid/os/ResultReceiver;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 157
    nop

    :sswitch_data_0
    .sparse-switch
        0xb55 -> :sswitch_0
        0xb57 -> :sswitch_1
        0xb5f -> :sswitch_2
    .end sparse-switch
.end method

.method public onServiceBind()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmUtils;->broadcastProfileManagerActivationState(Landroid/content/Context;I)V

    .line 126
    return-void
.end method

.method public onServiceDestroy()V
    .locals 5

    .prologue
    .line 131
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->registeredDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    .line 132
    .local v0, device:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getCurrentState()B

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 133
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/mediatek/bluetooth/prx/monitor/PrxmUtils;->broadcastProfileManagerStateChanged(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 137
    .end local v0           #device:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v2

    const/16 v3, 0xd

    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/prx/monitor/PrxmUtils;->broadcastProfileManagerActivationState(Landroid/content/Context;I)V

    .line 138
    return-void
.end method

.method public declared-synchronized registerDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 232
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerDevice()[+]: device["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 235
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->connMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    const/4 v2, 0x0

    .line 254
    :goto_0
    monitor-exit p0

    return v2

    .line 241
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-direct {v0, p1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 242
    .local v0, deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->setLinkLossLevel(B)V

    .line 243
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->setPathLossLevel(B)V

    .line 244
    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->setPathLossThreshold(B)V

    .line 245
    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->registerDevice(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;)V

    .line 247
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->contentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/mediatek/bluetooth/prx/monitor/PrxmProvider$BluetoothPrxmDeviceMetaData;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmProvider;->getContentValues(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 248
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PrxmService.registerDevice() fail: can\'t insert device["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 232
    .end local v0           #deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    .end local v1           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 252
    .restart local v0       #deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->setId(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized registerDeviceCallback(Ljava/lang/String;Landroid/os/ResultReceiver;)Z
    .locals 3
    .parameter "bdaddr"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    const-string v1, "registerDeviceCallback()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 318
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->getConnection(Ljava/lang/String;)Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;

    move-result-object v0

    .line 319
    .local v0, conn:Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getCallback()Landroid/os/ResultReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDeviceCallback() will override existing callback for device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->w(Ljava/lang/String;)V

    .line 323
    :cond_0
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->setCallback(Landroid/os/ResultReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 316
    .end local v0           #conn:Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setLinkLoss(Ljava/lang/String;B)I
    .locals 7
    .parameter "bdaddr"
    .parameter "level"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 467
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->getDeviceInfo(Ljava/lang/String;)Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v1

    .line 468
    .local v1, device:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    sget-object v4, Lcom/mediatek/bluetooth/prx/monitor/PrxmProvider$BluetoothPrxmDeviceMetaData;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 469
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 470
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "link_ll"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 471
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v3, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 473
    new-instance v2, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v4, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_SET_LINKLOSS_REQ:[I

    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->getConnId(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    .line 474
    .local v2, req:Lcom/mediatek/bluetooth/psm/PsmMessage;
    const/4 v4, 0x5

    invoke-virtual {v2, v4, p2}, Lcom/mediatek/bluetooth/ilm/Message;->setByte(IB)V

    .line 475
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    invoke-virtual {v4, v2}, Lcom/mediatek/bluetooth/psm/Psm;->handleMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v4

    return v4
.end method

.method public setPathLoss(Ljava/lang/String;B)I
    .locals 3
    .parameter "bdaddr"
    .parameter "level"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 483
    new-instance v0, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v1, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_SET_PATHLOSS_REQ:[I

    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->getConnId(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    .line 484
    .local v0, req:Lcom/mediatek/bluetooth/psm/PsmMessage;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/bluetooth/ilm/Message;->setByte(IB)V

    .line 485
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    invoke-virtual {v1, v0}, Lcom/mediatek/bluetooth/psm/Psm;->handleMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v1

    return v1
.end method

.method public declared-synchronized unregisterDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, address:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterDevice()[+]: device["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->getDeviceInfo(Ljava/lang/String;)Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v2

    .line 284
    .local v2, prxr:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    invoke-virtual {v2}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getCurrentState()B

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 285
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->disconnect(Ljava/lang/String;)I

    .line 286
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lcom/mediatek/bluetooth/prx/monitor/PrxmUtils;->broadcastProfileManagerStateChanged(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    .end local v2           #prxr:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->contentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/mediatek/bluetooth/prx/monitor/PrxmProvider$BluetoothPrxmDeviceMetaData;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addr=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 300
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->registeredDevices:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-direct {v4, p1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 303
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->prxmPsm:Lcom/mediatek/bluetooth/psm/Psm;

    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->connMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/mediatek/bluetooth/psm/Psm;->unregisterConnection(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    .line 289
    :catch_0
    move-exception v1

    .line 291
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect device["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 278
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized unregisterDeviceCallback(Ljava/lang/String;)V
    .locals 2
    .parameter "bdaddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    const-string v0, "unregisterDeviceCallback()[+]"

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 337
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;->getConnection(Ljava/lang/String;)Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->setCallback(Landroid/os/ResultReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
