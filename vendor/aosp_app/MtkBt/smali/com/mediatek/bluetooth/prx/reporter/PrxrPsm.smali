.class public Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;
.super Lcom/mediatek/bluetooth/psm/Psm;
.source "PrxrPsm.java"


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/psm/PsmService;)V
    .locals 7
    .parameter "psmService"

    .prologue
    const/4 v5, 0x1

    .line 100
    const/16 v1, 0x12

    const/16 v3, 0xbb8

    const/16 v4, 0xbc5

    move-object v0, p0

    move-object v2, p1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/bluetooth/psm/Psm;-><init>(ILcom/mediatek/bluetooth/psm/PsmService;IIII)V

    .line 106
    return-void
.end method

.method private handleConnectInd(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I
    .locals 4
    .parameter "conn"
    .parameter "message"

    .prologue
    const/4 v3, 0x6

    .line 357
    invoke-virtual {p1, v3}, Lcom/mediatek/bluetooth/psm/PsmConnection;->setCurrentState(I)V

    move-object v1, p1

    .line 359
    check-cast v1, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;

    .line 360
    .local v1, ppc:Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;
    const/4 v2, 0x5

    invoke-virtual {p2, v2, v3}, Lcom/mediatek/bluetooth/ilm/Message;->getByteArray(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/ConvertUtils;->convertBdAddr([B)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, peerAddr:Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;->setPeerDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 363
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->recvMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 364
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v2

    return v2
.end method

.method private handleDisconnectInd(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I
    .locals 1
    .parameter "conn"
    .parameter "message"

    .prologue
    .line 377
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mediatek/bluetooth/psm/PsmConnection;->setCurrentState(I)V

    .line 379
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->recvMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 381
    check-cast p1, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;->setPeerDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 382
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v0

    return v0
.end method

.method private handleUnregisterReq(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I
    .locals 3
    .parameter "conn"
    .parameter "message"

    .prologue
    .line 337
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/mediatek/bluetooth/psm/PsmConnection;->setCurrentState(I)V

    .line 340
    new-instance v0, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v1, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_DISCONNECT_REQ:[I

    invoke-virtual {p2}, Lcom/mediatek/bluetooth/psm/PsmMessage;->getIndex()B

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/psm/Psm;->sendMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 345
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v0

    return v0
.end method

.method private stateConnectable(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I
    .locals 3
    .parameter "connection"
    .parameter "message"

    .prologue
    .line 233
    const-string v1, "stateConnectable()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/ilm/Message;->getId()I

    move-result v0

    .line 236
    .local v0, messageId:I
    packed-switch v0, :pswitch_data_0

    .line 249
    :pswitch_0
    const/4 v1, 0x3

    const/16 v2, 0x33

    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v1

    :goto_0
    return v1

    .line 239
    :pswitch_1
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/mediatek/bluetooth/psm/PsmConnection;->setCurrentState(I)V

    .line 240
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->recvMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 241
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v1

    goto :goto_0

    .line 244
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->handleConnectInd(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v1

    goto :goto_0

    .line 246
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->handleUnregisterReq(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v1

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0xbba
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private stateConnected(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I
    .locals 3
    .parameter "connection"
    .parameter "message"

    .prologue
    const/4 v2, 0x1

    .line 303
    const-string v1, "stateConnected()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/ilm/Message;->getId()I

    move-result v0

    .line 306
    .local v0, messageId:I
    packed-switch v0, :pswitch_data_0

    .line 322
    :pswitch_0
    const/4 v1, 0x3

    const/16 v2, 0x33

    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v1

    :goto_0
    return v1

    .line 308
    :pswitch_1
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/mediatek/bluetooth/psm/PsmConnection;->setCurrentState(I)V

    .line 309
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->sendMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 310
    invoke-static {v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v1

    goto :goto_0

    .line 312
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->handleDisconnectInd(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v1

    goto :goto_0

    .line 314
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->handleUnregisterReq(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v1

    goto :goto_0

    .line 318
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->recvMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 319
    invoke-static {v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v1

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0xbba
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private stateConnecting(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I
    .locals 4
    .parameter "connection"
    .parameter "message"

    .prologue
    const/4 v3, 0x3

    .line 255
    const-string v2, "stateConnecting()[+]"

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/ilm/Message;->getId()I

    move-result v0

    .line 258
    .local v0, messageId:I
    packed-switch v0, :pswitch_data_0

    .line 276
    :pswitch_0
    const/16 v2, 0x33

    invoke-static {v3, v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v2

    :goto_0
    return v2

    .line 261
    :pswitch_1
    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v1

    .line 262
    .local v1, rspcode:B
    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {p1, v3}, Lcom/mediatek/bluetooth/psm/PsmConnection;->setCurrentState(I)V

    .line 265
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->sendMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 266
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v2

    goto :goto_0

    .line 268
    .end local v1           #rspcode:B
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->handleConnectInd(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v2

    goto :goto_0

    .line 270
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->handleUnregisterReq(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v2

    goto :goto_0

    .line 273
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->handleDisconnectInd(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v2

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0xbba
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private stateDisconnecting(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I
    .locals 3
    .parameter "connection"
    .parameter "message"

    .prologue
    .line 282
    const-string v1, "stateDisconnecting()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/ilm/Message;->getId()I

    move-result v0

    .line 285
    .local v0, messageId:I
    packed-switch v0, :pswitch_data_0

    .line 297
    :pswitch_0
    const/4 v1, 0x3

    const/16 v2, 0x33

    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v1

    :goto_0
    return v1

    .line 287
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->handleDisconnectInd(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v1

    goto :goto_0

    .line 289
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->handleUnregisterReq(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v1

    goto :goto_0

    .line 293
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->recvMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 294
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v1

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0xbba
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private stateNew(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I
    .locals 3
    .parameter "connection"
    .parameter "message"

    .prologue
    const/4 v2, 0x1

    .line 162
    const-string v1, "stateNew()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/ilm/Message;->getId()I

    move-result v0

    .line 165
    .local v0, messageId:I
    packed-switch v0, :pswitch_data_0

    .line 173
    const/4 v1, 0x3

    const/16 v2, 0x33

    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v1

    :goto_0
    return v1

    .line 168
    :pswitch_0
    invoke-virtual {p1, v2}, Lcom/mediatek/bluetooth/psm/PsmConnection;->setCurrentState(I)V

    .line 169
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->sendMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 170
    invoke-static {v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v1

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_0
    .end packed-switch
.end method

.method private stateRegistering(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I
    .locals 6
    .parameter "connection"
    .parameter "message"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 179
    const-string v2, "stateRegistering()[+]"

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/ilm/Message;->getId()I

    move-result v0

    .line 182
    .local v0, messageId:I
    packed-switch v0, :pswitch_data_0

    .line 202
    const/16 v2, 0x33

    invoke-static {v5, v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v2

    :goto_0
    return v2

    .line 185
    :pswitch_0
    invoke-virtual {p2, v3}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v1

    .line 187
    .local v1, regRsp:B
    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_1

    .line 189
    :cond_0
    invoke-virtual {p2, v3, v4}, Lcom/mediatek/bluetooth/ilm/Message;->setByte(IB)V

    .line 190
    invoke-virtual {p1, v5}, Lcom/mediatek/bluetooth/psm/PsmConnection;->setCurrentState(I)V

    .line 195
    :goto_1
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->recvMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 196
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v2

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p1, v4}, Lcom/mediatek/bluetooth/psm/PsmConnection;->setCurrentState(I)V

    goto :goto_1

    .line 199
    .end local v1           #regRsp:B
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->handleUnregisterReq(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v2

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private stateUnregistering(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I
    .locals 5
    .parameter "connection"
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    .line 208
    const-string v1, "stateUnregistering()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/ilm/Message;->getId()I

    move-result v0

    .line 211
    .local v0, messageId:I
    sparse-switch v0, :sswitch_data_0

    .line 227
    const/4 v1, 0x3

    const/16 v2, 0x33

    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v1

    .end local p1
    :goto_0
    return v1

    .line 214
    .restart local p1
    :sswitch_0
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->recvMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 216
    check-cast p1, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;

    .end local p1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsmConn;->setPeerDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 218
    new-instance v1, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v2, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_DEREGISTER_REQ:[I

    invoke-virtual {p2}, Lcom/mediatek/bluetooth/psm/PsmMessage;->getIndex()B

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/psm/Psm;->sendMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 219
    invoke-static {v4}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v1

    goto :goto_0

    .line 222
    .restart local p1
    :sswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/mediatek/bluetooth/psm/PsmConnection;->setCurrentState(I)V

    .line 223
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->recvMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 224
    invoke-static {v4}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v1

    goto :goto_0

    .line 211
    nop

    :sswitch_data_0
    .sparse-switch
        0xbbb -> :sswitch_1
        0xbc0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected createServiceBinder()Lcom/mediatek/bluetooth/psm/PsmServiceBinder;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/prx/reporter/PrxrService;-><init>(Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;)V

    return-object v0
.end method

.method public handleMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)I
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x3

    .line 126
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/psm/PsmMessage;->getIndex()B

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/psm/Psm;->getConnection(I)Lcom/mediatek/bluetooth/psm/PsmConnection;

    move-result-object v0

    .local v0, connection:Lcom/mediatek/bluetooth/psm/PsmConnection;
    if-nez v0, :cond_2

    .line 128
    .end local v0           #connection:Lcom/mediatek/bluetooth/psm/PsmConnection;
    :cond_0
    if-nez p1, :cond_1

    .line 129
    const-string v2, "PrxrPsm.handleMessage(): null message"

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->w(Ljava/lang/String;)V

    .line 134
    :goto_0
    const/16 v2, 0x11

    invoke-static {v4, v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v2

    .line 156
    :goto_1
    return v2

    .line 132
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrxrPsm.handleMessage(): can\'t find connection for index["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/psm/PsmMessage;->getIndex()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    .restart local v0       #connection:Lcom/mediatek/bluetooth/psm/PsmConnection;
    :cond_2
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/psm/PsmConnection;->getCurrentState()I

    move-result v1

    .line 138
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrxrPsm.handleMessage() - undefined state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;)V

    .line 156
    const/16 v2, 0x34

    invoke-static {v4, v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v2

    goto :goto_1

    .line 140
    :pswitch_0
    invoke-direct {p0, v0, p1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->stateNew(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v2

    goto :goto_1

    .line 142
    :pswitch_1
    invoke-direct {p0, v0, p1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->stateRegistering(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v2

    goto :goto_1

    .line 144
    :pswitch_2
    invoke-direct {p0, v0, p1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->stateUnregistering(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v2

    goto :goto_1

    .line 146
    :pswitch_3
    invoke-direct {p0, v0, p1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->stateConnectable(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v2

    goto :goto_1

    .line 148
    :pswitch_4
    invoke-direct {p0, v0, p1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->stateConnecting(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v2

    goto :goto_1

    .line 150
    :pswitch_5
    invoke-direct {p0, v0, p1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->stateDisconnecting(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v2

    goto :goto_1

    .line 152
    :pswitch_6
    invoke-direct {p0, v0, p1}, Lcom/mediatek/bluetooth/prx/reporter/PrxrPsm;->stateConnected(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v2

    goto :goto_1

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onServiceCreate()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Lcom/mediatek/bluetooth/psm/Psm;->onServiceCreate()V

    .line 118
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/psm/Psm;->onServiceBind()Z

    .line 119
    return-void
.end method
