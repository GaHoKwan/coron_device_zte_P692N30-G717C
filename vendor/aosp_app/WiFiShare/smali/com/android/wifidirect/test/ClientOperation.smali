.class public final Lcom/android/wifidirect/test/ClientOperation;
.super Ljava/lang/Object;
.source "ClientOperation.java"

# interfaces
.implements Lcom/android/wifidirect/test/Operation;
.implements Lcom/android/wifidirect/test/BaseStream;


# static fields
.field private static final TAG:Ljava/lang/String; = "Obex ClientOperation"

.field private static final VERBOSE:Z


# instance fields
.field private mEndOfBodySent:Z

.field private mExceptionMessage:Ljava/lang/String;

.field private mGetOperation:Z

.field private mInputOpen:Z

.field private mMaxPacketSize:I

.field private mOperationDone:Z

.field private mParent:Lcom/android/wifidirect/test/ClientSession;

.field private mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

.field private mPrivateInputOpen:Z

.field private mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

.field private mPrivateOutputOpen:Z

.field private mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

.field private mRequestHeader:Lcom/android/wifidirect/test/HeaderSet;

.field private mSingleResponseActiveClient:Z

.field private mSrmClientSession:Lcom/android/wifidirect/test/ObexHelper;

.field private mSrmGetActiveClient:Z


