.class public final Lcom/android/wifidirect/test/ServerSession;
.super Lcom/android/wifidirect/test/ObexSession;
.source "ServerSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Obex ServerSession"

.field private static final VERBOSE:Z


# instance fields
.field private mClosed:Z

.field private mInput:Ljava/io/InputStream;

.field private mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

.field private mMaxPacketLength:I

.field private mOutput:Ljava/io/OutputStream;

.field private mProcessThread:Ljava/lang/Thread;

.field public mSrmServer:Lcom/android/wifidirect/test/ObexHelper;

.field private mTransport:Lcom/android/wifidirect/test/ObexTransport;


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/ObexTransport;Lcom/android/wifidirect/test/ServerRequestHandler;Lcom/android/wifidirect/test/Authenticator;)V
    .locals 1
    .parameter "trans"
    .parameter "handler"
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/wifidirect/test/ObexSession;-><init>()V

    .line 77
    iput-object p3, p0, Lcom/android/wifidirect/test/ServerSession;->mAuthenticator:Lcom/android/wifidirect/test/Authenticator;

    .line 78
    iput-object p1, p0, Lcom/android/wifidirect/test/ServerSession;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    .line 79
    iget-object v0, p0, Lcom/android/wifidirect/test/ServerSession;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    invoke-interface {v0}, Lcom/android/wifidirect/test/ObexTransport;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    .line 80
    iget-object v0, p0, Lcom/android/wifidirect/test/ServerSession;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    invoke-interface {v0}, Lcom/android/wifidirect/test/ObexTransport;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/ServerSession;->mOutput:Ljava/io/OutputStream;

    .line 81
    iput-object p2, p0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    .line 82
    const/16 v0, 0x5000

    iput v0, p0, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    .line 83
    new-instance v0, Lcom/android/wifidirect/test/ObexHelper;

    invoke-direct {v0}, Lcom/android/wifidirect/test/ObexHelper;-><init>()V

    iput-object v0, p0, Lcom/android/wifidirect/test/ServerSession;->mSrmServer:Lcom/android/wifidirect/test/ObexHelper;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ServerSession;->mClosed:Z

    .line 85
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/ServerSession;->mProcessThread:Ljava/lang/Thread;

    .line 86
    iget-object v0, p0, Lcom/android/wifidirect/test/ServerSession;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    return-void
.end method

