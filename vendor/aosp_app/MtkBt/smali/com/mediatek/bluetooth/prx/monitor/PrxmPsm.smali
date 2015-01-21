.class public Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;
.super Lcom/mediatek/bluetooth/psm/Psm;
.source "PrxmPsm.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/psm/PsmService;)V
    .locals 7
    .parameter "psmService"

    .prologue
    .line 87
    const/16 v1, 0x11

    const/16 v3, 0xb54

    const/16 v4, 0xb64

    const/4 v5, 0x2

    const/4 v6, 0x6

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/bluetooth/psm/Psm;-><init>(ILcom/mediatek/bluetooth/psm/PsmService;IIII)V

    .line 93
    return-void
.end method

.method private handleDisconnect(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I
    .locals 1
    .parameter "conn"
    .parameter "message"

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mediatek/bluetooth/psm/PsmConnection;->setCurrentState(I)V

    .line 335
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->recvMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 338
    check-cast p1, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;->stopMonitor(Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;)V

    .line 341
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v0

    return v0
.end method

.method private stateConnected(Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;Lcom/mediatek/bluetooth/psm/PsmMessage;)I
    .locals 11
    .parameter "connection"
    .parameter "message"

    .prologue
    const/4 v6, 0x2

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x5

    const/4 v7, 0x1

    .line 249
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/ilm/Message;->getId()I

    move-result v0

    .line 250
    .local v0, messageId:I
    packed-switch v0, :pswitch_data_0

    .line 325
    const/4 v5, 0x3

    const/16 v6, 0x33

    invoke-static {v5, v6}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v5

    :goto_0
    return v5

    .line 252
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;->handleDisconnect(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v5

    goto :goto_0

    .line 258
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->sendMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 259
    invoke-static {v7}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v5

    goto :goto_0

    .line 262
    :pswitch_2
    iget-boolean v5, p1, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->isWaitingForSetPathLossCnf:Z

    if-nez v5, :cond_0

    .line 263
    iput-boolean v7, p1, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->isWaitingForSetPathLossCnf:Z

    .line 264
    invoke-virtual {p2, v8}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v5

    iput-byte v5, p1, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->lastPathLossLevel:B

    .line 265
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->sendMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 266
    invoke-static {v7}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v5

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p2, v8}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v1

    .line 270
    .local v1, newPathLossLevel:B
    iget-byte v5, p1, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->lastPathLossLevel:B

    if-eq v5, v1, :cond_1

    .line 272
    iput-boolean v7, p1, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->isLastPathLossLevelChanged:Z

    .line 273
    iput-byte v1, p1, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->lastPathLossLevel:B

    .line 275
    :cond_1
    invoke-static {v6}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v5

    goto :goto_0

    .line 279
    .end local v1           #newPathLossLevel:B
    :pswitch_3
    invoke-virtual {p2, v8}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v5

    invoke-virtual {p1, v5}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->setLinkLossLevelPending(B)V

    .line 280
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->sendMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 281
    invoke-static {v7}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v5

    goto :goto_0

    .line 283
    :pswitch_4
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v5

    invoke-virtual {p2, v6}, Lcom/mediatek/bluetooth/ilm/Message;->getInt(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->setCapability(B)V

    .line 284
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->recvMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 285
    invoke-static {v7}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v5

    goto :goto_0

    .line 287
    :pswitch_5
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {p2, v6}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->setRemoteTxPower(B)V

    .line 288
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->recvMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 289
    invoke-static {v7}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v5

    goto :goto_0

    .line 291
    :pswitch_6
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {p2, v6}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->setCurrentRssi(B)V

    .line 292
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->recvMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 293
    invoke-static {v7}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v5

    goto :goto_0

    .line 296
    :pswitch_7
    invoke-virtual {p2, v8}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v4

    .line 297
    .local v4, splRsp:I
    if-nez v4, :cond_2

    iget-boolean v5, p1, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->isLastPathLossLevelChanged:Z

    if-nez v5, :cond_2

    .line 300
    iput-byte v9, p1, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->lastPathLossLevel:B

    .line 301
    iput-boolean v10, p1, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->isWaitingForSetPathLossCnf:Z

    .line 302
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->recvMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 311
    :goto_1
    invoke-static {v7}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v5

    goto/16 :goto_0

    .line 306
    :cond_2
    new-instance v2, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v5, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_SET_PATHLOSS_REQ:[I

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/psm/PsmConnection;->getConnId()I

    move-result v6

    invoke-direct {v2, v5, v6}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    .line 307
    .local v2, retry:Lcom/mediatek/bluetooth/psm/PsmMessage;
    iget-byte v5, p1, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->lastPathLossLevel:B

    invoke-virtual {v2, v8, v5}, Lcom/mediatek/bluetooth/ilm/Message;->setByte(IB)V

    .line 308
    iput-boolean v10, p1, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->isLastPathLossLevelChanged:Z

    .line 309
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/psm/Psm;->sendMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    goto :goto_1

    .line 314
    .end local v2           #retry:Lcom/mediatek/bluetooth/psm/PsmMessage;
    .end local v4           #splRsp:I
    :pswitch_8
    invoke-virtual {p2, v8}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v3

    .line 315
    .local v3, sllRsp:I
    if-nez v3, :cond_3

    .line 318
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getLinkLossLevelPending()B

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->setLinkLossLevel(B)V

    .line 320
    :cond_3
    invoke-virtual {p1, v9}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->setLinkLossLevelPending(B)V

    .line 321
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->recvMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 322
    invoke-static {v7}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v5

    goto/16 :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0xb56
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method private stateConnecting(Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;Lcom/mediatek/bluetooth/psm/PsmMessage;)I
    .locals 10
    .parameter "connection"
    .parameter "message"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x5

    .line 159
    const-string v4, "stateConnecting()[+]"

    invoke-static {v4}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/ilm/Message;->getId()I

    move-result v1

    .line 163
    .local v1, messageId:I
    packed-switch v1, :pswitch_data_0

    .line 227
    :pswitch_0
    const/16 v4, 0x33

    invoke-static {v5, v4}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v4

    :goto_0
    return v4

    .line 165
    :pswitch_1
    invoke-virtual {p2, v6}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v3

    .line 166
    .local v3, rspcode:I
    if-nez v3, :cond_0

    .line 168
    new-instance v2, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v4, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_SET_LINKLOSS_REQ:[I

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/psm/PsmConnection;->getConnId()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    .line 169
    .local v2, pm:Lcom/mediatek/bluetooth/psm/PsmMessage;
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getLinkLossLevel()B

    move-result v4

    invoke-virtual {v2, v6, v4}, Lcom/mediatek/bluetooth/ilm/Message;->setByte(IB)V

    .line 170
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/psm/Psm;->sendMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 171
    invoke-static {v8}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v4

    goto :goto_0

    .line 175
    .end local v2           #pm:Lcom/mediatek/bluetooth/psm/PsmMessage;
    :cond_0
    invoke-virtual {p1, v9}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->setCurrentState(I)V

    .line 176
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->recvMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 177
    invoke-static {v7}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v4

    goto :goto_0

    .line 180
    .end local v3           #rspcode:I
    :pswitch_2
    invoke-virtual {p2, v6}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v3

    .line 181
    .restart local v3       #rspcode:I
    if-eq v3, v5, :cond_1

    .line 183
    new-instance v4, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v5, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_GET_CAPABILITY_REQ:[I

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/psm/PsmConnection;->getConnId()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    invoke-virtual {p0, v4}, Lcom/mediatek/bluetooth/psm/Psm;->sendMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 184
    invoke-static {v8}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v4

    goto :goto_0

    .line 188
    :cond_1
    invoke-static {v7}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v4

    goto :goto_0

    .line 191
    .end local v3           #rspcode:I
    :pswitch_3
    invoke-virtual {p2, v6}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v3

    .line 192
    .restart local v3       #rspcode:I
    if-eq v3, v5, :cond_2

    .line 194
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v4

    invoke-virtual {p2, v8}, Lcom/mediatek/bluetooth/ilm/Message;->getInt(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->setCapability(B)V

    .line 196
    new-instance v4, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v5, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_GET_REMOTE_TXPOWER_REQ:[I

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/psm/PsmConnection;->getConnId()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    invoke-virtual {p0, v4}, Lcom/mediatek/bluetooth/psm/Psm;->sendMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 197
    invoke-static {v8}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v4

    goto :goto_0

    .line 201
    :cond_2
    invoke-static {v7}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v4

    goto :goto_0

    .line 204
    .end local v3           #rspcode:I
    :pswitch_4
    invoke-virtual {p2, v6}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v3

    .line 205
    .restart local v3       #rspcode:I
    if-eq v3, v5, :cond_3

    .line 207
    invoke-virtual {p1, v5}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->setCurrentState(I)V

    .line 209
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {p2, v5}, Lcom/mediatek/bluetooth/ilm/Message;->getByte(I)B

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->setRemoteTxPower(B)V

    .line 211
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;->startMonitor(Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;)V

    .line 213
    new-instance v0, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v4, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_CONNECT_CNF:[I

    invoke-virtual {p2}, Lcom/mediatek/bluetooth/psm/PsmMessage;->getIndex()B

    move-result v5

    invoke-direct {v0, v4, v5}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    .line 214
    .local v0, conCnf:Lcom/mediatek/bluetooth/psm/PsmMessage;
    invoke-virtual {v0, v6, v9}, Lcom/mediatek/bluetooth/ilm/Message;->setByte(IB)V

    .line 215
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/psm/Psm;->recvMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 217
    invoke-static {v7}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v4

    goto/16 :goto_0

    .line 221
    .end local v0           #conCnf:Lcom/mediatek/bluetooth/psm/PsmMessage;
    :cond_3
    invoke-static {v7}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v4

    goto/16 :goto_0

    .line 224
    .end local v3           #rspcode:I
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;->handleDisconnect(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v4

    goto/16 :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0xb55
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private stateDisconnecting(Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;Lcom/mediatek/bluetooth/psm/PsmMessage;)I
    .locals 3
    .parameter "connection"
    .parameter "message"

    .prologue
    .line 233
    const-string v1, "stateDisconnecting()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/ilm/Message;->getId()I

    move-result v0

    .line 236
    .local v0, messageId:I
    packed-switch v0, :pswitch_data_0

    .line 241
    const/4 v1, 0x3

    const/16 v2, 0x33

    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v1

    :goto_0
    return v1

    .line 238
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;->handleDisconnect(Lcom/mediatek/bluetooth/psm/PsmConnection;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v1

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0xb57
        :pswitch_0
    .end packed-switch
.end method

.method private stateNew(Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;Lcom/mediatek/bluetooth/psm/PsmMessage;)I
    .locals 3
    .parameter "connection"
    .parameter "message"

    .prologue
    const/4 v2, 0x1

    .line 142
    const-string v1, "stateNew()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/ilm/Message;->getId()I

    move-result v0

    .line 145
    .local v0, messageId:I
    packed-switch v0, :pswitch_data_0

    .line 153
    const/4 v1, 0x3

    const/16 v2, 0x33

    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v1

    :goto_0
    return v1

    .line 148
    :pswitch_0
    invoke-virtual {p1, v2}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->setCurrentState(I)V

    .line 149
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/psm/Psm;->sendMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)V

    .line 150
    invoke-static {v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(I)I

    move-result v1

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0xb54
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected createServiceBinder()Lcom/mediatek/bluetooth/psm/PsmServiceBinder;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mediatek/bluetooth/psm/Psm;->getHandlerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;->handler:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmService;-><init>(Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;)V

    return-object v0
.end method

.method public handleMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)I
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x3

    .line 112
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/psm/PsmMessage;->getIndex()B

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/psm/Psm;->getConnection(I)Lcom/mediatek/bluetooth/psm/PsmConnection;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;

    .local v0, connection:Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;
    if-nez v0, :cond_2

    .line 114
    .end local v0           #connection:Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;
    :cond_0
    if-nez p1, :cond_1

    .line 115
    const-string v2, "PrxmPsm.handleMessage(): null message"

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->w(Ljava/lang/String;)V

    .line 120
    :goto_0
    const/16 v2, 0x11

    invoke-static {v4, v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v2

    .line 136
    :goto_1
    return v2

    .line 118
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrxmPsm.handleMessage(): can\'t find connection for index["

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

    .line 123
    .restart local v0       #connection:Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;
    :cond_2
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/psm/PsmConnection;->getCurrentState()I

    move-result v1

    .line 124
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrxmPsm.handleMessage() - undefined state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;)V

    .line 136
    const/16 v2, 0x34

    invoke-static {v4, v2}, Lcom/mediatek/bluetooth/psm/ResultCode;->create(II)I

    move-result v2

    goto :goto_1

    .line 126
    :pswitch_0
    invoke-direct {p0, v0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;->stateNew(Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v2

    goto :goto_1

    .line 128
    :pswitch_1
    invoke-direct {p0, v0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;->stateConnecting(Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v2

    goto :goto_1

    .line 130
    :pswitch_2
    invoke-direct {p0, v0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;->stateConnected(Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v2

    goto :goto_1

    .line 132
    :pswitch_3
    invoke-direct {p0, v0, p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;->stateDisconnecting(Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    move-result v2

    goto :goto_1

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 383
    const-string v7, "handleMessage()[+]: handle proximity monitor update message"

    invoke-static {v7}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 386
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;

    .line 389
    .local v0, conn:Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->isMonitoring()Z

    move-result v7

    if-nez v7, :cond_0

    .line 425
    :goto_0
    return v10

    .line 392
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v1

    .line 396
    .local v1, deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connId["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/psm/PsmConnection;->getConnId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: path-loss["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getCurrentRssi()B

    move-result v8

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getRemoteTxPower()B

    move-result v9

    invoke-static {v8, v9}, Lcom/mediatek/bluetooth/prx/monitor/PrxmUtils;->getPathLoss(BB)B

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], threshold["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getPathLossThreshold()B

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->isUpdateDone()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 403
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->isPathLost()Z

    move-result v3

    .line 404
    .local v3, oldPathLost:Z
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getCurrentRssi()B

    move-result v7

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getRemoteTxPower()B

    move-result v8

    invoke-static {v7, v8}, Lcom/mediatek/bluetooth/prx/monitor/PrxmUtils;->getPathLoss(BB)B

    move-result v7

    invoke-virtual {v1, v7}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->checkPathLoss(B)Z

    move-result v2

    .line 405
    .local v2, newPathLost:Z
    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getPathLossLevel()B

    move-result v4

    .line 408
    .local v4, pathLossLevel:B
    :goto_1
    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    .line 410
    :cond_1
    new-instance v5, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v7, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_SET_PATHLOSS_REQ:[I

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/psm/PsmConnection;->getConnId()I

    move-result v8

    invoke-direct {v5, v7, v8}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    .line 411
    .local v5, req:Lcom/mediatek/bluetooth/psm/PsmMessage;
    const/4 v7, 0x5

    invoke-virtual {v5, v7, v4}, Lcom/mediatek/bluetooth/ilm/Message;->setByte(IB)V

    .line 412
    invoke-virtual {p0, v5}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;->handleMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    .line 416
    .end local v5           #req:Lcom/mediatek/bluetooth/psm/PsmMessage;
    :cond_2
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->resetUpdateState()V

    .line 421
    .end local v2           #newPathLost:Z
    .end local v3           #oldPathLost:Z
    .end local v4           #pathLossLevel:B
    :cond_3
    new-instance v7, Lcom/mediatek/bluetooth/psm/PsmMessage;

    sget-object v8, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_GET_RSSI_REQ:[I

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/psm/PsmConnection;->getConnId()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/mediatek/bluetooth/psm/PsmMessage;-><init>([II)V

    invoke-virtual {p0, v7}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;->handleMessage(Lcom/mediatek/bluetooth/psm/PsmMessage;)I

    .line 424
    iget-object v7, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;->handler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;->handler:Landroid/os/Handler;

    invoke-virtual {v8, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getMonitorDelay()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .restart local v2       #newPathLost:Z
    .restart local v3       #oldPathLost:Z
    :cond_4
    move v4, v6

    .line 405
    goto :goto_1
.end method

.method protected startMonitor(Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;)V
    .locals 3
    .parameter "conn"

    .prologue
    .line 351
    const-string v0, "startMonitor()[+]"

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getCapability()B

    move-result v0

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proximity reporter["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] doesn\'t support txpower service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 366
    :goto_0
    return-void

    .line 362
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->setMonitoring(Z)V

    .line 365
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsm;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected stopMonitor(Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;)V
    .locals 1
    .parameter "conn"

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mediatek/bluetooth/prx/monitor/PrxmPsmConn;->setMonitoring(Z)V

    .line 376
    return-void
.end method
