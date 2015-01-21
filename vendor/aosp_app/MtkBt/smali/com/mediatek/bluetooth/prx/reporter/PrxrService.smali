.class public Lcom/mediatek/bluetooth/prx/reporter/PrxrService;
.super Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub;
.source "PrxrService.java"

# interfaces
.implements Lcom/mediatek/bluetooth/psm/PsmServiceBinder;


# static fields
.field private static final PRXR_PREFERENCE_KEY_STATE:Ljava/lang/String; = "prxr_pref_state"

.field private static final PRXR_PREFERENCE_NAME:Ljava/lang/String; = "prxr_pref"

.field private static final STATE_DISABLING:I = 0x2

.field private static final STATE_ENABLED:I = 0x3

.field private static final STATE_ENABLING:I = 0x1

.field private static final STATE_NEW:I


# instance fields
.field private connId:[I

.field private connState:[B

.field private prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

.field private registeredCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private serviceState:I


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;)V
    .locals 4
    .parameter "prxrPsm"

    .prologue
    const/4 v3, 0x1

    .line 122
    invoke-direct {p0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub;-><init>()V

    .line 124
    const-string v1, "PrxrService()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->i(Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    .line 126
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->serviceState:I

    .line 127
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    .line 128
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connState:[B

    .line 129
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 131
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->registeredCallbacks:Ljava/util/List;

    .line 134
    return-void
.end method

.method private declared-synchronized enableServiceImpl()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 452
    monitor-enter p0

    :try_start_0
    const-string v4, "enableServiceImpl()[+]"

    invoke-static {v4}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 454
    iget v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->serviceState:I

    if-nez v4, :cond_3

    .line 457
    const/4 v4, 0x1

    iput v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->serviceState:I

    .line 460
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 462
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connState:[B

    const/4 v5, 0x0

    aput-byte v5, v4, v2

    .line 460
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 466
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_2

    .line 469
    new-instance v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;

    invoke-direct {v0}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    .local v0, conn:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    invoke-virtual {v5, v0}, Lcom/mediatek/bluetooth/psm/Psm;->registerConnection(Lcom/mediatek/bluetooth/psm/PsmConnection;)I

    move-result v5

    aput v5, v4, v2

    .line 475
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    aget v4, v4, v2

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->register(I)I

    move-result v3

    .line 478
    .local v3, resultCode:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/psm/ResultCode;->status(I)I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PrxrService.enableService() register failed: connId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], resultCode["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;)V

    .line 482
    invoke-direct {p0}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->resetService()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 499
    .end local v0           #conn:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;
    .end local v2           #i:I
    .end local v3           #resultCode:I
    :goto_2
    monitor-exit p0

    return v3

    .line 488
    .restart local v0       #conn:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;
    .restart local v2       #i:I
    :catch_0
    move-exception v1

    .line 490
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register connection["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 495
    .end local v0           #conn:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;
    :cond_2
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v3

    goto :goto_2

    .line 498
    .end local v2           #i:I
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableService() fail: invalid service state["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->serviceState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;)V

    .line 499
    const/4 v4, 0x3

    const/16 v5, 0x33

    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    goto :goto_2

    .line 452
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private forwardResult(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 350
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->registeredCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 352
    .local v1, rr:Landroid/os/ResultReceiver;
    invoke-virtual {v1, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 354
    .end local v1           #rr:Landroid/os/ResultReceiver;
    :cond_0
    return-void
.end method

.method private getConnection(Ljava/lang/String;)Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;
    .locals 6
    .parameter "bdaddr"

    .prologue
    const/4 v3, 0x0

    .line 602
    if-nez p1, :cond_0

    move-object v2, v3

    .line 616
    :goto_0
    return-object v2

    .line 605
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v4, 0x1

    if-ge v1, v4, :cond_3

    .line 607
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    aget v4, v4, v1

    if-gez v4, :cond_2

    .line 605
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 608
    :cond_2
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/mediatek/bluetooth/psm/Psm;->getConnection(I)Lcom/mediatek/bluetooth/psm/PsmConnection;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;

    .line 609
    .local v2, ppc:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;
    if-eqz v2, :cond_1

    .line 610
    invoke-virtual {v2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;->getPeerDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 611
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #ppc:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;
    :cond_3
    move-object v2, v3

    .line 616
    goto :goto_0
.end method

.method private handleRegisterCnf(Lcom/mediatek/bluetooth/psm/PsmMessage;)V
    .locals 8
    .parameter "message"

    .prologue
    const/4 v6, 0x1

    .line 248
    const-string v5, "handleRegisterCnf()[+]:"

    invoke-static {v5}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 251
    iget v5, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->serviceState:I

    if-eq v5, v6, :cond_1

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid state for register-cnf message, state:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->serviceState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/bluetooth/util/BtLog;->w(Ljava/lang/String;)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/psm/PsmMessage;->getIndex()B

    move-result v0

    .line 259
    .local v0, cid:I
    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v4

    .line 260
    .local v4, rspcode:B
    iget-object v7, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connState:[B

    if-nez v4, :cond_3

    move v5, v6

    :goto_1
    int-to-byte v5, v5

    aput-byte v5, v7, v0

    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, hasSuccess:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 266
    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connState:[B

    aget-byte v5, v5, v2

    if-eqz v5, :cond_0

    .line 267
    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connState:[B

    aget-byte v5, v5, v2

    if-ne v5, v6, :cond_2

    .line 269
    const/4 v1, 0x1

    .line 263
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 260
    .end local v1           #hasSuccess:Z
    .end local v2           #i:I
    :cond_3
    const/4 v5, -0x1

    goto :goto_1

    .line 274
    .restart local v1       #hasSuccess:Z
    .restart local v2       #i:I
    :cond_4
    if-eqz v1, :cond_5

    .line 277
    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    invoke-virtual {v5}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v5

    const/16 v7, 0xb

    invoke-static {v5, v7}, Lcom/mediatek/bluetooth/prx/reporter/PrxrUtils;->broadcastProfileManagerActivationState(Landroid/content/Context;I)V

    .line 280
    const/4 v5, 0x3

    iput v5, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->serviceState:I

    .line 281
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 282
    .local v3, result:Landroid/os/Bundle;
    const-string v5, "rspcode"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 283
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/ilm/Message;->getId()I

    move-result v5

    invoke-direct {p0, v5, v3}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->forwardResult(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 286
    .end local v3           #result:Landroid/os/Bundle;
    :cond_5
    const-string v5, "enable service failed"

    invoke-static {v5}, Lcom/mediatek/bluetooth/util/BtLog;->w(Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->resetService()V

    .line 290
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 291
    .restart local v3       #result:Landroid/os/Bundle;
    const-string v5, "rspcode"

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 292
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/ilm/Message;->getId()I

    move-result v5

    invoke-direct {p0, v5, v3}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->forwardResult(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private handleUnregisterCnf(Lcom/mediatek/bluetooth/psm/PsmMessage;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 305
    const-string v3, "handleUnregisterCnf()[+]"

    invoke-static {v3}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 308
    iget v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->serviceState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid state for unregister-cnf message, state:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->serviceState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/util/BtLog;->w(Ljava/lang/String;)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/psm/PsmMessage;->getIndex()B

    move-result v0

    .line 316
    .local v0, cid:B
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetooth/psm/Psm;->unregisterConnection(I)Z

    .line 317
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    .line 320
    const/4 v1, 0x0

    .line 321
    .local v1, hasPending:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 324
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    aget v3, v3, v2

    if-gez v3, :cond_2

    .line 321
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 327
    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    .line 329
    :cond_3
    if-nez v1, :cond_0

    .line 332
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v3

    const/16 v4, 0xd

    invoke-static {v3, v4}, Lcom/mediatek/bluetooth/prx/reporter/PrxrUtils;->broadcastProfileManagerActivationState(Landroid/content/Context;I)V

    .line 335
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->serviceState:I

    .line 338
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/ilm/Message;->getId()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->forwardResult(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private register(I)I
    .locals 3
    .parameter "connId"

    .prologue
    .line 622
    const-string v0, "register()[+]"

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    new-instance v1, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v2, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_REGISTER_REQ:[I

    invoke-direct {v1, v2, p1}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->handleMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v0

    return v0
.end method

.method private resetService()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 361
    const-string v4, "resetService()[+]"

    invoke-static {v4}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 364
    const/4 v4, 0x2

    iput v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->serviceState:I

    .line 367
    const/4 v2, 0x1

    .line 368
    .local v2, isDone:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 371
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    aget v4, v4, v1

    if-gez v4, :cond_0

    .line 368
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->unregister(I)I

    move-result v3

    .line 376
    .local v3, resultCode:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/psm/ResultCode;->status(I)I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 378
    const/4 v2, 0x0

    goto :goto_1

    .line 382
    :cond_1
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/mediatek/bluetooth/psm/Psm;->unregisterConnection(I)Z

    .line 383
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    const/4 v5, -0x1

    aput v5, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 386
    .end local v3           #resultCode:I
    :catch_0
    move-exception v0

    .line 388
    .local v0, ex:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterAllConnections.unregister("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 393
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    if-eqz v2, :cond_3

    .line 395
    const/4 v4, 0x0

    iput v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->serviceState:I

    .line 397
    :cond_3
    return-void
.end method

.method private unregister(I)I
    .locals 3
    .parameter "connId"

    .prologue
    .line 628
    const-string v0, "unregister()[+]"

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    new-instance v1, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v2, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_DEREGISTER_REQ:[I

    invoke-direct {v1, v2, p1}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->handleMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized disableService()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 510
    monitor-enter p0

    :try_start_0
    const-string v2, "disableService()"

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 513
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v2

    const-string v3, "prxr_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 514
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 515
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "prxr_pref_state"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 516
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 519
    iget v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->serviceState:I

    if-ne v2, v5, :cond_0

    .line 522
    invoke-direct {p0}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->resetService()V

    .line 523
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 526
    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x3

    const/16 v3, 0x33

    :try_start_1
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 510
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public disconnect(I)I
    .locals 3
    .parameter "connId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 641
    const-string v0, "disconnect()[+]"

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    new-instance v1, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v2, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_DISCONNECT_REQ:[I

    invoke-direct {v1, v2, p1}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->handleMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v0

    return v0
.end method

.method public disconnectByAddr(Ljava/lang/String;)I
    .locals 3
    .parameter "bdaddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect()[+]: bdaddr["

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

    .line 653
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->getConnection(Ljava/lang/String;)Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;

    move-result-object v0

    .line 654
    .local v0, ppc:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;
    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/psm/PsmConnection;->getConnId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->disconnect(I)I

    move-result v1

    .line 657
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x3

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized enableService()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v2

    const-string v3, "prxr_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 442
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 443
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "prxr_pref_state"

    const/4 v3, 0x3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 444
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 447
    invoke-direct {p0}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->enableServiceImpl()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    .line 441
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 173
    return-object p0
.end method

.method public getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 584
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 585
    .local v2, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 588
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    aget v3, v3, v0

    if-gez v3, :cond_1

    .line 585
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    :cond_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/mediatek/bluetooth/psm/Psm;->getConnection(I)Lcom/mediatek/bluetooth/psm/PsmConnection;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;

    .line 591
    .local v1, ppc:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;
    if-eqz v1, :cond_0

    .line 592
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/psm/PsmConnection;->getCurrentState()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 593
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;->getPeerDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 597
    .end local v1           #ppc:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/bluetooth/BluetoothDevice;

    return-object v3
.end method

.method public getProfileManagerState(Ljava/lang/String;)I
    .locals 5
    .parameter "bdaddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfileManagerState()[+]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 561
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->getConnection(Ljava/lang/String;)Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;

    move-result-object v0

    .line 562
    .local v0, ppc:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;
    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/psm/PsmConnection;->getCurrentState()I

    move-result v1

    .line 565
    .local v1, state:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cuurent connection: state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 566
    packed-switch v1, :pswitch_data_0

    .line 574
    const/16 v2, 0xe

    .line 577
    .end local v1           #state:I
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 567
    .restart local v1       #state:I
    :pswitch_1
    const/16 v2, 0xd

    goto :goto_0

    .line 569
    :pswitch_2
    const/4 v2, 0x1

    goto :goto_0

    .line 570
    :pswitch_3
    const/4 v2, 0x3

    goto :goto_0

    .line 571
    :pswitch_4
    const/4 v2, 0x4

    goto :goto_0

    .line 572
    :pswitch_5
    const/16 v2, 0xa

    goto :goto_0

    .line 573
    :pswitch_6
    const/16 v2, 0xc

    goto :goto_0

    .line 566
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public getServiceState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 539
    iget v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->serviceState:I

    packed-switch v1, :pswitch_data_0

    .line 550
    :goto_0
    :pswitch_0
    return v0

    .line 543
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 545
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 547
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onMessageReceived(Lcom/mediatek/bluetooth/psm/PsmMessage;)V
    .locals 8
    .parameter "message"

    .prologue
    const/4 v6, 0x5

    const/4 v7, 0x0

    .line 178
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/psm/PsmMessage;->getIndex()B

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/bluetooth/psm/Psm;->getConnection(I)Lcom/mediatek/bluetooth/psm/PsmConnection;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;

    .line 179
    .local v2, ppc:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;
    if-nez v2, :cond_1

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PrxrService.onMessageReceived() error: can\'t find PrxrPsmConn for message["

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

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/ilm/Message;->getId()I

    move-result v1

    .line 186
    .local v1, messageId:I
    packed-switch v1, :pswitch_data_0

    .line 234
    :pswitch_0
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->forwardResult(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 188
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->handleRegisterCnf(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    goto :goto_0

    .line 191
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->handleUnregisterCnf(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    goto :goto_0

    .line 196
    :pswitch_3
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/psm/PsmMessage;->getIndex()B

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->responseAuthorizeInd(IB)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v3

    .line 200
    .local v3, re:Landroid/os/RemoteException;
    const-string v4, "responseConnectInd() error."

    invoke-static {v4, v3}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 205
    .end local v3           #re:Landroid/os/RemoteException;
    :pswitch_4
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;->getPeerDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/mediatek/bluetooth/prx/reporter/PrxrUtils;->broadcastProfileManagerStateChanged(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.mediatek.bluetooth.prx.action.LINK_LOSS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "com.mediatek.bluetooth.prx.extra.ALERT_LEVEL"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 209
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;->getPeerDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 210
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 214
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_5
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;->getPeerDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/mediatek/bluetooth/prx/reporter/PrxrUtils;->broadcastProfileManagerStateChanged(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 217
    :pswitch_6
    invoke-virtual {v2}, Lcom/mediatek/bluetooth/psm/PsmConnection;->getCurrentState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.mediatek.bluetooth.prx.action.LINK_LOSS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "com.mediatek.bluetooth.prx.extra.ALERT_LEVEL"

    invoke-virtual {p1, v6}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 221
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;->getPeerDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 222
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 227
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.mediatek.bluetooth.prx.action.PATH_LOSS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "com.mediatek.bluetooth.prx.extra.ALERT_LEVEL"

    invoke-virtual {p1, v6}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 229
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;->getPeerDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 230
    iget-object v4, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public onServiceBind()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v2

    const-string v3, "prxr_pref"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "prxr_pref_state"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 142
    .local v1, state:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->enableServiceImpl()I

    .line 146
    :cond_0
    return-void
.end method

.method public onServiceDestroy()V
    .locals 5

    .prologue
    .line 150
    iget v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->serviceState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 153
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    .line 155
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    aget v2, v2, v0

    if-gez v2, :cond_1

    .line 153
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    iget-object v3, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->connId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/mediatek/bluetooth/psm/Psm;->getConnection(I)Lcom/mediatek/bluetooth/psm/PsmConnection;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;

    .line 157
    .local v1, ppc:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;
    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/psm/PsmConnection;->getCurrentState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 159
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;->getPeerDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/mediatek/bluetooth/prx/reporter/PrxrUtils;->broadcastProfileManagerStateChanged(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_1

    .line 164
    .end local v1           #ppc:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->resetService()V

    .line 167
    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/psm/Psm;->getService()Landroid/app/Service;

    move-result-object v2

    const/16 v3, 0xd

    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/prx/reporter/PrxrUtils;->broadcastProfileManagerActivationState(Landroid/content/Context;I)V

    .line 169
    .end local v0           #i:I
    :cond_3
    return-void
.end method

.method public registerCallback(Landroid/os/ResultReceiver;)V
    .locals 1
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 407
    const-string v0, "PrxrService.registerCallback()[+]"

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 409
    if-eqz p1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->registeredCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_0
    return-void
.end method

.method public responseAuthorizeInd(IB)I
    .locals 2
    .parameter "connId"
    .parameter "rspcode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 634
    new-instance v0, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v1, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_AUTHORIZE_RSP:[I

    invoke-direct {v0, v1, p1}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    .line 635
    .local v0, rsp:Lcom/mediatek/bluetooth/psm/PsmMessage;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/bluetooth/ilm/Message;->setByte(IB)V

    .line 636
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->prxrPsm:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;

    invoke-virtual {v1, v0}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->handleMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v1

    return v1
.end method

.method public unregisterCallback(Landroid/os/ResultReceiver;)Z
    .locals 1
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 423
    const-string v0, "PrxrService.unregisterCallback()[+]"

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 425
    if-eqz p1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;->registeredCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 429
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
