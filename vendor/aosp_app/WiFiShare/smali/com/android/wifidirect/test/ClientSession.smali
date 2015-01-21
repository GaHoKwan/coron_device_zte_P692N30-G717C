.class public final Lcom/android/wifidirect/test/ClientSession;
.super Lcom/android/wifidirect/test/ObexSession;
.source "ClientSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifidirect/test/ClientSession$eventParser;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Obex ClientSession"

.field private static final VERBOSE:Z


# instance fields
.field private mConnectionId:[B

.field private mEp:Lcom/android/wifidirect/test/ClientSession$eventParser;

.field private final mInput:Ljava/io/InputStream;

.field private mObexConnected:Z

.field private mOpen:Z

.field private final mOutput:Ljava/io/OutputStream;

.field private mRequestActive:Z

.field public mSrmClient:Lcom/android/wifidirect/test/ObexHelper;

.field private mTotalSize:J

.field private maxPacketSize:I


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/ObexTransport;)V
    .locals 3
    .parameter "trans"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/wifidirect/test/ObexSession;-><init>()V

    .line 57
    iput-object v2, p0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    .line 64
    const/16 v0, 0x5000

    iput v0, p0, Lcom/android/wifidirect/test/ClientSession;->maxPacketSize:I

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/wifidirect/test/ClientSession;->mTotalSize:J

    .line 79
    invoke-interface {p1}, Lcom/android/wifidirect/test/ObexTransport;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mInput:Ljava/io/InputStream;

    .line 80
    invoke-interface {p1}, Lcom/android/wifidirect/test/ObexTransport;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mOutput:Ljava/io/OutputStream;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientSession;->mOpen:Z

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientSession;->mRequestActive:Z

    .line 83
    iput-object v2, p0, Lcom/android/wifidirect/test/ClientSession;->mEp:Lcom/android/wifidirect/test/ClientSession$eventParser;

    .line 84
    new-instance v0, Lcom/android/wifidirect/test/ObexHelper;

    invoke-direct {v0}, Lcom/android/wifidirect/test/ObexHelper;-><init>()V

    iput-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mSrmClient:Lcom/android/wifidirect/test/ObexHelper;

    .line 85
    return-void
.end method

