.class public final Ljavax/obex/ClientOperation;
.super Ljava/lang/Object;
.source "ClientOperation.java"

# interfaces
.implements Ljavax/obex/Operation;
.implements Ljavax/obex/BaseStream;


# instance fields
.field private mEndOfBodySent:Z

.field private mExceptionMessage:Ljava/lang/String;

.field private mGetOperation:Z

.field private mInputOpen:Z

.field private mMaxPacketSize:I

.field private mOperationDone:Z

.field private mParent:Ljavax/obex/ClientSession;

.field private mPrivateInput:Ljavax/obex/PrivateInputStream;

.field private mPrivateInputOpen:Z

.field private mPrivateOutput:Ljavax/obex/PrivateOutputStream;

.field private mPrivateOutputOpen:Z

.field private mReplyHeader:Ljavax/obex/HeaderSet;

.field private mRequestHeader:Ljavax/obex/HeaderSet;


# direct methods
.method public constructor <init>(ILjavax/obex/ClientSession;Ljavax/obex/HeaderSet;Z)V
    .locals 6
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

    const/4 v5, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    .line 88
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    .line 89
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    .line 90
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    .line 91
    iput p1, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    .line 92
    iput-boolean p4, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    .line 94
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    .line 95
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    .line 96
    iput-object v3, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    .line 97
    iput-object v3, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    .line 99
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    .line 101
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    .line 103
    invoke-virtual {p3}, Ljavax/obex/HeaderSet;->getHeaderList()[I

    move-result-object v0

    .line 105
    .local v0, headerList:[I
    if-eqz v0, :cond_0

    .line 107
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 108
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    aget v3, v0, v1

    aget v4, v0, v1

    invoke-virtual {p3, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v1           #i:I
    :cond_0
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 114
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    iget-object v3, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, v3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    iget-object v4, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    :cond_1
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    if-eqz v2, :cond_2

    .line 119
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 120
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    iget-object v3, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, v3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    iget-object v4, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    :cond_2
    return-void
.end method

.method private sendRequest(I)Z
    .locals 14
    .parameter "opCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x49

    const/16 v12, 0x48

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 398
    const/4 v5, 0x0

    .line 399
    .local v5, returnValue:Z
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 400
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    const/4 v1, -0x1

    .line 401
    .local v1, bodyLength:I
    iget-object v10, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    invoke-static {v10, v9}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v3

    .line 402
    .local v3, headerArray:[B
    iget-object v10, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v10, :cond_0

    .line 403
    iget-object v10, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v10}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v1

    .line 414
    :cond_0
    array-length v10, v3

    add-int/lit8 v10, v10, 0x3

    iget v11, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    if-le v10, v11, :cond_7

    .line 415
    const/4 v2, 0x0

    .line 416
    .local v2, end:I
    const/4 v7, 0x0

    .line 419
    .local v7, start:I
    :goto_0
    array-length v10, v3

    if-eq v2, v10, :cond_6

    .line 421
    iget v10, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    add-int/lit8 v10, v10, -0x3

    invoke-static {v3, v7, v10}, Ljavax/obex/ObexHelper;->findHeaderEnd([BII)I

    move-result v2

    .line 424
    const/4 v10, -0x1

    if-ne v2, v10, :cond_3

    .line 425
    iput-boolean v9, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    .line 426
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->abort()V

    .line 427
    const-string v9, "Header larger then can be sent in a packet"

    iput-object v9, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    .line 428
    iput-boolean v8, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    .line 430
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-eqz v8, :cond_1

    .line 431
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v8}, Ljavax/obex/PrivateInputStream;->close()V

    .line 434
    :cond_1
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v8, :cond_2

    .line 435
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v8}, Ljavax/obex/PrivateOutputStream;->close()V

    .line 437
    :cond_2
    new-instance v8, Ljava/io/IOException;

    const-string v9, "OBEX Packet exceeds max packet size"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 440
    :cond_3
    sub-int v10, v2, v7

    new-array v6, v10, [B

    .line 441
    .local v6, sendHeader:[B
    array-length v10, v6

    invoke-static {v3, v7, v6, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    iget-object v10, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    iget-object v11, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v12, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v10, p1, v6, v11, v12}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 529
    .end local v2           #end:I
    .end local v6           #sendHeader:[B
    .end local v7           #start:I
    :cond_4
    :goto_1
    return v8

    .line 446
    .restart local v2       #end:I
    .restart local v6       #sendHeader:[B
    .restart local v7       #start:I
    :cond_5
    iget-object v10, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v10, v10, Ljavax/obex/HeaderSet;->responseCode:I

    const/16 v11, 0x90

    if-ne v10, v11, :cond_4

    .line 450
    move v7, v2

    .line 451
    goto :goto_0

    .line 453
    .end local v6           #sendHeader:[B
    :cond_6
    if-lez v1, :cond_4

    move v8, v9

    .line 454
    goto :goto_1

    .line 459
    .end local v2           #end:I
    .end local v7           #start:I
    :cond_7
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 462
    if-lez v1, :cond_9

    .line 468
    iget v10, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    array-length v11, v3

    sub-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x6

    if-le v1, v10, :cond_8

    .line 469
    const/4 v5, 0x1

    .line 471
    iget v10, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    array-length v11, v3

    sub-int/2addr v10, v11

    add-int/lit8 v1, v10, -0x6

    .line 474
    :cond_8
    iget-object v10, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v10, v1}, Ljavax/obex/PrivateOutputStream;->readBytes(I)[B

    move-result-object v0

    .line 481
    .local v0, body:[B
    iget-object v10, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v10}, Ljavax/obex/PrivateOutputStream;->isClosed()Z

    move-result v10

    if-eqz v10, :cond_b

    if-nez v5, :cond_b

    iget-boolean v10, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    if-nez v10, :cond_b

    and-int/lit16 v10, p1, 0x80

    if-eqz v10, :cond_b

    .line 483
    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 484
    iput-boolean v9, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    .line 489
    :goto_2
    add-int/lit8 v1, v1, 0x3

    .line 490
    shr-int/lit8 v10, v1, 0x8

    int-to-byte v10, v10

    invoke-virtual {v4, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 491
    int-to-byte v10, v1

    invoke-virtual {v4, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 493
    if-eqz v0, :cond_9

    .line 494
    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 498
    .end local v0           #body:[B
    :cond_9
    iget-boolean v10, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    if-eqz v10, :cond_a

    if-gtz v1, :cond_a

    iget-boolean v10, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    if-nez v10, :cond_a

    .line 500
    and-int/lit16 v10, p1, 0x80

    if-nez v10, :cond_c

    .line 501
    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 508
    :goto_3
    const/4 v1, 0x3

    .line 509
    int-to-byte v9, v8

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 510
    int-to-byte v9, v1

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 513
    :cond_a
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    if-nez v9, :cond_d

    .line 514
    iget-object v9, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/4 v10, 0x0

    iget-object v11, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v12, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v9, p1, v10, v11, v12}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v8, v5

    .line 517
    goto :goto_1

    .line 486
    .restart local v0       #body:[B
    :cond_b
    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 503
    .end local v0           #body:[B
    :cond_c
    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 504
    iput-boolean v9, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    goto :goto_3

    .line 519
    :cond_d
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    if-lez v9, :cond_e

    iget-object v9, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iget-object v11, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v12, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v9, p1, v10, v11, v12}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 526
    :cond_e
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v8, :cond_f

    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v8}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v8

    if-lez v8, :cond_f

    .line 527
    const/4 v5, 0x1

    :cond_f
    move v8, v5

    .line 529
    goto/16 :goto_1
.end method

.method private declared-synchronized startProcessing()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x90

    .line 540
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v1, :cond_0

    .line 541
    new-instance v1, Ljavax/obex/PrivateInputStream;

    invoke-direct {v1, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v1, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    .line 543
    :cond_0
    const/4 v0, 0x1

    .line 545
    .local v0, more:Z
    iget-boolean v1, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    if-eqz v1, :cond_4

    .line 546
    iget-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v1, :cond_3

    .line 547
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x90

    iput v2, v1, Ljavax/obex/HeaderSet;->responseCode:I

    .line 548
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v1, v6, :cond_1

    .line 549
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v0

    goto :goto_0

    .line 552
    :cond_1
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v1, v6, :cond_2

    .line 553
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/16 v2, 0x83

    const/4 v3, 0x0

    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    .line 555
    :cond_2
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v1, v6, :cond_3

    .line 556
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 561
    :cond_4
    :try_start_1
    iget-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v1, :cond_5

    .line 562
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x90

    iput v2, v1, Ljavax/obex/HeaderSet;->responseCode:I

    .line 563
    :goto_2
    if-eqz v0, :cond_5

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v1, v6, :cond_5

    .line 564
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v0

    goto :goto_2

    .line 569
    :cond_5
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v1, v6, :cond_6

    .line 570
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/16 v2, 0x82

    const/4 v3, 0x0

    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    .line 573
    :cond_6
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v1, v6, :cond_3

    .line 574
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 540
    .end local v0           #more:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private validateConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 385
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v0, :cond_0

    .line 386
    invoke-direct {p0}, Ljavax/obex/ClientOperation;->startProcessing()V

    .line 388
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized abort()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x90

    .line 134
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 136
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v0, v1, :cond_0

    .line 137
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :cond_0
    :try_start_1
    const-string v0, "Operation aborted"

    iput-object v0, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    .line 141
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v0, v1, :cond_2

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    .line 147
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/16 v1, 0xff

    const/4 v2, 0x0

    iget-object v3, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    .line 149
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_1

    .line 150
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid response code from server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    .line 156
    :cond_2
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
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

    .line 304
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    .line 305
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    .line 306
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    .line 307
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    invoke-virtual {v0}, Ljavax/obex/ClientSession;->setRequestInactive()V

    .line 308
    return-void
.end method

.method public declared-synchronized continueOperation(ZZ)Z
    .locals 7
    .parameter "sendEmpty"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x90

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 590
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    if-eqz v2, :cond_4

    .line 591
    if-eqz p2, :cond_1

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_1

    .line 593
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/16 v2, 0x83

    const/4 v3, 0x0

    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    .line 597
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v1, v6, :cond_0

    .line 598
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 603
    :cond_1
    if-nez p2, :cond_3

    :try_start_1
    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_3

    .line 606
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v1, :cond_2

    .line 607
    new-instance v1, Ljavax/obex/PrivateInputStream;

    invoke-direct {v1, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v1, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    .line 609
    :cond_2
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 612
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v0, :cond_8

    move v0, v1

    .line 613
    goto :goto_0

    .line 617
    :cond_4
    if-nez p2, :cond_6

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_6

    .line 619
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 620
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x90

    iput v2, v1, Ljavax/obex/HeaderSet;->responseCode:I

    .line 622
    :cond_5
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    goto :goto_0

    .line 624
    :cond_6
    if-eqz p2, :cond_7

    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 626
    goto :goto_0

    .line 628
    :cond_7
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_8

    move v0, v1

    .line 629
    goto :goto_0

    :cond_8
    move v0, v1

    .line 633
    goto :goto_0
.end method

.method public ensureNotDone()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has completed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
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
    .line 367
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    invoke-virtual {v0}, Ljavax/obex/ClientSession;->ensureOpen()V

    .line 369
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    if-nez v0, :cond_1

    .line 373
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_1
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderLength()I
    .locals 3

    .prologue
    .line 286
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    .line 287
    .local v0, headerArray:[B
    array-length v1, v0

    return v1
.end method

.method public getLength()J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 211
    :try_start_0
    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v5, 0xc3

    invoke-virtual {v4, v5}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 213
    .local v1, temp:Ljava/lang/Long;
    if-nez v1, :cond_0

    .line 219
    .end local v1           #temp:Ljava/lang/Long;
    :goto_0
    return-wide v2

    .line 216
    .restart local v1       #temp:Ljava/lang/Long;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 218
    .end local v1           #temp:Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public getMaxPacketSize()I
    .locals 2

    .prologue
    .line 281
    iget v0, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->getHeaderLength()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getReceivedHeader()Ljavax/obex/HeaderSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 320
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

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
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    const/16 v1, 0x90

    if-ne v0, v1, :cond_1

    .line 173
    :cond_0
    invoke-direct {p0}, Ljavax/obex/ClientOperation;->validateConnection()V

    .line 176
    :cond_1
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-object v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;

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
    .line 296
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

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
    .line 230
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 232
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no more input streams available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    if-eqz v0, :cond_2

    .line 236
    invoke-direct {p0}, Ljavax/obex/ClientOperation;->validateConnection()V

    .line 243
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    .line 245
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    return-object v0

    .line 238
    :cond_2
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Ljavax/obex/PrivateInputStream;

    invoke-direct {v0, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

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
    .line 264
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 265
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureNotDone()V

    .line 267
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    if-eqz v0, :cond_0

    .line 268
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no more output streams available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-nez v0, :cond_1

    .line 272
    new-instance v0, Ljavax/obex/PrivateOutputStream;

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljavax/obex/PrivateOutputStream;-><init>(Ljavax/obex/BaseStream;I)V

    iput-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    .line 275
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    .line 277
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    return-object v0
.end method

.method public sendHeaders(Ljavax/obex/HeaderSet;)V
    .locals 5
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 335
    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v2, :cond_0

    .line 336
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Operation has already exchanged all data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    :cond_0
    if-nez p1, :cond_1

    .line 340
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Headers may not be null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    :cond_1
    invoke-virtual {p1}, Ljavax/obex/HeaderSet;->getHeaderList()[I

    move-result-object v0

    .line 344
    .local v0, headerList:[I
    if-eqz v0, :cond_2

    .line 345
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 346
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    aget v3, v0, v1

    aget v4, v0, v1

    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    .end local v1           #i:I
    :cond_2
    return-void
.end method

.method public streamClosed(Z)V
    .locals 9
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v8, 0x83

    const/4 v7, 0x1

    const/16 v6, 0x90

    .line 643
    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    if-nez v2, :cond_6

    .line 644
    if-nez p1, :cond_5

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_5

    .line 647
    const/4 v1, 0x1

    .line 649
    .local v1, more:Z
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v2}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 650
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    invoke-static {v2, v4}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    .line 651
    .local v0, headerArray:[B
    array-length v2, v0

    if-gtz v2, :cond_0

    .line 652
    const/4 v1, 0x0

    .line 655
    .end local v0           #headerArray:[B
    :cond_0
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v3, :cond_1

    .line 656
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iput v6, v2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 659
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_2

    .line 660
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v1

    goto :goto_0

    .line 668
    :cond_2
    :goto_1
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_3

    .line 670
    const/16 v2, 0x82

    invoke-direct {p0, v2}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    goto :goto_1

    .line 672
    :cond_3
    iput-boolean v7, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    .line 725
    .end local v1           #more:Z
    :cond_4
    :goto_2
    return-void

    .line 673
    :cond_5
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v2, :cond_4

    .line 675
    iput-boolean v7, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    goto :goto_2

    .line 678
    :cond_6
    if-eqz p1, :cond_a

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_a

    .line 683
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v3, :cond_7

    .line 684
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iput v6, v2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 687
    :cond_7
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_8

    .line 688
    invoke-direct {p0, v8}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 692
    :cond_8
    :goto_3
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_9

    .line 693
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/4 v3, 0x0

    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v2, v8, v3, v4, v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    goto :goto_3

    .line 695
    :cond_9
    iput-boolean v7, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    goto :goto_2

    .line 696
    :cond_a
    if-nez p1, :cond_4

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_4

    .line 700
    const/4 v1, 0x1

    .line 702
    .restart local v1       #more:Z
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v2, :cond_b

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v2}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v2

    if-gtz v2, :cond_b

    .line 703
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    invoke-static {v2, v4}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    .line 704
    .restart local v0       #headerArray:[B
    array-length v2, v0

    if-gtz v2, :cond_b

    .line 705
    const/4 v1, 0x0

    .line 708
    .end local v0           #headerArray:[B
    :cond_b
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v2, :cond_c

    .line 709
    new-instance v2, Ljavax/obex/PrivateInputStream;

    invoke-direct {v2, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    .line 711
    :cond_c
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v2, :cond_d

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v2}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v2

    if-gtz v2, :cond_d

    .line 712
    const/4 v1, 0x0

    .line 714
    :cond_d
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iput v6, v2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 715
    :goto_4
    if-eqz v1, :cond_e

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_e

    .line 716
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v1

    goto :goto_4

    .line 718
    :cond_e
    invoke-direct {p0, v8}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    .line 720
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v2, v6, :cond_4

    .line 721
    iput-boolean v7, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    goto/16 :goto_2
.end method