# direct methods
.method public constructor <init>(ILcom/android/wifidirect/test/ClientSession;Lcom/android/wifidirect/test/HeaderSet;Z)V
    .locals 7
    .parameter "maxSize"
    .parameter "p"
    .parameter "header"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/android/wifidirect/test/ClientOperation;->mParent:Lcom/android/wifidirect/test/ClientSession;

    .line 99
    iput-boolean v5, p0, Lcom/android/wifidirect/test/ClientOperation;->mEndOfBodySent:Z

    .line 100
    iput-boolean v5, p0, Lcom/android/wifidirect/test/ClientOperation;->mSingleResponseActiveClient:Z

    .line 101
    iput-boolean v5, p0, Lcom/android/wifidirect/test/ClientOperation;->mSrmGetActiveClient:Z

    .line 102
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/wifidirect/test/ClientOperation;->mInputOpen:Z

    .line 103
    iput-boolean v5, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    .line 104
    iput p1, p0, Lcom/android/wifidirect/test/ClientOperation;->mMaxPacketSize:I

    .line 105
    iput-boolean p4, p0, Lcom/android/wifidirect/test/ClientOperation;->mGetOperation:Z

    .line 107
    iput-boolean v5, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInputOpen:Z

    .line 108
    iput-boolean v5, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutputOpen:Z

    .line 109
    iput-object v3, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    .line 110
    iput-object v3, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    .line 112
    new-instance v2, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v2}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    iput-object v2, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    .line 114
    new-instance v2, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v2}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    iput-object v2, p0, Lcom/android/wifidirect/test/ClientOperation;->mRequestHeader:Lcom/android/wifidirect/test/HeaderSet;

    .line 116
    iget-object v2, p2, Lcom/android/wifidirect/test/ClientSession;->mSrmClient:Lcom/android/wifidirect/test/ObexHelper;

    iput-object v2, p0, Lcom/android/wifidirect/test/ClientOperation;->mSrmClientSession:Lcom/android/wifidirect/test/ObexHelper;

    .line 117
    invoke-virtual {p3}, Lcom/android/wifidirect/test/HeaderSet;->getHeaderList()[I

    move-result-object v0

    .line 119
    .local v0, headerList:[I
    if-eqz v0, :cond_0

    .line 121
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/wifidirect/test/ClientOperation;->mRequestHeader:Lcom/android/wifidirect/test/HeaderSet;

    aget v3, v0, v1

    aget v4, v0, v1

    invoke-virtual {p3, v4}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v1           #i:I
    :cond_0
    iget-object v2, p3, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/wifidirect/test/ClientOperation;->mRequestHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v3, p3, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    .line 129
    iget-object v2, p3, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    iget-object v3, p0, Lcom/android/wifidirect/test/ClientOperation;->mRequestHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v3, v3, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    iget-object v4, p3, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    :cond_1
    iget-object v2, p3, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    if-eqz v2, :cond_2

    .line 134
    iget-object v2, p0, Lcom/android/wifidirect/test/ClientOperation;->mRequestHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v3, p3, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    .line 135
    iget-object v2, p3, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    iget-object v3, p0, Lcom/android/wifidirect/test/ClientOperation;->mRequestHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v3, v3, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    iget-object v4, p3, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    :cond_2
    iget-object v2, p3, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    if-eqz v2, :cond_3

    .line 140
    iget-object v2, p0, Lcom/android/wifidirect/test/ClientOperation;->mRequestHeader:Lcom/android/wifidirect/test/HeaderSet;

    new-array v3, v6, [B

    iput-object v3, v2, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    .line 141
    iget-object v2, p3, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    iget-object v3, p0, Lcom/android/wifidirect/test/ClientOperation;->mRequestHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v3, v3, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    invoke-static {v2, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    :cond_3
    return-void
.end method

.method private sendRequest(I)Z
    .locals 18
    .parameter "opCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    const/16 v16, 0x0

    .line 424
    .local v16, returnValue:Z
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 425
    .local v15, out:Ljava/io/ByteArrayOutputStream;
    const/4 v12, -0x1

    .line 426
    .local v12, bodyLength:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mRequestHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/wifidirect/test/ObexHelper;->createHeader(Lcom/android/wifidirect/test/HeaderSet;Z)[B

    move-result-object v14

    .line 427
    .local v14, headerArray:[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    if-eqz v1, :cond_0

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/PrivateOutputStream;->size()I

    move-result v12

    .line 439
    :cond_0
    array-length v1, v14

    add-int/lit8 v1, v1, 0x3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/wifidirect/test/ClientOperation;->mMaxPacketSize:I

    if-le v1, v2, :cond_8

    .line 440
    const/4 v13, 0x0

    .line 441
    .local v13, end:I
    const/16 v17, 0x0

    .line 444
    .local v17, start:I
    :goto_0
    array-length v1, v14

    if-eq v13, v1, :cond_6

    .line 446
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mMaxPacketSize:I

    add-int/lit8 v1, v1, -0x3

    move/from16 v0, v17

    invoke-static {v14, v0, v1}, Lcom/android/wifidirect/test/ObexHelper;->findHeaderEnd([BII)I

    move-result v13

    .line 449
    const/4 v1, -0x1

    if-ne v13, v1, :cond_3

    .line 450
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifidirect/test/ClientOperation;->abort()V

    .line 452
    const-string v1, "Header larger then can be sent in a packet"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    .line 453
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mInputOpen:Z

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    if-eqz v1, :cond_1

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/PrivateInputStream;->close()V

    .line 459
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    if-eqz v1, :cond_2

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/PrivateOutputStream;->close()V

    .line 462
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "OBEX Packet exceeds max packet size"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_3
    sub-int v1, v13, v17

    new-array v3, v1, [B

    .line 466
    .local v3, sendHeader:[B
    const/4 v1, 0x0

    array-length v2, v3

    move/from16 v0, v17

    invoke-static {v14, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mParent:Lcom/android/wifidirect/test/ClientSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/wifidirect/test/ClientOperation;->mSingleResponseActiveClient:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/wifidirect/test/ClientOperation;->mSrmGetActiveClient:Z

    move/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/wifidirect/test/ClientSession;->sendRequest(I[BLcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/PrivateInputStream;ZZ)Z

    move-result v1

    if-nez v1, :cond_4

    .line 469
    const/4 v1, 0x0

    .line 560
    .end local v3           #sendHeader:[B
    .end local v13           #end:I
    .end local v17           #start:I
    :goto_1
    return v1

    .line 472
    .restart local v3       #sendHeader:[B
    .restart local v13       #end:I
    .restart local v17       #start:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v1, v1, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    const/16 v2, 0x90

    if-eq v1, v2, :cond_5

    .line 473
    const/4 v1, 0x0

    goto :goto_1

    .line 476
    :cond_5
    move/from16 v17, v13

    .line 477
    goto :goto_0

    .line 479
    .end local v3           #sendHeader:[B
    :cond_6
    if-lez v12, :cond_7

    .line 480
    const/4 v1, 0x1

    goto :goto_1

    .line 482
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 485
    .end local v13           #end:I
    .end local v17           #start:I
    :cond_8
    invoke-virtual {v15, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 488
    if-lez v12, :cond_a

    .line 494
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mMaxPacketSize:I

    array-length v2, v14

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x6

    if-le v12, v1, :cond_9

    .line 495
    const/16 v16, 0x1

    .line 497
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mMaxPacketSize:I

    array-length v2, v14

    sub-int/2addr v1, v2

    add-int/lit8 v12, v1, -0x6

    .line 500
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    invoke-virtual {v1, v12}, Lcom/android/wifidirect/test/PrivateOutputStream;->readBytes(I)[B

    move-result-object v11

    .line 507
    .local v11, body:[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/PrivateOutputStream;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_c

    if-nez v16, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mEndOfBodySent:Z

    if-nez v1, :cond_c

    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_c

    .line 509
    const/16 v1, 0x49

    invoke-virtual {v15, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 510
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mEndOfBodySent:Z

    .line 515
    :goto_2
    add-int/lit8 v12, v12, 0x3

    .line 516
    shr-int/lit8 v1, v12, 0x8

    int-to-byte v1, v1

    invoke-virtual {v15, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 517
    int-to-byte v1, v12

    invoke-virtual {v15, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 519
    if-eqz v11, :cond_a

    .line 520
    invoke-virtual {v15, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 524
    .end local v11           #body:[B
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutputOpen:Z

    if-eqz v1, :cond_b

    if-gtz v12, :cond_b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mEndOfBodySent:Z

    if-nez v1, :cond_b

    .line 526
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_d

    .line 527
    const/16 v1, 0x48

    invoke-virtual {v15, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 534
    :goto_3
    const/4 v12, 0x3

    .line 535
    const/4 v1, 0x0

    int-to-byte v1, v1

    invoke-virtual {v15, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 536
    int-to-byte v1, v12

    invoke-virtual {v15, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 542
    :cond_b
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-nez v1, :cond_f

    .line 543
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/wifidirect/test/ClientOperation;->mParent:Lcom/android/wifidirect/test/ClientSession;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/wifidirect/test/ClientOperation;->mSingleResponseActiveClient:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/wifidirect/test/ClientOperation;->mSrmGetActiveClient:Z

    move/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/wifidirect/test/ClientSession;->sendRequest(I[BLcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/PrivateInputStream;ZZ)Z

    move-result v1

    if-nez v1, :cond_e

    .line 545
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 512
    .restart local v11       #body:[B
    :cond_c
    const/16 v1, 0x48

    invoke-virtual {v15, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 529
    .end local v11           #body:[B
    :cond_d
    const/16 v1, 0x49

    invoke-virtual {v15, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 530
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mEndOfBodySent:Z

    goto :goto_3

    :cond_e
    move/from16 v1, v16

    .line 547
    goto/16 :goto_1

    .line 549
    :cond_f
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/wifidirect/test/ClientOperation;->mParent:Lcom/android/wifidirect/test/ClientSession;

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/wifidirect/test/ClientOperation;->mSingleResponseActiveClient:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/wifidirect/test/ClientOperation;->mSrmGetActiveClient:Z

    move/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/wifidirect/test/ClientSession;->sendRequest(I[BLcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/PrivateInputStream;ZZ)Z

    move-result v1

    if-nez v1, :cond_10

    .line 552
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 557
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/PrivateOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 558
    const/16 v16, 0x1

    :cond_11
    move/from16 v1, v16

    .line 560
    goto/16 :goto_1
.end method

.method private declared-synchronized startProcessing()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x90

    .line 574
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    if-nez v0, :cond_0

    .line 575
    new-instance v0, Lcom/android/wifidirect/test/PrivateInputStream;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/PrivateInputStream;-><init>(Lcom/android/wifidirect/test/BaseStream;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    .line 577
    :cond_0
    const/4 v7, 0x1

    .line 579
    .local v7, more:Z
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mGetOperation:Z

    if-eqz v0, :cond_4

    .line 580
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    if-nez v0, :cond_3

    .line 581
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v1, 0x90

    iput v1, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    .line 582
    :goto_0
    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-ne v0, v8, :cond_1

    .line 584
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/wifidirect/test/ClientOperation;->sendRequest(I)Z

    move-result v7

    goto :goto_0

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-ne v0, v8, :cond_2

    .line 590
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mParent:Lcom/android/wifidirect/test/ClientSession;

    const/16 v1, 0x83

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v4, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/wifidirect/test/ClientSession;->sendRequest(I[BLcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/PrivateInputStream;ZZ)Z

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-eq v0, v8, :cond_3

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 598
    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    if-nez v0, :cond_5

    .line 599
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v1, 0x90

    iput v1, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    .line 600
    :goto_2
    if-eqz v7, :cond_5

    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-ne v0, v8, :cond_5

    .line 601
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/wifidirect/test/ClientOperation;->sendRequest(I)Z

    move-result v7

    goto :goto_2

    .line 606
    :cond_5
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-ne v0, v8, :cond_6

    .line 607
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mParent:Lcom/android/wifidirect/test/ClientSession;

    const/16 v1, 0x82

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v4, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/wifidirect/test/ClientSession;->sendRequest(I[BLcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/PrivateInputStream;ZZ)Z

    .line 610
    :cond_6
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-eq v0, v8, :cond_3

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 574
    .end local v7           #more:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private validateConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientOperation;->ensureOpen()V

    .line 406
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    if-nez v0, :cond_0

    .line 407
    invoke-direct {p0}, Lcom/android/wifidirect/test/ClientOperation;->startProcessing()V

    .line 409
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized abort()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x90

    .line 155
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientOperation;->ensureOpen()V

    .line 157
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-eq v0, v1, :cond_0

    .line 158
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 161
    :cond_0
    :try_start_1
    const-string v0, "Operation aborted"

    iput-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    .line 162
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-ne v0, v1, :cond_2

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    .line 168
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mParent:Lcom/android/wifidirect/test/ClientSession;

    const/16 v1, 0xff

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/wifidirect/test/ClientSession;->sendRequest(I[BLcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/PrivateInputStream;ZZ)Z

    .line 170
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_1

    .line 171
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid response code from server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientOperation;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    monitor-exit p0

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mInputOpen:Z

    .line 326
    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInputOpen:Z

    .line 327
    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutputOpen:Z

    .line 328
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mParent:Lcom/android/wifidirect/test/ClientSession;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/ClientSession;->setRequestInactive()V

    .line 329
    return-void
.end method

.method public declared-synchronized continueOperation(ZZ)Z
    .locals 11
    .parameter "sendEmpty"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x90

    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 630
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/wifidirect/test/ClientOperation;->mGetOperation:Z

    if-eqz v1, :cond_8

    .line 631
    if-eqz p2, :cond_5

    iget-boolean v1, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    if-nez v1, :cond_5

    .line 636
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    .line 637
    .local v7, srm:Ljava/lang/Byte;
    sget-object v0, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_SUPPORTED:Ljava/lang/Byte;

    if-eq v7, v0, :cond_0

    sget-object v0, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    if-ne v7, v0, :cond_1

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mSrmClientSession:Lcom/android/wifidirect/test/ObexHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/ObexHelper;->setRemoteSrmStatus(Z)V

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mSrmClientSession:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/ObexHelper;->getRemoteSrmStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mSrmClientSession:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mSrmGetActiveClient:Z

    .line 648
    :cond_2
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mParent:Lcom/android/wifidirect/test/ClientSession;

    const/16 v1, 0x83

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v4, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/wifidirect/test/ClientOperation;->mSrmGetActiveClient:Z

    invoke-virtual/range {v0 .. v6}, Lcom/android/wifidirect/test/ClientSession;->sendRequest(I[BLcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/PrivateInputStream;ZZ)Z

    .line 653
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-eq v0, v10, :cond_3

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    move v0, v9

    .line 723
    .end local v7           #srm:Ljava/lang/Byte;
    :cond_4
    :goto_0
    monitor-exit p0

    return v0

    .line 659
    :cond_5
    if-nez p2, :cond_7

    :try_start_1
    iget-boolean v1, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    if-nez v1, :cond_7

    .line 663
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    if-nez v0, :cond_6

    .line 664
    new-instance v0, Lcom/android/wifidirect/test/PrivateInputStream;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/PrivateInputStream;-><init>(Lcom/android/wifidirect/test/BaseStream;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    .line 666
    :cond_6
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/wifidirect/test/ClientOperation;->sendRequest(I)Z

    move v0, v9

    .line 667
    goto :goto_0

    .line 669
    :cond_7
    iget-boolean v1, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    if-eqz v1, :cond_4

    goto :goto_0

    .line 675
    :cond_8
    if-nez p2, :cond_f

    iget-boolean v1, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    if-nez v1, :cond_f

    .line 677
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 678
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v1, 0x90

    iput v1, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    .line 681
    :cond_9
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/wifidirect/test/ClientOperation;->sendRequest(I)Z

    .line 684
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    .line 685
    .restart local v7       #srm:Ljava/lang/Byte;
    sget-object v0, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_SUPPORTED:Ljava/lang/Byte;

    if-eq v7, v0, :cond_a

    sget-object v0, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    if-ne v7, v0, :cond_b

    .line 686
    :cond_a
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mSrmClientSession:Lcom/android/wifidirect/test/ObexHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/ObexHelper;->setRemoteSrmStatus(Z)V

    .line 691
    :cond_b
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mSrmClientSession:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/ObexHelper;->getRemoteSrmStatus()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 693
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mSrmClientSession:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mSingleResponseActiveClient:Z

    .line 697
    :cond_c
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mSingleResponseActiveClient:Z

    if-ne v0, v9, :cond_d

    .line 699
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    .line 701
    .local v8, srmp:Ljava/lang/Byte;
    sget-object v0, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_PARAM_WAIT:Ljava/lang/Byte;

    if-ne v8, v0, :cond_e

    .line 703
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mSrmClientSession:Lcom/android/wifidirect/test/ObexHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/ObexHelper;->setLocalSrmpWait(Z)V

    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mSingleResponseActiveClient:Z

    .line 709
    :goto_1
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v1, 0x98

    sget-object v2, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_PARAM_NONE:Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .end local v8           #srmp:Ljava/lang/Byte;
    :cond_d
    move v0, v9

    .line 713
    goto/16 :goto_0

    .line 707
    .restart local v8       #srmp:Ljava/lang/Byte;
    :cond_e
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mSrmClientSession:Lcom/android/wifidirect/test/ObexHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/ObexHelper;->setLocalSrmpWait(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 630
    .end local v7           #srm:Ljava/lang/Byte;
    .end local v8           #srmp:Ljava/lang/Byte;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 714
    :cond_f
    if-eqz p2, :cond_10

    :try_start_2
    iget-boolean v1, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    if-eqz v1, :cond_4

    .line 718
    :cond_10
    iget-boolean v1, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    goto/16 :goto_0
.end method

.method public ensureNotDone()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    if-eqz v0, :cond_0

    .line 379
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has completed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    return-void
.end method

.method public ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mParent:Lcom/android/wifidirect/test/ClientSession;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/ClientSession;->ensureOpen()V

    .line 390
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lcom/android/wifidirect/test/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_0
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mInputOpen:Z

    if-nez v0, :cond_1

    .line 394
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_1
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderLength()I
    .locals 3

    .prologue
    .line 307
    iget-object v1, p0, Lcom/android/wifidirect/test/ClientOperation;->mRequestHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/wifidirect/test/ObexHelper;->createHeader(Lcom/android/wifidirect/test/HeaderSet;Z)[B

    move-result-object v0

    .line 308
    .local v0, headerArray:[B
    array-length v1, v0

    return v1
.end method

.method public getLength()J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 232
    :try_start_0
    iget-object v4, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v5, 0xc3

    invoke-virtual {v4, v5}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 234
    .local v1, temp:Ljava/lang/Long;
    if-nez v1, :cond_0

    .line 240
    .end local v1           #temp:Ljava/lang/Long;
    :goto_0
    return-wide v2

    .line 237
    .restart local v1       #temp:Ljava/lang/Long;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 239
    .end local v1           #temp:Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public getMaxPacketSize()I
    .locals 2

    .prologue
    .line 302
    iget v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mMaxPacketSize:I

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientOperation;->getHeaderLength()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getReceivedHeader()Lcom/android/wifidirect/test/HeaderSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientOperation;->ensureOpen()V

    .line 341
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    return-object v0
.end method

.method public declared-synchronized getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    const/16 v1, 0x90

    if-ne v0, v1, :cond_1

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/android/wifidirect/test/ClientOperation;->validateConnection()V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-object v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public noEndofBody()V
    .locals 0

    .prologue
    .line 830
    return-void
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientOperation;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientOperation;->ensureOpen()V

    .line 253
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInputOpen:Z

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no more input streams available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mGetOperation:Z

    if-eqz v0, :cond_2

    .line 257
    invoke-direct {p0}, Lcom/android/wifidirect/test/ClientOperation;->validateConnection()V

    .line 264
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInputOpen:Z

    .line 266
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    return-object v0

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    if-nez v0, :cond_1

    .line 260
    new-instance v0, Lcom/android/wifidirect/test/PrivateInputStream;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/PrivateInputStream;-><init>(Lcom/android/wifidirect/test/BaseStream;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    goto :goto_0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientOperation;->ensureOpen()V

    .line 286
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientOperation;->ensureNotDone()V

    .line 288
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutputOpen:Z

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no more output streams available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    if-nez v0, :cond_1

    .line 293
    new-instance v0, Lcom/android/wifidirect/test/PrivateOutputStream;

    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientOperation;->getMaxPacketSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/wifidirect/test/PrivateOutputStream;-><init>(Lcom/android/wifidirect/test/BaseStream;I)V

    iput-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    .line 296
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutputOpen:Z

    .line 298
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    return-object v0
.end method

.method public sendHeaders(Lcom/android/wifidirect/test/HeaderSet;)V
    .locals 5
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientOperation;->ensureOpen()V

    .line 356
    iget-boolean v2, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    if-eqz v2, :cond_0

    .line 357
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Operation has already exchanged all data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 360
    :cond_0
    if-nez p1, :cond_1

    .line 361
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Headers may not be null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    :cond_1
    invoke-virtual {p1}, Lcom/android/wifidirect/test/HeaderSet;->getHeaderList()[I

    move-result-object v0

    .line 365
    .local v0, headerList:[I
    if-eqz v0, :cond_2

    .line 366
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 367
    iget-object v2, p0, Lcom/android/wifidirect/test/ClientOperation;->mRequestHeader:Lcom/android/wifidirect/test/HeaderSet;

    aget v3, v0, v1

    aget v4, v0, v1

    invoke-virtual {p1, v4}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v1           #i:I
    :cond_2
    return-void
.end method

.method public streamClosed(Z)V
    .locals 11
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/16 v1, 0x83

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/16 v9, 0x90

    .line 733
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mGetOperation:Z

    if-nez v0, :cond_6

    .line 734
    if-nez p1, :cond_5

    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    if-nez v0, :cond_5

    .line 737
    const/4 v8, 0x1

    .line 739
    .local v8, more:Z
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/PrivateOutputStream;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mRequestHeader:Lcom/android/wifidirect/test/HeaderSet;

    invoke-static {v0, v5}, Lcom/android/wifidirect/test/ObexHelper;->createHeader(Lcom/android/wifidirect/test/HeaderSet;Z)[B

    move-result-object v7

    .line 741
    .local v7, headerArray:[B
    array-length v0, v7

    if-gtz v0, :cond_0

    .line 742
    const/4 v8, 0x0

    .line 745
    .end local v7           #headerArray:[B
    :cond_0
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-ne v0, v2, :cond_1

    .line 746
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iput v9, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    .line 749
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-ne v0, v9, :cond_2

    .line 750
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/wifidirect/test/ClientOperation;->sendRequest(I)Z

    move-result v8

    goto :goto_0

    .line 755
    :cond_2
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mSrmClientSession:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/ObexHelper;->resetSrmStatus()V

    .line 756
    iput-boolean v5, p0, Lcom/android/wifidirect/test/ClientOperation;->mSingleResponseActiveClient:Z

    .line 763
    :goto_1
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-ne v0, v9, :cond_3

    .line 765
    const/16 v0, 0x82

    invoke-direct {p0, v0}, Lcom/android/wifidirect/test/ClientOperation;->sendRequest(I)Z

    goto :goto_1

    .line 767
    :cond_3
    iput-boolean v10, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    .line 827
    .end local v8           #more:Z
    :cond_4
    :goto_2
    return-void

    .line 768
    :cond_5
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    if-eqz v0, :cond_4

    .line 770
    iput-boolean v10, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    goto :goto_2

    .line 773
    :cond_6
    if-eqz p1, :cond_a

    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    if-nez v0, :cond_a

    .line 778
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-ne v0, v2, :cond_7

    .line 779
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iput v9, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    .line 782
    :cond_7
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-ne v0, v9, :cond_8

    .line 784
    invoke-direct {p0, v1}, Lcom/android/wifidirect/test/ClientOperation;->sendRequest(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 790
    :cond_8
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mSrmClientSession:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/ObexHelper;->resetSrmStatus()V

    .line 791
    iput-boolean v5, p0, Lcom/android/wifidirect/test/ClientOperation;->mSrmGetActiveClient:Z

    .line 793
    :goto_3
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-ne v0, v9, :cond_9

    .line 795
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mParent:Lcom/android/wifidirect/test/ClientSession;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v4, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/wifidirect/test/ClientSession;->sendRequest(I[BLcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/PrivateInputStream;ZZ)Z

    goto :goto_3

    .line 797
    :cond_9
    iput-boolean v10, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    goto :goto_2

    .line 798
    :cond_a
    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    if-nez v0, :cond_4

    .line 802
    const/4 v8, 0x1

    .line 804
    .restart local v8       #more:Z
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/PrivateOutputStream;->size()I

    move-result v0

    if-gtz v0, :cond_b

    .line 805
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mRequestHeader:Lcom/android/wifidirect/test/HeaderSet;

    invoke-static {v0, v5}, Lcom/android/wifidirect/test/ObexHelper;->createHeader(Lcom/android/wifidirect/test/HeaderSet;Z)[B

    move-result-object v7

    .line 806
    .restart local v7       #headerArray:[B
    array-length v0, v7

    if-gtz v0, :cond_b

    .line 807
    const/4 v8, 0x0

    .line 810
    .end local v7           #headerArray:[B
    :cond_b
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    if-nez v0, :cond_c

    .line 811
    new-instance v0, Lcom/android/wifidirect/test/PrivateInputStream;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/PrivateInputStream;-><init>(Lcom/android/wifidirect/test/BaseStream;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    .line 813
    :cond_c
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/PrivateOutputStream;->size()I

    move-result v0

    if-gtz v0, :cond_d

    .line 814
    const/4 v8, 0x0

    .line 816
    :cond_d
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iput v9, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    .line 817
    :goto_4
    if-eqz v8, :cond_e

    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-ne v0, v9, :cond_e

    .line 818
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/wifidirect/test/ClientOperation;->sendRequest(I)Z

    move-result v8

    goto :goto_4

    .line 820
    :cond_e
    invoke-direct {p0, v1}, Lcom/android/wifidirect/test/ClientOperation;->sendRequest(I)Z

    .line 822
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientOperation;->mReplyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget v0, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-eq v0, v9, :cond_4

    .line 823
    iput-boolean v10, p0, Lcom/android/wifidirect/test/ClientOperation;->mOperationDone:Z

    goto/16 :goto_2
.end method