.method private declared-synchronized setRequestActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientSession;->mRequestActive:Z

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Ljava/io/IOException;

    const-string v1, "OBEX request is already being performed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 424
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientSession;->mRequestActive:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public action(Lcom/android/wifidirect/test/HeaderSet;I)Lcom/android/wifidirect/test/HeaderSet;
    .locals 10
    .parameter "header"
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/16 v4, 0x10

    const/4 v5, 0x0

    .line 605
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientSession;->mObexConnected:Z

    if-nez v0, :cond_0

    .line 606
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not connected to the server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_0
    invoke-direct {p0}, Lcom/android/wifidirect/test/ClientSession;->setRequestActive()V

    .line 609
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientSession;->ensureOpen()V

    .line 611
    const/4 v9, 0x2

    .line 612
    .local v9, totalLength:I
    const/4 v7, 0x0

    .line 614
    .local v7, head:[B
    if-nez p1, :cond_4

    .line 615
    new-instance v8, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v8}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 625
    .local v8, headset:Lcom/android/wifidirect/test/HeaderSet;
    :cond_1
    :goto_0
    iget-object v0, v8, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    if-eqz v0, :cond_2

    .line 626
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mChallengeDigest:[B

    .line 627
    iget-object v0, v8, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    iget-object v1, p0, Lcom/android/wifidirect/test/ClientSession;->mChallengeDigest:[B

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 631
    :cond_2
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    if-eqz v0, :cond_3

    .line 632
    new-array v0, v6, [B

    iput-object v0, v8, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    .line 633
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    iget-object v1, v8, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    invoke-static {v0, v5, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    :cond_3
    invoke-static {v8, v5}, Lcom/android/wifidirect/test/ObexHelper;->createHeader(Lcom/android/wifidirect/test/HeaderSet;Z)[B

    move-result-object v7

    .line 637
    array-length v0, v7

    add-int/2addr v9, v0

    .line 639
    iget v0, p0, Lcom/android/wifidirect/test/ClientSession;->maxPacketSize:I

    if-le v9, v0, :cond_5

    .line 640
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet size exceeds max packet size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    .end local v8           #headset:Lcom/android/wifidirect/test/HeaderSet;
    :cond_4
    move-object v8, p1

    .line 618
    .restart local v8       #headset:Lcom/android/wifidirect/test/HeaderSet;
    iget-object v0, v8, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    if-eqz v0, :cond_1

    .line 619
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mChallengeDigest:[B

    .line 620
    iget-object v0, v8, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    iget-object v1, p0, Lcom/android/wifidirect/test/ClientSession;->mChallengeDigest:[B

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 651
    :cond_5
    new-array v2, v9, [B

    .line 652
    .local v2, packet:[B
    const/16 v0, -0x6c

    aput-byte v0, v2, v5

    .line 653
    const/4 v0, 0x1

    int-to-byte v1, p2

    aput-byte v1, v2, v0

    .line 655
    if-eqz v8, :cond_6

    .line 656
    const/4 v0, 0x2

    array-length v1, v7

    invoke-static {v7, v5, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    :cond_6
    new-instance v3, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v3}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 660
    .local v3, returnHeaderSet:Lcom/android/wifidirect/test/HeaderSet;
    const/16 v1, 0x86

    const/4 v4, 0x0

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/wifidirect/test/ClientSession;->sendRequest(I[BLcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/PrivateInputStream;ZZ)Z

    .line 662
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientSession;->setRequestInactive()V

    .line 664
    return-object v3
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientSession;->mOpen:Z

    .line 669
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 670
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 671
    return-void
.end method

.method public connect(Lcom/android/wifidirect/test/HeaderSet;)Lcom/android/wifidirect/test/HeaderSet;
    .locals 12
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x10

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientSession;->ensureOpen()V

    .line 94
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientSession;->mObexConnected:Z

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already connected to server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/android/wifidirect/test/ClientSession;->setRequestActive()V

    .line 99
    const/4 v9, 0x4

    .line 100
    .local v9, totalLength:I
    const/4 v7, 0x0

    .line 103
    .local v7, head:[B
    if-eqz p1, :cond_2

    .line 104
    iget-object v0, p1, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    if-eqz v0, :cond_1

    .line 105
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mChallengeDigest:[B

    .line 106
    iget-object v0, p1, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    iget-object v1, p0, Lcom/android/wifidirect/test/ClientSession;->mChallengeDigest:[B

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    :cond_1
    invoke-static {p1, v5}, Lcom/android/wifidirect/test/ObexHelper;->createHeader(Lcom/android/wifidirect/test/HeaderSet;Z)[B

    move-result-object v7

    .line 109
    array-length v0, v7

    add-int/2addr v9, v0

    .line 120
    :cond_2
    new-array v2, v9, [B

    .line 124
    .local v2, requestPacket:[B
    const/16 v0, 0x20

    aput-byte v0, v2, v5

    .line 125
    aput-byte v5, v2, v10

    .line 126
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/wifidirect/test/ClientSession;->maxPacketSize:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 127
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/wifidirect/test/ClientSession;->maxPacketSize:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 128
    if-eqz v7, :cond_3

    .line 129
    array-length v0, v7

    invoke-static {v7, v5, v2, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    :cond_3
    array-length v0, v2

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/android/wifidirect/test/ClientSession;->maxPacketSize:I

    if-le v0, v1, :cond_4

    .line 134
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet size exceeds max packet size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_4
    new-instance v3, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v3}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 138
    .local v3, returnHeaderSet:Lcom/android/wifidirect/test/HeaderSet;
    const/16 v1, 0x80

    const/4 v4, 0x0

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/wifidirect/test/ClientSession;->sendRequest(I[BLcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/PrivateInputStream;ZZ)Z

    .line 149
    iget v0, v3, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_6

    .line 150
    iget-object v0, v3, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    if-eqz v0, :cond_5

    .line 151
    iget-object v0, v3, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    iget-object v1, p0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    invoke-static {v0, v5, v1, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    :cond_5
    iput-boolean v10, p0, Lcom/android/wifidirect/test/ClientSession;->mObexConnected:Z

    .line 155
    const/16 v0, 0x97

    invoke-virtual {v3, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    .line 156
    .local v8, srm:Ljava/lang/Byte;
    sget-object v0, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_SUPPORTED:Ljava/lang/Byte;

    if-ne v8, v0, :cond_7

    .line 157
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mSrmClient:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v0, v10}, Lcom/android/wifidirect/test/ObexHelper;->setRemoteSrmStatus(Z)V

    .line 164
    .end local v8           #srm:Ljava/lang/Byte;
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientSession;->setRequestInactive()V

    .line 166
    return-object v3

    .line 160
    .restart local v8       #srm:Ljava/lang/Byte;
    :cond_7
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mSrmClient:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v0, v5}, Lcom/android/wifidirect/test/ObexHelper;->setRemoteSrmStatus(Z)V

    goto :goto_0
.end method

.method public delete(Lcom/android/wifidirect/test/HeaderSet;)Lcom/android/wifidirect/test/HeaderSet;
    .locals 2
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/android/wifidirect/test/ClientSession;->put(Lcom/android/wifidirect/test/HeaderSet;)Lcom/android/wifidirect/test/Operation;

    move-result-object v0

    .line 210
    .local v0, op:Lcom/android/wifidirect/test/Operation;
    invoke-interface {v0}, Lcom/android/wifidirect/test/Operation;->getResponseCode()I

    .line 211
    invoke-interface {v0}, Lcom/android/wifidirect/test/Operation;->getReceivedHeader()Lcom/android/wifidirect/test/HeaderSet;

    move-result-object v1

    .line 212
    .local v1, returnValue:Lcom/android/wifidirect/test/HeaderSet;
    invoke-interface {v0}, Lcom/android/wifidirect/test/Operation;->close()V

    .line 214
    return-object v1
.end method

.method public disconnect(Lcom/android/wifidirect/test/HeaderSet;)Lcom/android/wifidirect/test/HeaderSet;
    .locals 7
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 218
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientSession;->mObexConnected:Z

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not connected to the server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/android/wifidirect/test/ClientSession;->setRequestActive()V

    .line 223
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientSession;->ensureOpen()V

    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, head:[B
    if-eqz p1, :cond_3

    .line 227
    iget-object v0, p1, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    if-eqz v0, :cond_1

    .line 228
    new-array v0, v6, [B

    iput-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mChallengeDigest:[B

    .line 229
    iget-object v0, p1, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    iget-object v1, p0, Lcom/android/wifidirect/test/ClientSession;->mChallengeDigest:[B

    invoke-static {v0, v5, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    if-eqz v0, :cond_2

    .line 233
    new-array v0, v4, [B

    iput-object v0, p1, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    .line 234
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    iget-object v1, p1, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    :cond_2
    invoke-static {p1, v5}, Lcom/android/wifidirect/test/ObexHelper;->createHeader(Lcom/android/wifidirect/test/HeaderSet;Z)[B

    move-result-object v2

    .line 238
    array-length v0, v2

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/android/wifidirect/test/ClientSession;->maxPacketSize:I

    if-le v0, v1, :cond_4

    .line 239
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet size exceeds max packet size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    if-eqz v0, :cond_4

    .line 244
    const/4 v0, 0x5

    new-array v2, v0, [B

    .line 245
    const/16 v0, -0x35

    aput-byte v0, v2, v5

    .line 246
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    const/4 v1, 0x1

    invoke-static {v0, v5, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    :cond_4
    new-instance v3, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v3}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 251
    .local v3, returnHeaderSet:Lcom/android/wifidirect/test/HeaderSet;
    const/16 v1, 0x81

    const/4 v4, 0x0

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/wifidirect/test/ClientSession;->sendRequest(I[BLcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/PrivateInputStream;ZZ)Z

    .line 263
    monitor-enter p0

    .line 264
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientSession;->mObexConnected:Z

    .line 265
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientSession;->setRequestInactive()V

    .line 266
    monitor-exit p0

    .line 268
    return-object v3

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableEventParser(Lcom/android/wifidirect/test/ClientSession$eventParser;)V
    .locals 0
    .parameter "ep"

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/wifidirect/test/ClientSession;->mEp:Lcom/android/wifidirect/test/ClientSession$eventParser;

    .line 675
    return-void
.end method

.method public declared-synchronized ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientSession;->mOpen:Z

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 406
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public get(Lcom/android/wifidirect/test/HeaderSet;)Lcom/android/wifidirect/test/Operation;
    .locals 6
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 171
    iget-boolean v1, p0, Lcom/android/wifidirect/test/ClientSession;->mObexConnected:Z

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not connected to the server"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/android/wifidirect/test/ClientSession;->setRequestActive()V

    .line 176
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientSession;->ensureOpen()V

    .line 179
    if-nez p1, :cond_3

    .line 180
    new-instance v0, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v0}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 189
    .local v0, head:Lcom/android/wifidirect/test/HeaderSet;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    if-eqz v1, :cond_2

    .line 190
    new-array v1, v4, [B

    iput-object v1, v0, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    .line 191
    iget-object v1, p0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    iget-object v2, v0, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    :cond_2
    new-instance v1, Lcom/android/wifidirect/test/ClientOperation;

    iget v2, p0, Lcom/android/wifidirect/test/ClientSession;->maxPacketSize:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/wifidirect/test/ClientOperation;-><init>(ILcom/android/wifidirect/test/ClientSession;Lcom/android/wifidirect/test/HeaderSet;Z)V

    return-object v1

    .line 182
    .end local v0           #head:Lcom/android/wifidirect/test/HeaderSet;
    :cond_3
    move-object v0, p1

    .line 183
    .restart local v0       #head:Lcom/android/wifidirect/test/HeaderSet;
    iget-object v1, v0, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    if-eqz v1, :cond_1

    .line 184
    new-array v1, v5, [B

    iput-object v1, p0, Lcom/android/wifidirect/test/ClientSession;->mChallengeDigest:[B

    .line 185
    iget-object v1, v0, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    iget-object v2, p0, Lcom/android/wifidirect/test/ClientSession;->mChallengeDigest:[B

    invoke-static {v1, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getConnectionID()J
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    if-nez v0, :cond_0

    .line 274
    const-wide/16 v0, -0x1

    .line 276
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    invoke-static {v0}, Lcom/android/wifidirect/test/ObexHelper;->convertToLong([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method public put(Lcom/android/wifidirect/test/HeaderSet;)Lcom/android/wifidirect/test/Operation;
    .locals 6
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 280
    iget-boolean v1, p0, Lcom/android/wifidirect/test/ClientSession;->mObexConnected:Z

    if-nez v1, :cond_0

    .line 281
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not connected to the server"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/android/wifidirect/test/ClientSession;->setRequestActive()V

    .line 285
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientSession;->ensureOpen()V

    .line 287
    if-nez p1, :cond_3

    .line 288
    new-instance v0, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v0}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 299
    .local v0, head:Lcom/android/wifidirect/test/HeaderSet;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    if-eqz v1, :cond_2

    .line 301
    new-array v1, v4, [B

    iput-object v1, v0, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    .line 302
    iget-object v1, p0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    iget-object v2, v0, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    :cond_2
    new-instance v1, Lcom/android/wifidirect/test/ClientOperation;

    iget v2, p0, Lcom/android/wifidirect/test/ClientSession;->maxPacketSize:I

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/wifidirect/test/ClientOperation;-><init>(ILcom/android/wifidirect/test/ClientSession;Lcom/android/wifidirect/test/HeaderSet;Z)V

    return-object v1

    .line 290
    .end local v0           #head:Lcom/android/wifidirect/test/HeaderSet;
    :cond_3
    move-object v0, p1

    .line 292
    .restart local v0       #head:Lcom/android/wifidirect/test/HeaderSet;
    iget-object v1, v0, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    if-eqz v1, :cond_1

    .line 293
    new-array v1, v5, [B

    iput-object v1, p0, Lcom/android/wifidirect/test/ClientSession;->mChallengeDigest:[B

    .line 294
    iget-object v1, v0, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    iget-object v2, p0, Lcom/android/wifidirect/test/ClientSession;->mChallengeDigest:[B

    invoke-static {v1, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public sendRequest(I[BLcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/PrivateInputStream;ZZ)Z
    .locals 18
    .parameter "opCode"
    .parameter "head"
    .parameter "header"
    .parameter "privateInput"
    .parameter "ignoreResponse"
    .parameter "supressSend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    if-eqz p2, :cond_0

    .line 459
    move-object/from16 v0, p2

    array-length v2, v0

    add-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/wifidirect/test/ClientSession;->maxPacketSize:I

    if-le v2, v3, :cond_0

    .line 460
    new-instance v2, Ljava/io/IOException;

    const-string v3, "header too large "

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 465
    :cond_0
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 466
    .local v16, out:Ljava/io/ByteArrayOutputStream;
    move/from16 v0, p1

    int-to-byte v2, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 470
    if-nez p2, :cond_3

    .line 471
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 472
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 480
    :goto_0
    if-nez p6, :cond_1

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 486
    :cond_1
    if-eqz p5, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mSrmClient:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v2}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmpWait()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 487
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    move-object/from16 v0, p3

    iput v2, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    or-int v15, v2, v3

    .line 493
    .local v15, length:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/wifidirect/test/ClientSession;->maxPacketSize:I

    if-le v15, v2, :cond_4

    .line 494
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Packet received exceeds packet size limit"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 474
    .end local v15           #length:I
    :cond_3
    move-object/from16 v0, p2

    array-length v2, v0

    add-int/lit8 v2, v2, 0x3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 475
    move-object/from16 v0, p2

    array-length v2, v0

    add-int/lit8 v2, v2, 0x3

    int-to-byte v2, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 476
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 496
    .restart local v15       #length:I
    :cond_4
    const/4 v2, 0x3

    if-le v15, v2, :cond_d

    .line 497
    const/4 v12, 0x0

    .line 498
    .local v12, data:[B
    const/16 v2, 0x80

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v17

    .line 502
    .local v17, version:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v13

    .line 503
    .local v13, flags:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/wifidirect/test/ClientSession;->maxPacketSize:I

    .line 504
    const-string v2, "Obex ClientSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!!!Client maxPacketSize "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/wifidirect/test/ClientSession;->maxPacketSize:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v2, 0x7

    if-le v15, v2, :cond_5

    .line 512
    add-int/lit8 v2, v15, -0x7

    new-array v12, v2, [B

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v2, v12}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .line 515
    .local v11, bytesReceived:I
    :goto_1
    add-int/lit8 v2, v15, -0x7

    if-eq v11, v2, :cond_9

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mInput:Ljava/io/InputStream;

    array-length v3, v12

    sub-int/2addr v3, v11

    invoke-virtual {v2, v12, v11, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    add-int/2addr v11, v2

    goto :goto_1

    .line 520
    .end local v11           #bytesReceived:I
    :cond_5
    const/4 v2, 0x1

    .line 601
    .end local v12           #data:[B
    .end local v13           #flags:I
    .end local v15           #length:I
    .end local v17           #version:I
    :goto_2
    return v2

    .line 523
    .restart local v12       #data:[B
    .restart local v15       #length:I
    :cond_6
    add-int/lit8 v2, v15, -0x3

    new-array v12, v2, [B

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v2, v12}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .line 531
    .restart local v11       #bytesReceived:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mEp:Lcom/android/wifidirect/test/ClientSession$eventParser;

    if-eqz v2, :cond_7

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mEp:Lcom/android/wifidirect/test/ClientSession$eventParser;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v12}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v2, v3}, Lcom/android/wifidirect/test/ClientSession$eventParser;->Callback(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 534
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 535
    .local v9, abort:Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0xff

    invoke-virtual {v9, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 536
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 537
    const/4 v2, 0x3

    invoke-virtual {v9, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    move-object/from16 v0, p3

    iput v2, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    or-int v14, v2, v3

    .line 545
    .local v14, len:I
    const/4 v2, 0x1

    goto :goto_2

    .line 548
    .end local v9           #abort:Ljava/io/ByteArrayOutputStream;
    .end local v14           #len:I
    :cond_7
    :goto_3
    add-int/lit8 v2, v15, -0x3

    if-eq v11, v2, :cond_8

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mInput:Ljava/io/InputStream;

    array-length v3, v12

    sub-int/2addr v3, v11

    invoke-virtual {v2, v12, v11, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    add-int/2addr v11, v2

    goto :goto_3

    .line 552
    :cond_8
    const/16 v2, 0xff

    move/from16 v0, p1

    if-ne v0, v2, :cond_9

    .line 553
    const/4 v2, 0x1

    goto :goto_2

    .line 557
    :cond_9
    move-object/from16 v0, p3

    invoke-static {v0, v12}, Lcom/android/wifidirect/test/ObexHelper;->updateHeaderSet(Lcom/android/wifidirect/test/HeaderSet;[B)[B

    move-result-object v10

    .line 558
    .local v10, body:[B
    if-eqz p4, :cond_a

    if-eqz v10, :cond_a

    .line 559
    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v2}, Lcom/android/wifidirect/test/PrivateInputStream;->writeBytes([BI)V

    .line 560
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/wifidirect/test/ClientSession;->mTotalSize:J

    array-length v5, v10

    add-int/lit8 v5, v5, -0x1

    int-to-long v5, v5

    add-long/2addr v2, v5

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/wifidirect/test/ClientSession;->mTotalSize:J

    .line 561
    const/4 v2, 0x0

    aget-byte v2, v10, v2

    const/16 v3, 0x49

    if-ne v2, v3, :cond_a

    const/16 v2, 0xc3

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a

    .line 563
    const/16 v2, 0xc3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/wifidirect/test/ClientSession;->mTotalSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 566
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/wifidirect/test/ClientSession;->mTotalSize:J

    .line 570
    :cond_a
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    if-eqz v2, :cond_b

    .line 571
    const/4 v2, 0x4

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    .line 572
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v2, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    :cond_b
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    if-eqz v2, :cond_c

    .line 576
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/wifidirect/test/ClientSession;->handleAuthResp([B)Z

    move-result v2

    if-nez v2, :cond_c

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifidirect/test/ClientSession;->setRequestInactive()V

    .line 578
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Authentication Failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 582
    :cond_c
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    const/16 v3, 0xc1

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    if-eqz v2, :cond_d

    .line 585
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/ClientSession;->handleAuthChall(Lcom/android/wifidirect/test/HeaderSet;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 586
    const/16 v2, 0x4e

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 587
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 588
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x3

    int-to-byte v2, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 589
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 590
    const/4 v2, 0x0

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    .line 591
    const/4 v2, 0x0

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    .line 592
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    new-array v4, v2, [B

    .line 593
    .local v4, sendHeaders:[B
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x3

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/wifidirect/test/ClientSession;->sendRequest(I[BLcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/PrivateInputStream;ZZ)Z

    move-result v2

    goto/16 :goto_2

    .line 601
    .end local v4           #sendHeaders:[B
    .end local v10           #body:[B
    .end local v11           #bytesReceived:I
    .end local v12           #data:[B
    .end local v15           #length:I
    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_2
.end method

.method public setAuthenticator(Lcom/android/wifidirect/test/Authenticator;)V
    .locals 2
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authenticator may not be null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iput-object p1, p0, Lcom/android/wifidirect/test/ClientSession;->mAuthenticator:Lcom/android/wifidirect/test/Authenticator;

    .line 313
    return-void
.end method

.method public setConnectionID(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 201
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection ID is not in a valid range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    invoke-static {p1, p2}, Lcom/android/wifidirect/test/ObexHelper;->convertToByteArray(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    .line 205
    return-void
.end method

.method public setMaxPacketSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/wifidirect/test/ClientSession;->maxPacketSize:I

    .line 90
    return-void
.end method

.method public setPath(Lcom/android/wifidirect/test/HeaderSet;ZZ)Lcom/android/wifidirect/test/HeaderSet;
    .locals 11
    .parameter "header"
    .parameter "backup"
    .parameter "create"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/16 v4, 0x10

    const/4 v5, 0x0

    .line 316
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ClientSession;->mObexConnected:Z

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not connected to the server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/android/wifidirect/test/ClientSession;->setRequestActive()V

    .line 320
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientSession;->ensureOpen()V

    .line 322
    const/4 v10, 0x2

    .line 323
    .local v10, totalLength:I
    const/4 v8, 0x0

    .line 325
    .local v8, head:[B
    if-nez p1, :cond_4

    .line 326
    new-instance v9, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v9}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 336
    .local v9, headset:Lcom/android/wifidirect/test/HeaderSet;
    :cond_1
    :goto_0
    iget-object v0, v9, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    if-eqz v0, :cond_2

    .line 337
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mChallengeDigest:[B

    .line 338
    iget-object v0, v9, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    iget-object v1, p0, Lcom/android/wifidirect/test/ClientSession;->mChallengeDigest:[B

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    if-eqz v0, :cond_3

    .line 343
    new-array v0, v6, [B

    iput-object v0, v9, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    .line 344
    iget-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mConnectionId:[B

    iget-object v1, v9, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    invoke-static {v0, v5, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    :cond_3
    invoke-static {v9, v5}, Lcom/android/wifidirect/test/ObexHelper;->createHeader(Lcom/android/wifidirect/test/HeaderSet;Z)[B

    move-result-object v8

    .line 348
    array-length v0, v8

    add-int/2addr v10, v0

    .line 350
    iget v0, p0, Lcom/android/wifidirect/test/ClientSession;->maxPacketSize:I

    if-le v10, v0, :cond_5

    .line 351
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet size exceeds max packet size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    .end local v9           #headset:Lcom/android/wifidirect/test/HeaderSet;
    :cond_4
    move-object v9, p1

    .line 329
    .restart local v9       #headset:Lcom/android/wifidirect/test/HeaderSet;
    iget-object v0, v9, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    if-eqz v0, :cond_1

    .line 330
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/wifidirect/test/ClientSession;->mChallengeDigest:[B

    .line 331
    iget-object v0, v9, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    iget-object v1, p0, Lcom/android/wifidirect/test/ClientSession;->mChallengeDigest:[B

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 354
    :cond_5
    const/4 v7, 0x0

    .line 358
    .local v7, flags:I
    if-eqz p2, :cond_6

    .line 359
    add-int/lit8 v7, v7, 0x1

    .line 364
    :cond_6
    if-nez p3, :cond_7

    .line 365
    or-int/lit8 v7, v7, 0x2

    .line 376
    :cond_7
    new-array v2, v10, [B

    .line 377
    .local v2, packet:[B
    int-to-byte v0, v7

    aput-byte v0, v2, v5

    .line 378
    const/4 v0, 0x1

    aput-byte v5, v2, v0

    .line 379
    if-eqz v9, :cond_8

    .line 380
    const/4 v0, 0x2

    array-length v1, v8

    invoke-static {v8, v5, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    :cond_8
    new-instance v3, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v3}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    .line 384
    .local v3, returnHeaderSet:Lcom/android/wifidirect/test/HeaderSet;
    const/16 v1, 0x85

    const/4 v4, 0x0

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/wifidirect/test/ClientSession;->sendRequest(I[BLcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/PrivateInputStream;ZZ)Z

    .line 393
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ClientSession;->setRequestInactive()V

    .line 395
    return-object v3
.end method

.method declared-synchronized setRequestInactive()V
    .locals 1

    .prologue
    .line 413
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/wifidirect/test/ClientSession;->mRequestActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