.method private handleAbortRequest()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const/16 v0, 0xa0

    .line 180
    .local v0, code:I
    new-instance v4, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v4}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 181
    .local v4, request:Lcom/android/wifidirect/test/HeaderSet;
    new-instance v3, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v3}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 183
    .local v3, reply:Lcom/android/wifidirect/test/HeaderSet;
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 184
    .local v2, length:I
    shl-int/lit8 v5, v2, 0x8

    iget-object v6, p0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    add-int v2, v5, v6

    .line 185
    iget v5, p0, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    if-le v2, v5, :cond_0

    .line 186
    const/16 v0, 0xce

    .line 195
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/android/wifidirect/test/ServerSession;->sendResponse(I[B)V

    .line 196
    return-void

    .line 188
    :cond_0
    const/4 v1, 0x3

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 189
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    :cond_1
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    invoke-virtual {v5, v4, v3}, Lcom/android/wifidirect/test/ServerRequestHandler;->onAbort(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;)I

    move-result v0

    .line 192
    const-string v5, "Obex ServerSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAbort request handler return value- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0, v0}, Lcom/android/wifidirect/test/ServerSession;->validateResponseCode(I)I

    move-result v0

    goto :goto_0
.end method

.method private handleActionRequest()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    const/16 v2, 0xa0

    .line 209
    .local v2, code:I
    new-instance v6, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v6}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 210
    .local v6, request:Lcom/android/wifidirect/test/HeaderSet;
    new-instance v5, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v5}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 211
    .local v5, reply:Lcom/android/wifidirect/test/HeaderSet;
    iget-object v7, p0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 214
    .local v4, length:I
    shl-int/lit8 v7, v4, 0x8

    iget-object v8, p0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    add-int v4, v7, v8

    .line 216
    iget v7, p0, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    if-le v4, v7, :cond_0

    .line 217
    const/16 v2, 0xce

    .line 240
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {p0, v2, v7}, Lcom/android/wifidirect/test/ServerSession;->sendResponse(I[B)V

    .line 241
    return-void

    .line 219
    :cond_0
    add-int/lit8 v7, v4, -0x3

    new-array v3, v7, [B

    .line 220
    .local v3, headers:[B
    iget-object v7, p0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 222
    .local v1, bytesReceived:I
    :goto_1
    array-length v7, v3

    if-eq v1, v7, :cond_1

    .line 223
    iget-object v7, p0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    array-length v8, v3

    sub-int/2addr v8, v1

    invoke-virtual {v7, v3, v1, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    add-int/2addr v1, v7

    goto :goto_1

    .line 227
    :cond_1
    invoke-static {v6, v3}, Lcom/android/wifidirect/test/ObexHelper;->updateHeaderSet(Lcom/android/wifidirect/test/HeaderSet;[B)[B

    .line 229
    const/16 v7, 0x94

    invoke-virtual {v6, v7}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 230
    .local v0, actionId:Ljava/lang/Byte;
    sget-object v7, Lcom/android/wifidirect/test/ObexHelper;->OBEX_ACTION_COPY:Ljava/lang/Byte;

    if-ne v0, v7, :cond_3

    .line 231
    iget-object v7, p0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    invoke-virtual {v7, v6, v5}, Lcom/android/wifidirect/test/ServerRequestHandler;->onCopy(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;)I

    move-result v2

    .line 238
    :cond_2
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/wifidirect/test/ServerSession;->validateResponseCode(I)I

    move-result v2

    goto :goto_0

    .line 232
    :cond_3
    sget-object v7, Lcom/android/wifidirect/test/ObexHelper;->OBEX_ACTION_MOVE_RENAME:Ljava/lang/Byte;

    if-ne v0, v7, :cond_4

    .line 233
    iget-object v7, p0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    invoke-virtual {v7, v6, v5}, Lcom/android/wifidirect/test/ServerRequestHandler;->onRename(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;)I

    move-result v2

    goto :goto_2

    .line 234
    :cond_4
    sget-object v7, Lcom/android/wifidirect/test/ObexHelper;->OBEX_ACTION_SET_PERM:Ljava/lang/Byte;

    if-ne v0, v7, :cond_2

    .line 235
    iget-object v7, p0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    invoke-virtual {v7, v6, v5}, Lcom/android/wifidirect/test/ServerRequestHandler;->onSetPermissions(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;)I

    move-result v2

    goto :goto_2
.end method

.method private handleConnectRequest()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    const/16 v18, 0x7

    .line 637
    .local v18, totalLength:I
    const/4 v9, 0x0

    .line 638
    .local v9, head:[B
    const/4 v6, -0x1

    .line 639
    .local v6, code:I
    new-instance v16, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct/range {v16 .. v16}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 640
    .local v16, request:Lcom/android/wifidirect/test/HeaderSet;
    new-instance v15, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v15}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 647
    .local v15, reply:Lcom/android/wifidirect/test/HeaderSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v14

    .line 648
    .local v14, packetLength:I
    shl-int/lit8 v20, v14, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->read()I

    move-result v21

    add-int v14, v20, v21

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v19

    .line 650
    .local v19, version:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 652
    .local v8, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    .line 653
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->read()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    .line 654
    const-string v20, "Obex ServerSession"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "!!!!!!!!!!Server mMaxPacketLength"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v14, v0, :cond_3

    .line 661
    const/16 v6, 0xce

    .line 662
    const/16 v18, 0x7

    .line 760
    :cond_0
    :goto_0
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/android/wifidirect/test/ObexHelper;->convertToByteArray(J)[B

    move-result-object v13

    .line 768
    .local v13, length:[B
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 769
    .local v17, sendData:[B
    const/16 v20, 0x0

    int-to-byte v0, v6

    move/from16 v21, v0

    aput-byte v21, v17, v20

    .line 770
    const/16 v20, 0x1

    const/16 v21, 0x2

    aget-byte v21, v13, v21

    aput-byte v21, v17, v20

    .line 771
    const/16 v20, 0x2

    const/16 v21, 0x3

    aget-byte v21, v13, v21

    aput-byte v21, v17, v20

    .line 773
    const/16 v20, 0x3

    const/16 v21, 0x20

    aput-byte v21, v17, v20

    .line 774
    const/16 v20, 0x4

    const/16 v21, 0x0

    aput-byte v21, v17, v20

    .line 775
    const/16 v20, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    move/from16 v21, v0

    shr-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v17, v20

    .line 776
    const/16 v20, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v17, v20

    .line 778
    if-eqz v9, :cond_1

    .line 779
    const/16 v20, 0x0

    const/16 v21, 0x7

    array-length v0, v9

    move/from16 v22, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V

    .line 784
    const-string v20, "Obex ServerSession"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "!!!!code is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/16 v20, 0xd5

    move/from16 v0, v20

    if-ne v6, v0, :cond_2

    .line 790
    const/16 v20, 0x1

    :try_start_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/wifidirect/test/ServerSession;->mClosed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 794
    :cond_2
    :goto_1
    return-void

    .line 664
    .end local v13           #length:[B
    .end local v17           #sendData:[B
    :cond_3
    const/16 v20, 0x7

    move/from16 v0, v20

    if-le v14, v0, :cond_5

    .line 665
    add-int/lit8 v20, v14, -0x7

    move/from16 v0, v20

    new-array v10, v0, [B

    .line 666
    .local v10, headers:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 668
    .local v5, bytesReceived:I
    :goto_2
    array-length v0, v10

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v5, v0, :cond_4

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    array-length v0, v10

    move/from16 v21, v0

    sub-int v21, v21, v5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v10, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v20

    add-int v5, v5, v20

    goto :goto_2

    .line 673
    :cond_4
    move-object/from16 v0, v16

    invoke-static {v0, v10}, Lcom/android/wifidirect/test/ObexHelper;->updateHeaderSet(Lcom/android/wifidirect/test/HeaderSet;[B)[B

    .line 676
    .end local v5           #bytesReceived:I
    .end local v10           #headers:[B
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mSrmServer:Lcom/android/wifidirect/test/ObexHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmCapability()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 680
    const/16 v20, 0x97

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    .line 681
    .local v4, byteHeader:Ljava/lang/Byte;
    sget-object v20, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_SUPPORTED:Ljava/lang/Byte;

    move-object/from16 v0, v20

    if-eq v4, v0, :cond_6

    sget-object v20, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_DISABLED:Ljava/lang/Byte;

    move-object/from16 v0, v20

    if-eq v4, v0, :cond_6

    sget-object v20, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    move-object/from16 v0, v20

    if-ne v4, v0, :cond_6

    .line 685
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mSrmServer:Lcom/android/wifidirect/test/ObexHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmParamStatus()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mSrmServer:Lcom/android/wifidirect/test/ObexHelper;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/wifidirect/test/ObexHelper;->setLocalSrmpWait(Z)V

    .line 694
    .end local v4           #byteHeader:Ljava/lang/Byte;
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/wifidirect/test/ServerRequestHandler;->getConnectionId()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_d

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/wifidirect/test/ObexHelper;->convertToLong([B)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/android/wifidirect/test/ServerRequestHandler;->setConnectionId(J)V

    .line 700
    :goto_4
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 701
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/ServerSession;->handleAuthResp([B)Z

    move-result v20

    if-nez v20, :cond_8

    .line 702
    const/16 v6, 0xc1

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/wifidirect/test/ObexHelper;->getTagValue(B[B)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/wifidirect/test/ServerRequestHandler;->onAuthenticationFailure([B)V

    .line 706
    :cond_8
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    .line 709
    :cond_9
    const/16 v20, 0xc1

    move/from16 v0, v20

    if-eq v6, v0, :cond_0

    .line 710
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 711
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/ServerSession;->handleAuthChall(Lcom/android/wifidirect/test/HeaderSet;)Z

    .line 712
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v15, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    .line 713
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v15, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    iget-object v0, v15, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 715
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    .line 716
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    .line 720
    :cond_a
    :try_start_1
    const-string v20, "Obex ServerSession"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "!!!!version is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 723
    const/16 v20, 0xd5

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    .line 725
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/wifidirect/test/ServerRequestHandler;->onConnect(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;)I

    move-result v6

    .line 726
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/wifidirect/test/ServerSession;->validateResponseCode(I)I

    move-result v6

    .line 728
    iget-object v0, v15, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    .line 729
    const/16 v20, 0x10

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/wifidirect/test/ServerSession;->mChallengeDigest:[B

    .line 730
    iget-object v0, v15, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mChallengeDigest:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x10

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 734
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/wifidirect/test/ServerRequestHandler;->getConnectionId()J

    move-result-wide v11

    .line 735
    .local v11, id:J
    const-wide/16 v20, -0x1

    cmp-long v20, v11, v20

    if-nez v20, :cond_f

    .line 736
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v15, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    .line 741
    :goto_6
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v0}, Lcom/android/wifidirect/test/ObexHelper;->createHeader(Lcom/android/wifidirect/test/HeaderSet;Z)[B

    move-result-object v9

    .line 742
    array-length v0, v9

    move/from16 v20, v0

    add-int v18, v18, v20

    .line 744
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    move/from16 v20, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 745
    const/16 v18, 0x7

    .line 746
    const/4 v9, 0x0

    .line 747
    const/16 v6, 0xd0

    goto/16 :goto_0

    .line 690
    .end local v11           #id:J
    .restart local v4       #byteHeader:Ljava/lang/Byte;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mSrmServer:Lcom/android/wifidirect/test/ObexHelper;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/wifidirect/test/ObexHelper;->setLocalSrmpWait(Z)V

    goto/16 :goto_3

    .line 697
    .end local v4           #byteHeader:Ljava/lang/Byte;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/android/wifidirect/test/ServerRequestHandler;->setConnectionId(J)V

    goto/16 :goto_4

    .line 732
    :cond_e
    const/16 v20, 0x0

    :try_start_2
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/wifidirect/test/ServerSession;->mChallengeDigest:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 749
    :catch_0
    move-exception v7

    .line 750
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 751
    const/16 v18, 0x7

    .line 752
    const/4 v9, 0x0

    .line 753
    const/16 v6, 0xd0

    goto/16 :goto_0

    .line 738
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v11       #id:J
    :cond_f
    :try_start_3
    invoke-static {v11, v12}, Lcom/android/wifidirect/test/ObexHelper;->convertToByteArray(J)[B

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v15, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 791
    .end local v11           #id:J
    .restart local v13       #length:[B
    .restart local v17       #sendData:[B
    :catch_1
    move-exception v20

    goto/16 :goto_1
.end method

.method private handleDisconnectRequest()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    const/16 v2, 0xa0

    .line 528
    .local v2, code:I
    const/4 v12, 0x3

    .line 529
    .local v12, totalLength:I
    const/4 v4, 0x0

    .line 531
    .local v4, head:[B
    new-instance v11, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v11}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 532
    .local v11, request:Lcom/android/wifidirect/test/HeaderSet;
    new-instance v9, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v9}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 534
    .local v9, reply:Lcom/android/wifidirect/test/HeaderSet;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 535
    .local v8, length:I
    shl-int/lit8 v13, v8, 0x8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v14

    add-int v8, v13, v14

    .line 537
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    if-le v8, v13, :cond_2

    .line 538
    const/16 v2, 0xce

    .line 539
    const/4 v12, 0x3

    .line 602
    :cond_0
    :goto_0
    if-eqz v4, :cond_a

    .line 603
    array-length v13, v4

    add-int/lit8 v13, v13, 0x3

    new-array v10, v13, [B

    .line 607
    .local v10, replyData:[B
    :goto_1
    const/4 v13, 0x0

    int-to-byte v14, v2

    aput-byte v14, v10, v13

    .line 608
    const/4 v13, 0x1

    shr-int/lit8 v14, v12, 0x8

    int-to-byte v14, v14

    aput-byte v14, v10, v13

    .line 609
    const/4 v13, 0x2

    int-to-byte v14, v12

    aput-byte v14, v10, v13

    .line 610
    if-eqz v4, :cond_1

    .line 611
    const/4 v13, 0x0

    const/4 v14, 0x3

    array-length v15, v4

    invoke-static {v4, v13, v10, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/ServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v13, v10}, Ljava/io/OutputStream;->write([B)V

    .line 618
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/ServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 619
    .end local v10           #replyData:[B
    :goto_2
    return-void

    .line 541
    :cond_2
    const/4 v13, 0x3

    if-le v8, v13, :cond_4

    .line 542
    add-int/lit8 v13, v8, -0x3

    new-array v5, v13, [B

    .line 543
    .local v5, headers:[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v13, v5}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 545
    .local v1, bytesReceived:I
    :goto_3
    array-length v13, v5

    if-eq v1, v13, :cond_3

    .line 546
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    array-length v14, v5

    sub-int/2addr v14, v1

    invoke-virtual {v13, v5, v1, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    add-int/2addr v1, v13

    goto :goto_3

    .line 550
    :cond_3
    invoke-static {v11, v5}, Lcom/android/wifidirect/test/ObexHelper;->updateHeaderSet(Lcom/android/wifidirect/test/HeaderSet;[B)[B

    .line 553
    .end local v1           #bytesReceived:I
    .end local v5           #headers:[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    invoke-virtual {v13}, Lcom/android/wifidirect/test/ServerRequestHandler;->getConnectionId()J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_8

    iget-object v13, v11, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    if-eqz v13, :cond_8

    .line 554
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    iget-object v14, v11, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    invoke-static {v14}, Lcom/android/wifidirect/test/ObexHelper;->convertToLong([B)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/android/wifidirect/test/ServerRequestHandler;->setConnectionId(J)V

    .line 559
    :goto_4
    iget-object v13, v11, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    if-eqz v13, :cond_6

    .line 560
    iget-object v13, v11, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/wifidirect/test/ServerSession;->handleAuthResp([B)Z

    move-result v13

    if-nez v13, :cond_5

    .line 561
    const/16 v2, 0xc1

    .line 562
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    const/4 v14, 0x1

    iget-object v15, v11, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    invoke-static {v14, v15}, Lcom/android/wifidirect/test/ObexHelper;->getTagValue(B[B)[B

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/wifidirect/test/ServerRequestHandler;->onAuthenticationFailure([B)V

    .line 565
    :cond_5
    const/4 v13, 0x0

    iput-object v13, v11, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    .line 568
    :cond_6
    const/16 v13, 0xc1

    if-eq v2, v13, :cond_0

    .line 570
    iget-object v13, v11, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    if-eqz v13, :cond_7

    .line 571
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/wifidirect/test/ServerSession;->handleAuthChall(Lcom/android/wifidirect/test/HeaderSet;)Z

    .line 572
    const/4 v13, 0x0

    iput-object v13, v11, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    .line 576
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    invoke-virtual {v13, v11, v9}, Lcom/android/wifidirect/test/ServerRequestHandler;->onDisconnect(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    invoke-virtual {v13}, Lcom/android/wifidirect/test/ServerRequestHandler;->getConnectionId()J

    move-result-wide v6

    .line 583
    .local v6, id:J
    const-wide/16 v13, -0x1

    cmp-long v13, v6, v13

    if-nez v13, :cond_9

    .line 584
    const/4 v13, 0x0

    iput-object v13, v9, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    .line 589
    :goto_5
    const/4 v13, 0x0

    invoke-static {v9, v13}, Lcom/android/wifidirect/test/ObexHelper;->createHeader(Lcom/android/wifidirect/test/HeaderSet;Z)[B

    move-result-object v4

    .line 590
    array-length v13, v4

    add-int/2addr v12, v13

    .line 592
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    if-le v12, v13, :cond_0

    .line 593
    const/4 v12, 0x3

    .line 594
    const/4 v4, 0x0

    .line 595
    const/16 v2, 0xd0

    goto/16 :goto_0

    .line 556
    .end local v6           #id:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    const-wide/16 v14, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/wifidirect/test/ServerRequestHandler;->setConnectionId(J)V

    goto :goto_4

    .line 577
    :catch_0
    move-exception v3

    .line 578
    .local v3, e:Ljava/lang/Exception;
    const/16 v13, 0xd0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/wifidirect/test/ServerSession;->sendResponse(I[B)V

    goto/16 :goto_2

    .line 586
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v6       #id:J
    :cond_9
    invoke-static {v6, v7}, Lcom/android/wifidirect/test/ObexHelper;->convertToByteArray(J)[B

    move-result-object v13

    iput-object v13, v9, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    goto :goto_5

    .line 605
    .end local v6           #id:J
    :cond_a
    const/4 v13, 0x3

    new-array v10, v13, [B

    .restart local v10       #replyData:[B
    goto/16 :goto_1
.end method

.method private handleGetRequest(I)V
    .locals 11
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 324
    new-instance v0, Lcom/android/wifidirect/test/ServerOperation;

    iget-object v2, p0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    iget v4, p0, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    iget-object v5, p0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/wifidirect/test/ServerOperation;-><init>(Lcom/android/wifidirect/test/ServerSession;Ljava/io/InputStream;IILcom/android/wifidirect/test/ServerRequestHandler;)V

    .line 326
    .local v0, op:Lcom/android/wifidirect/test/ServerOperation;
    :try_start_0
    iget-object v1, v0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v2, 0x97

    invoke-virtual {v1, v2}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    .line 328
    .local v8, srm:Ljava/lang/Byte;
    sget-object v1, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    if-ne v8, v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerSession;->mSrmServer:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmCapability()Z

    move-result v1

    if-ne v1, v9, :cond_2

    .line 333
    iget-object v1, v0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v2, 0x97

    sget-object v3, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    invoke-virtual {v1, v2, v3}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 335
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerSession;->mSrmServer:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmpWait()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, v0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v2, 0x98

    sget-object v3, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_PARAM_WAIT:Ljava/lang/Byte;

    invoke-virtual {v1, v2, v3}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 348
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    invoke-virtual {v1, v0}, Lcom/android/wifidirect/test/ServerRequestHandler;->onGet(Lcom/android/wifidirect/test/Operation;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/wifidirect/test/ServerSession;->validateResponseCode(I)I

    move-result v7

    .line 350
    .local v7, response:I
    iget-boolean v1, v0, Lcom/android/wifidirect/test/ServerOperation;->isAborted:Z

    if-nez v1, :cond_3

    .line 351
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/wifidirect/test/ServerOperation;->sendReply(IZZ)Z

    .line 360
    .end local v7           #response:I
    .end local v8           #srm:Ljava/lang/Byte;
    :cond_1
    :goto_1
    return-void

    .line 343
    .restart local v8       #srm:Ljava/lang/Byte;
    :cond_2
    iget-object v1, v0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v2, 0x97

    sget-object v3, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_DISABLED:Ljava/lang/Byte;

    invoke-virtual {v1, v2, v3}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    .end local v8           #srm:Ljava/lang/Byte;
    :catch_0
    move-exception v6

    .line 358
    .local v6, e:Ljava/lang/Exception;
    const/16 v1, 0xd0

    invoke-virtual {p0, v1, v10}, Lcom/android/wifidirect/test/ServerSession;->sendResponse(I[B)V

    goto :goto_1

    .line 353
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v7       #response:I
    .restart local v8       #srm:Ljava/lang/Byte;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerSession;->mSrmServer:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmStatus()Z

    move-result v1

    if-ne v1, v9, :cond_1

    .line 354
    const/16 v1, 0xa0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/ServerSession;->sendResponse(I[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private handlePutRequest(I)V
    .locals 9
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lcom/android/wifidirect/test/ServerOperation;

    iget-object v2, p0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    iget v4, p0, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    iget-object v5, p0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/wifidirect/test/ServerOperation;-><init>(Lcom/android/wifidirect/test/ServerSession;Ljava/io/InputStream;IILcom/android/wifidirect/test/ServerRequestHandler;)V

    .line 261
    .local v0, op:Lcom/android/wifidirect/test/ServerOperation;
    const/4 v7, -0x1

    .line 263
    .local v7, response:I
    :try_start_0
    iget-object v1, v0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v2, 0x97

    invoke-virtual {v1, v2}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    .line 264
    .local v8, srm:Ljava/lang/Byte;
    sget-object v1, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    if-ne v8, v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerSession;->mSrmServer:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmCapability()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 268
    iget-object v1, v0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v2, 0x97

    sget-object v3, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    invoke-virtual {v1, v2, v3}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 269
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerSession;->mSrmServer:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmpWait()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, v0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v2, 0x98

    sget-object v3, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_PARAM_WAIT:Ljava/lang/Byte;

    invoke-virtual {v1, v2, v3}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 279
    :cond_0
    :goto_0
    iget-boolean v1, v0, Lcom/android/wifidirect/test/ServerOperation;->finalBitSet:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/wifidirect/test/ServerOperation;->isValidBody()Z

    move-result v1

    if-nez v1, :cond_3

    .line 280
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    iget-object v2, v0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v3, v0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    invoke-virtual {v1, v2, v3}, Lcom/android/wifidirect/test/ServerRequestHandler;->onDelete(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/wifidirect/test/ServerSession;->validateResponseCode(I)I

    move-result v7

    .line 285
    :goto_1
    const/16 v1, 0xa0

    if-eq v7, v1, :cond_4

    iget-boolean v1, v0, Lcom/android/wifidirect/test/ServerOperation;->isAborted:Z

    if-nez v1, :cond_4

    .line 287
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/wifidirect/test/ServerOperation;->sendReply(IZZ)Z

    .line 306
    .end local v8           #srm:Ljava/lang/Byte;
    :cond_1
    :goto_2
    return-void

    .line 275
    .restart local v8       #srm:Ljava/lang/Byte;
    :cond_2
    iget-object v1, v0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v2, 0x97

    sget-object v3, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_DISABLED:Ljava/lang/Byte;

    invoke-virtual {v1, v2, v3}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    .end local v8           #srm:Ljava/lang/Byte;
    :catch_0
    move-exception v6

    .line 302
    .local v6, e:Ljava/lang/Exception;
    iget-boolean v1, v0, Lcom/android/wifidirect/test/ServerOperation;->isAborted:Z

    if-nez v1, :cond_1

    .line 303
    const/16 v1, 0xd0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/ServerSession;->sendResponse(I[B)V

    goto :goto_2

    .line 283
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v8       #srm:Ljava/lang/Byte;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    invoke-virtual {v1, v0}, Lcom/android/wifidirect/test/ServerRequestHandler;->onPut(Lcom/android/wifidirect/test/Operation;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/wifidirect/test/ServerSession;->validateResponseCode(I)I

    move-result v7

    goto :goto_1

    .line 288
    :cond_4
    iget-boolean v1, v0, Lcom/android/wifidirect/test/ServerOperation;->isAborted:Z

    if-nez v1, :cond_1

    .line 290
    :goto_3
    iget-boolean v1, v0, Lcom/android/wifidirect/test/ServerOperation;->finalBitSet:Z

    if-nez v1, :cond_5

    .line 292
    const/16 v1, 0x90

    iget-boolean v2, v0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseActive:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wifidirect/test/ServerOperation;->sendReply(IZZ)Z

    goto :goto_3

    .line 294
    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/wifidirect/test/ServerOperation;->sendReply(IZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private handleSetPathRequest()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    const/16 v19, 0x3

    .line 405
    .local v19, totalLength:I
    const/4 v11, 0x0

    .line 406
    .local v11, head:[B
    const/4 v6, -0x1

    .line 408
    .local v6, code:I
    new-instance v18, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct/range {v18 .. v18}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 409
    .local v18, request:Lcom/android/wifidirect/test/HeaderSet;
    new-instance v16, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct/range {v16 .. v16}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 411
    .local v16, reply:Lcom/android/wifidirect/test/HeaderSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v15

    .line 412
    .local v15, length:I
    shl-int/lit8 v20, v15, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->read()I

    move-result v21

    add-int v15, v20, v21

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 414
    .local v10, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 416
    .local v7, constants:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v15, v0, :cond_2

    .line 417
    const/16 v6, 0xce

    .line 418
    const/16 v19, 0x3

    .line 502
    :cond_0
    :goto_0
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 503
    .local v17, replyData:[B
    const/16 v20, 0x0

    int-to-byte v0, v6

    move/from16 v21, v0

    aput-byte v21, v17, v20

    .line 504
    const/16 v20, 0x1

    shr-int/lit8 v21, v19, 0x8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v17, v20

    .line 505
    const/16 v20, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v17, v20

    .line 506
    if-eqz v11, :cond_1

    .line 507
    const/16 v20, 0x0

    const/16 v21, 0x3

    array-length v0, v11

    move/from16 v22, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V

    .line 515
    .end local v17           #replyData:[B
    :goto_1
    return-void

    .line 420
    :cond_2
    const/16 v20, 0x5

    move/from16 v0, v20

    if-le v15, v0, :cond_5

    .line 421
    add-int/lit8 v20, v15, -0x5

    move/from16 v0, v20

    new-array v12, v0, [B

    .line 422
    .local v12, headers:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 424
    .local v5, bytesReceived:I
    :goto_2
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v5, v0, :cond_3

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    array-length v0, v12

    move/from16 v21, v0

    sub-int v21, v21, v5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v20

    add-int v5, v5, v20

    goto :goto_2

    .line 429
    :cond_3
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/android/wifidirect/test/ObexHelper;->updateHeaderSet(Lcom/android/wifidirect/test/HeaderSet;[B)[B

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/wifidirect/test/ServerRequestHandler;->getConnectionId()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_9

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/wifidirect/test/ObexHelper;->convertToLong([B)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/android/wifidirect/test/ServerRequestHandler;->setConnectionId(J)V

    .line 437
    :goto_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 438
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/ServerSession;->handleAuthResp([B)Z

    move-result v20

    if-nez v20, :cond_4

    .line 439
    const/16 v6, 0xc1

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/wifidirect/test/ObexHelper;->getTagValue(B[B)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/wifidirect/test/ServerRequestHandler;->onAuthenticationFailure([B)V

    .line 443
    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    .line 447
    .end local v5           #bytesReceived:I
    .end local v12           #headers:[B
    :cond_5
    const/16 v20, 0xc1

    move/from16 v0, v20

    if-eq v6, v0, :cond_0

    .line 450
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 451
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/ServerSession;->handleAuthChall(Lcom/android/wifidirect/test/HeaderSet;)Z

    .line 452
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    .line 453
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    .line 456
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    .line 458
    :cond_6
    const/4 v4, 0x0

    .line 459
    .local v4, backup:Z
    const/4 v8, 0x1

    .line 460
    .local v8, create:Z
    and-int/lit8 v20, v10, 0x1

    if-eqz v20, :cond_7

    .line 461
    const/4 v4, 0x1

    .line 463
    :cond_7
    and-int/lit8 v20, v10, 0x2

    if-eqz v20, :cond_8

    .line 464
    const/4 v8, 0x0

    .line 468
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2, v4, v8}, Lcom/android/wifidirect/test/ServerRequestHandler;->onSetPath(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;ZZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 474
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/wifidirect/test/ServerSession;->validateResponseCode(I)I

    move-result v6

    .line 476
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 477
    const/16 v20, 0x10

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/wifidirect/test/ServerSession;->mChallengeDigest:[B

    .line 478
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mChallengeDigest:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x10

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/wifidirect/test/ServerRequestHandler;->getConnectionId()J

    move-result-wide v13

    .line 484
    .local v13, id:J
    const-wide/16 v20, -0x1

    cmp-long v20, v13, v20

    if-nez v20, :cond_b

    .line 485
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    .line 490
    :goto_5
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/wifidirect/test/ObexHelper;->createHeader(Lcom/android/wifidirect/test/HeaderSet;Z)[B

    move-result-object v11

    .line 491
    array-length v0, v11

    move/from16 v20, v0

    add-int v19, v19, v20

    .line 493
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 494
    const/16 v19, 0x3

    .line 495
    const/4 v11, 0x0

    .line 496
    const/16 v6, 0xd0

    goto/16 :goto_0

    .line 434
    .end local v4           #backup:Z
    .end local v8           #create:Z
    .end local v13           #id:J
    .restart local v5       #bytesReceived:I
    .restart local v12       #headers:[B
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/android/wifidirect/test/ServerRequestHandler;->setConnectionId(J)V

    goto/16 :goto_3

    .line 469
    .end local v5           #bytesReceived:I
    .end local v12           #headers:[B
    .restart local v4       #backup:Z
    .restart local v8       #create:Z
    :catch_0
    move-exception v9

    .line 470
    .local v9, e:Ljava/lang/Exception;
    const/16 v20, 0xd0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/wifidirect/test/ServerSession;->sendResponse(I[B)V

    goto/16 :goto_1

    .line 480
    .end local v9           #e:Ljava/lang/Exception;
    :cond_a
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/wifidirect/test/ServerSession;->mChallengeDigest:[B

    goto :goto_4

    .line 487
    .restart local v13       #id:J
    :cond_b
    invoke-static {v13, v14}, Lcom/android/wifidirect/test/ObexHelper;->convertToByteArray(J)[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    goto :goto_5
.end method

.method private validateResponseCode(I)I
    .locals 2
    .parameter "code"

    .prologue
    const/16 v0, 0xd0

    .line 827
    const/16 v1, 0xa0

    if-lt p1, v1, :cond_1

    const/16 v1, 0xa6

    if-gt p1, v1, :cond_1

    .line 846
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 830
    .restart local p1
    :cond_1
    const/16 v1, 0xb0

    if-lt p1, v1, :cond_2

    const/16 v1, 0xb5

    if-le p1, v1, :cond_0

    .line 834
    :cond_2
    const/16 v1, 0xc0

    if-lt p1, v1, :cond_3

    const/16 v1, 0xcf

    if-le p1, v1, :cond_0

    .line 838
    :cond_3
    if-lt p1, v0, :cond_4

    const/16 v1, 0xd5

    if-le p1, v1, :cond_0

    .line 842
    :cond_4
    const/16 v1, 0xe0

    if-lt p1, v1, :cond_5

    const/16 v1, 0xe1

    if-le p1, v1, :cond_0

    :cond_5
    move p1, v0

    .line 846
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 802
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/ServerRequestHandler;->onClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 807
    iget-object v0, p0, Lcom/android/wifidirect/test/ServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 808
    iget-object v0, p0, Lcom/android/wifidirect/test/ServerSession;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    invoke-interface {v0}, Lcom/android/wifidirect/test/ObexTransport;->close()V

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ServerSession;->mClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 812
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/wifidirect/test/ServerSession;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    .line 814
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/ServerSession;->mOutput:Ljava/io/OutputStream;

    .line 815
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/ServerSession;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 816
    monitor-exit p0

    return-void

    .line 802
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 810
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getMaxPacketSize()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, done:Z
    :goto_0
    if-nez v0, :cond_0

    :try_start_0
    iget-boolean v5, p0, Lcom/android/wifidirect/test/ServerSession;->mClosed:Z

    if-nez v5, :cond_0

    .line 107
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 109
    .local v4, requestType:I
    sparse-switch v4, :sswitch_data_0

    .line 149
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 150
    .local v3, length:I
    shl-int/lit8 v5, v3, 0x8

    iget-object v6, p0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    add-int v3, v5, v6

    .line 151
    const/4 v2, 0x3

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 152
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    .end local v2           #i:I
    .end local v3           #length:I
    :sswitch_0
    invoke-direct {p0}, Lcom/android/wifidirect/test/ServerSession;->handleConnectRequest()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 158
    .end local v4           #requestType:I
    :catch_0
    move-exception v1

    .line 159
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "Obex ServerSession"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_0
    :goto_2
    sget-boolean v5, Lcom/android/wifidirect/test/Constants;->IS_USE_FTP_TRANSFOR_MODE:Z

    if-nez v5, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ServerSession;->close()V

    .line 167
    :cond_1
    return-void

    .line 115
    .restart local v4       #requestType:I
    :sswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/wifidirect/test/ServerSession;->handleDisconnectRequest()V

    .line 116
    const/4 v0, 0x1

    .line 117
    goto :goto_0

    .line 121
    :sswitch_2
    invoke-direct {p0, v4}, Lcom/android/wifidirect/test/ServerSession;->handleGetRequest(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 160
    .end local v4           #requestType:I
    :catch_1
    move-exception v1

    .line 161
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Obex ServerSession"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 126
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #requestType:I
    :sswitch_3
    :try_start_2
    invoke-direct {p0, v4}, Lcom/android/wifidirect/test/ServerSession;->handlePutRequest(I)V

    goto :goto_0

    .line 130
    :sswitch_4
    invoke-direct {p0}, Lcom/android/wifidirect/test/ServerSession;->handleSetPathRequest()V

    goto :goto_0

    .line 133
    :sswitch_5
    invoke-direct {p0}, Lcom/android/wifidirect/test/ServerSession;->handleAbortRequest()V

    goto :goto_0

    .line 136
    :sswitch_6
    invoke-direct {p0}, Lcom/android/wifidirect/test/ServerSession;->handleActionRequest()V

    goto :goto_0

    .line 139
    :sswitch_7
    const/4 v0, 0x1

    .line 140
    goto :goto_0

    .line 154
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_2
    const/16 v5, 0xd1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/wifidirect/test/ServerSession;->sendResponse(I[B)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 109
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_7
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x80 -> :sswitch_0
        0x81 -> :sswitch_1
        0x82 -> :sswitch_3
        0x83 -> :sswitch_2
        0x85 -> :sswitch_4
        0x86 -> :sswitch_6
        0xff -> :sswitch_5
    .end sparse-switch
.end method

.method public sendResponse(I[B)V
    .locals 6
    .parameter "code"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 369
    const/4 v1, 0x3

    .line 370
    .local v1, totalLength:I
    const/4 v0, 0x0

    .line 372
    .local v0, data:[B
    if-eqz p2, :cond_0

    .line 373
    array-length v2, p2

    add-int/2addr v1, v2

    .line 375
    new-array v0, v1, [B

    .line 376
    int-to-byte v2, p1

    aput-byte v2, v0, v4

    .line 377
    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 378
    int-to-byte v2, v1

    aput-byte v2, v0, v5

    .line 379
    const/4 v2, 0x3

    array-length v3, p2

    invoke-static {p2, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    :goto_0
    iget-object v2, p0, Lcom/android/wifidirect/test/ServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 387
    iget-object v2, p0, Lcom/android/wifidirect/test/ServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 388
    return-void

    .line 381
    :cond_0
    new-array v0, v1, [B

    .line 382
    int-to-byte v2, p1

    aput-byte v2, v0, v4

    .line 383
    aput-byte v4, v0, v3

    .line 384
    int-to-byte v2, v1

    aput-byte v2, v0, v5

    goto :goto_0
.end method

.method public setMaxPacketSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/wifidirect/test/ServerSession;->mMaxPacketLength:I

    .line 92
    return-void
.end method
