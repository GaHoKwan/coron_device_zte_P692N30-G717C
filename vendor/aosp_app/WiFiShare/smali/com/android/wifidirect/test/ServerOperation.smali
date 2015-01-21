.class public final Lcom/android/wifidirect/test/ServerOperation;
.super Ljava/lang/Object;
.source "ServerOperation.java"

# interfaces
.implements Lcom/android/wifidirect/test/Operation;
.implements Lcom/android/wifidirect/test/BaseStream;


# static fields
.field private static final TAG:Ljava/lang/String; = "Obex ServerOperation"

.field private static final VERBOSE:Z = true


# instance fields
.field public finalBitSet:Z

.field public isAborted:Z

.field private mClosed:Z

.field private mEndofBody:Z

.field private mExceptionString:Ljava/lang/String;

.field private mGetOperation:Z

.field private mHasBody:Z

.field private mInput:Ljava/io/InputStream;

.field private mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

.field private mMaxPacketLength:I

.field private mParent:Lcom/android/wifidirect/test/ServerSession;

.field private mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

.field private mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

.field private mPrivateOutputOpen:Z

.field private mRequestFinished:Z

.field private mResponseSize:I

.field public mSingleResponseActive:Z

.field public mSingleResponseModeParameter:Ljava/lang/Byte;

.field public mSrmGetActive:Z

.field public mSrmServerSession:Lcom/android/wifidirect/test/ObexHelper;

.field public replyHeader:Lcom/android/wifidirect/test/HeaderSet;

.field public requestHeader:Lcom/android/wifidirect/test/HeaderSet;


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/ServerSession;Ljava/io/InputStream;IILcom/android/wifidirect/test/ServerRequestHandler;)V
    .locals 10
    .parameter "p"
    .parameter "in"
    .parameter "request"
    .parameter "maxSize"
    .parameter "listen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mEndofBody:Z

    .line 120
    const-string v5, "Obex ServerOperation"

    const-string v6, "ServerOperation"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->isAborted:Z

    .line 123
    iput-object p1, p0, Lcom/android/wifidirect/test/ServerOperation;->mParent:Lcom/android/wifidirect/test/ServerSession;

    .line 124
    iput-object p2, p0, Lcom/android/wifidirect/test/ServerOperation;->mInput:Ljava/io/InputStream;

    .line 125
    iput p4, p0, Lcom/android/wifidirect/test/ServerOperation;->mMaxPacketLength:I

    .line 126
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mClosed:Z

    .line 127
    new-instance v5, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v5}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    iput-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    .line 128
    new-instance v5, Lcom/android/wifidirect/test/HeaderSet;

    invoke-direct {v5}, Lcom/android/wifidirect/test/HeaderSet;-><init>()V

    iput-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    .line 129
    new-instance v5, Lcom/android/wifidirect/test/PrivateInputStream;

    invoke-direct {v5, p0}, Lcom/android/wifidirect/test/PrivateInputStream;-><init>(Lcom/android/wifidirect/test/BaseStream;)V

    iput-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    .line 130
    const/4 v5, 0x3

    iput v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mResponseSize:I

    .line 131
    iput-object p5, p0, Lcom/android/wifidirect/test/ServerOperation;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    .line 132
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mRequestFinished:Z

    .line 133
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateOutputOpen:Z

    .line 134
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mHasBody:Z

    .line 135
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseActive:Z

    .line 136
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mSrmGetActive:Z

    .line 137
    sget-object v5, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_PARAM_NONE:Ljava/lang/Byte;

    iput-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseModeParameter:Ljava/lang/Byte;

    .line 138
    iget-object v5, p1, Lcom/android/wifidirect/test/ServerSession;->mSrmServer:Lcom/android/wifidirect/test/ObexHelper;

    iput-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mSrmServerSession:Lcom/android/wifidirect/test/ObexHelper;

    .line 140
    sget-object v4, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_DISABLED:Ljava/lang/Byte;

    .line 145
    .local v4, rmtRqstSRM:Ljava/lang/Byte;
    const/4 v5, 0x2

    if-eq p3, v5, :cond_0

    const/16 v5, 0x82

    if-ne p3, v5, :cond_3

    .line 149
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mGetOperation:Z

    .line 154
    and-int/lit16 v5, p3, 0x80

    if-nez v5, :cond_2

    .line 155
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->finalBitSet:Z

    .line 176
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 177
    .local v3, length:I
    shl-int/lit8 v5, v3, 0x8

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v6

    add-int v3, v5, v6

    .line 182
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mParent:Lcom/android/wifidirect/test/ServerSession;

    invoke-virtual {v5}, Lcom/android/wifidirect/test/ServerSession;->getMaxPacketSize()I

    move-result v5

    if-le v3, v5, :cond_6

    .line 183
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mParent:Lcom/android/wifidirect/test/ServerSession;

    const/16 v6, 0xce

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/wifidirect/test/ServerSession;->sendResponse(I[B)V

    .line 184
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Packet received was too large"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 157
    .end local v3           #length:I
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->finalBitSet:Z

    .line 158
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mRequestFinished:Z

    goto :goto_0

    .line 160
    :cond_3
    const/4 v5, 0x3

    if-eq p3, v5, :cond_4

    const/16 v5, 0x83

    if-ne p3, v5, :cond_5

    .line 164
    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mGetOperation:Z

    .line 167
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->finalBitSet:Z

    .line 169
    const/16 v5, 0x83

    if-ne p3, v5, :cond_1

    .line 170
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mRequestFinished:Z

    goto :goto_0

    .line 173
    :cond_5
    new-instance v5, Ljava/io/IOException;

    const-string v6, "ServerOperation can not handle such request"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 190
    .restart local v3       #length:I
    :cond_6
    const/4 v5, 0x3

    if-le v3, v5, :cond_d

    .line 191
    add-int/lit8 v5, v3, -0x3

    new-array v2, v5, [B

    .line 192
    .local v2, data:[B
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 194
    .local v1, bytesReceived:I
    :goto_1
    array-length v5, v2

    if-eq v1, v5, :cond_7

    .line 195
    array-length v5, v2

    sub-int/2addr v5, v1

    invoke-virtual {p2, v2, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_1

    .line 198
    :cond_7
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    invoke-static {v5, v2}, Lcom/android/wifidirect/test/ObexHelper;->updateHeaderSet(Lcom/android/wifidirect/test/HeaderSet;[B)[B

    move-result-object v0

    .line 199
    .local v0, body:[B
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v6, 0x97

    invoke-virtual {v5, v6}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #rmtRqstSRM:Ljava/lang/Byte;
    check-cast v4, Ljava/lang/Byte;

    .line 200
    .restart local v4       #rmtRqstSRM:Ljava/lang/Byte;
    if-eqz v0, :cond_8

    .line 201
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mHasBody:Z

    .line 204
    :cond_8
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    invoke-virtual {v5}, Lcom/android/wifidirect/test/ServerRequestHandler;->getConnectionId()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v5, v5, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    if-eqz v5, :cond_a

    .line 205
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    iget-object v6, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v6, v6, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    invoke-static {v6}, Lcom/android/wifidirect/test/ObexHelper;->convertToLong([B)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/wifidirect/test/ServerRequestHandler;->setConnectionId(J)V

    .line 210
    :goto_2
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v5, v5, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    if-eqz v5, :cond_b

    .line 211
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mParent:Lcom/android/wifidirect/test/ServerSession;

    iget-object v6, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v6, v6, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    invoke-virtual {v5, v6}, Lcom/android/wifidirect/test/ServerSession;->handleAuthResp([B)Z

    move-result v5

    if-nez v5, :cond_b

    .line 212
    const-string v5, "Authentication Failed"

    iput-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mExceptionString:Ljava/lang/String;

    .line 213
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mParent:Lcom/android/wifidirect/test/ServerSession;

    const/16 v6, 0xc1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/wifidirect/test/ServerSession;->sendResponse(I[B)V

    .line 214
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mClosed:Z

    .line 215
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    .line 263
    .end local v0           #body:[B
    .end local v1           #bytesReceived:I
    .end local v2           #data:[B
    :cond_9
    return-void

    .line 207
    .restart local v0       #body:[B
    .restart local v1       #bytesReceived:I
    .restart local v2       #data:[B
    :cond_a
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/wifidirect/test/ServerRequestHandler;->setConnectionId(J)V

    goto :goto_2

    .line 220
    :cond_b
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v5, v5, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    if-eqz v5, :cond_c

    .line 221
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mParent:Lcom/android/wifidirect/test/ServerSession;

    iget-object v6, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    invoke-virtual {v5, v6}, Lcom/android/wifidirect/test/ServerSession;->handleAuthChall(Lcom/android/wifidirect/test/HeaderSet;)Z

    .line 223
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v6, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v6, v6, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    array-length v6, v6

    new-array v6, v6, [B

    iput-object v6, v5, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    .line 224
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v5, v5, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v7, v7, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    iget-object v9, v9, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    .line 227
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    .line 231
    :cond_c
    if-eqz v0, :cond_f

    .line 232
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lcom/android/wifidirect/test/PrivateInputStream;->writeBytes([BI)V

    .line 250
    .end local v0           #body:[B
    .end local v1           #bytesReceived:I
    .end local v2           #data:[B
    :cond_d
    :goto_3
    sget-object v5, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    if-eq v4, v5, :cond_e

    iget-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mGetOperation:Z

    if-nez v5, :cond_e

    iget-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->finalBitSet:Z

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    invoke-virtual {v5}, Lcom/android/wifidirect/test/PrivateInputStream;->available()I

    move-result v5

    if-nez v5, :cond_e

    .line 251
    const-string v5, "Obex ServerOperation"

    const-string v6, "mPrivateInput.available() == 0 ServerOperation pre-sendreply"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/16 v5, 0x90

    iget-boolean v6, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseActive:Z

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/wifidirect/test/ServerOperation;->sendReply(IZZ)Z

    .line 254
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    invoke-virtual {v5}, Lcom/android/wifidirect/test/PrivateInputStream;->available()I

    move-result v5

    if-lez v5, :cond_d

    .line 260
    :cond_e
    :goto_4
    iget-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mGetOperation:Z

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mRequestFinished:Z

    if-nez v5, :cond_9

    .line 261
    const/16 v5, 0x90

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/wifidirect/test/ServerOperation;->sendReply(IZZ)Z

    goto :goto_4

    .line 236
    .restart local v0       #body:[B
    .restart local v1       #bytesReceived:I
    .restart local v2       #data:[B
    :cond_f
    sget-object v5, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    if-eq v4, v5, :cond_d

    .line 237
    :cond_10
    iget-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mGetOperation:Z

    if-nez v5, :cond_d

    iget-boolean v5, p0, Lcom/android/wifidirect/test/ServerOperation;->finalBitSet:Z

    if-nez v5, :cond_d

    .line 238
    const-string v5, "Obex ServerOperation"

    const-string v6, "length > 3 ServerOperation pre-sendreply"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/16 v5, 0x90

    iget-boolean v6, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseActive:Z

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/wifidirect/test/ServerOperation;->sendReply(IZZ)Z

    .line 240
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    invoke-virtual {v5}, Lcom/android/wifidirect/test/PrivateInputStream;->available()I

    move-result v5

    if-lez v5, :cond_10

    goto :goto_3
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Called from a server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ServerOperation;->ensureOpen()V

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ServerOperation;->mClosed:Z

    .line 780
    return-void
.end method

.method public declared-synchronized continueOperation(ZZ)Z
    .locals 4
    .parameter "sendEmpty"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 283
    monitor-enter p0

    :try_start_0
    const-string v2, "Obex ServerOperation"

    const-string v3, "continueOperation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-boolean v2, p0, Lcom/android/wifidirect/test/ServerOperation;->mGetOperation:Z

    if-nez v2, :cond_9

    .line 286
    iget-boolean v2, p0, Lcom/android/wifidirect/test/ServerOperation;->finalBitSet:Z

    if-nez v2, :cond_8

    .line 287
    if-eqz p1, :cond_3

    .line 288
    const/16 v1, 0x90

    iget-boolean v2, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseActive:Z

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/wifidirect/test/ServerOperation;->sendReply(IZZ)Z

    .line 290
    const-string v1, "Obex ServerOperation"

    const-string v2, "continueOperation: Server setting SRM, sendEmpty clause"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSrmServerSession:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmStatus()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseActive:Z

    .line 293
    iget-boolean v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseActive:Z

    if-ne v1, v0, :cond_2

    .line 294
    const-string v1, "Obex ServerOperation"

    const-string v2, "continueOperation: Server SRM enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSrmServerSession:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmpWait()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseModeParameter:Ljava/lang/Byte;

    sget-object v2, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_PARAM_WAIT:Ljava/lang/Byte;

    if-ne v1, v2, :cond_1

    .line 297
    const-string v1, "Obex ServerOperation"

    const-string v2, "continueOperation: Server sent SRMP NONE to stop SRMP WAIT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseActive:Z

    .line 299
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSrmServerSession:Lcom/android/wifidirect/test/ObexHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/wifidirect/test/ObexHelper;->setLocalSrmpWait(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 301
    :cond_1
    :try_start_1
    const-string v1, "Obex ServerOperation"

    const-string v2, "continueOperation: Server SRMP WAIT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseActive:Z

    .line 303
    sget-object v1, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_PARAM_WAIT:Ljava/lang/Byte;

    iput-object v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseModeParameter:Ljava/lang/Byte;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 307
    :cond_2
    :try_start_2
    const-string v1, "Obex ServerOperation"

    const-string v2, "continueOperation: Server SRM disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    :cond_3
    iget v2, p0, Lcom/android/wifidirect/test/ServerOperation;->mResponseSize:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    invoke-virtual {v2}, Lcom/android/wifidirect/test/PrivateOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 312
    :cond_4
    const/16 v1, 0x90

    iget-boolean v2, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseActive:Z

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/wifidirect/test/ServerOperation;->sendReply(IZZ)Z

    .line 314
    const-string v1, "Obex ServerOperation"

    const-string v2, "continueOperation: Server setting SRM"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSrmServerSession:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmStatus()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseActive:Z

    .line 317
    iget-boolean v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseActive:Z

    if-ne v1, v0, :cond_6

    .line 318
    const-string v1, "Obex ServerOperation"

    const-string v2, "continueOperation: Server SRM enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSrmServerSession:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmpWait()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseModeParameter:Ljava/lang/Byte;

    sget-object v2, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_PARAM_WAIT:Ljava/lang/Byte;

    if-ne v1, v2, :cond_5

    .line 321
    const-string v1, "Obex ServerOperation"

    const-string v2, "continueOperation: Server sent SRMP NONE to stop SRMP WAIT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseActive:Z

    .line 323
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSrmServerSession:Lcom/android/wifidirect/test/ObexHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/wifidirect/test/ObexHelper;->setLocalSrmpWait(Z)V

    goto :goto_0

    .line 325
    :cond_5
    const-string v1, "Obex ServerOperation"

    const-string v2, "continueOperation: Server SRMP WAIT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseActive:Z

    .line 327
    sget-object v1, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_PARAM_WAIT:Ljava/lang/Byte;

    iput-object v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseModeParameter:Ljava/lang/Byte;

    goto :goto_0

    .line 331
    :cond_6
    const-string v1, "Obex ServerOperation"

    const-string v2, "continueOperation: Server SRM disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    move v0, v1

    .line 335
    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 339
    goto/16 :goto_0

    .line 342
    :cond_9
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSrmServerSession:Lcom/android/wifidirect/test/ObexHelper;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmStatus()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mSrmGetActive:Z

    .line 343
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v2, 0x98

    sget-object v3, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_PARAM_NONE:Ljava/lang/Byte;

    invoke-virtual {v1, v2, v3}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 344
    const/16 v1, 0x90

    iget-boolean v2, p0, Lcom/android/wifidirect/test/ServerOperation;->mSingleResponseActive:Z

    iget-boolean v3, p0, Lcom/android/wifidirect/test/ServerOperation;->mSrmGetActive:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/wifidirect/test/ServerOperation;->sendReply(IZZ)Z

    .line 346
    const-string v1, "Obex ServerOperation"

    const-string v2, "Get continueOperation"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public ensureNotDone()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
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
    .line 787
    iget-object v0, p0, Lcom/android/wifidirect/test/ServerOperation;->mExceptionString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 788
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lcom/android/wifidirect/test/ServerOperation;->mExceptionString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_0
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ServerOperation;->mClosed:Z

    if-eqz v0, :cond_1

    .line 791
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :cond_1
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderLength()I
    .locals 5

    .prologue
    .line 710
    iget-object v3, p0, Lcom/android/wifidirect/test/ServerOperation;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    invoke-virtual {v3}, Lcom/android/wifidirect/test/ServerRequestHandler;->getConnectionId()J

    move-result-wide v1

    .line 711
    .local v1, id:J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 712
    iget-object v3, p0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    .line 717
    :goto_0
    iget-object v3, p0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/wifidirect/test/ObexHelper;->createHeader(Lcom/android/wifidirect/test/HeaderSet;Z)[B

    move-result-object v0

    .line 719
    .local v0, headerArray:[B
    array-length v3, v0

    return v3

    .line 714
    .end local v0           #headerArray:[B
    :cond_0
    iget-object v3, p0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    invoke-static {v1, v2}, Lcom/android/wifidirect/test/ObexHelper;->convertToByteArray(J)[B

    move-result-object v4

    iput-object v4, v3, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    goto :goto_0
.end method

.method public getLength()J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 693
    :try_start_0
    iget-object v4, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v5, 0xc3

    invoke-virtual {v4, v5}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 695
    .local v1, temp:Ljava/lang/Long;
    if-nez v1, :cond_0

    .line 701
    .end local v1           #temp:Ljava/lang/Long;
    :goto_0
    return-wide v2

    .line 698
    .restart local v1       #temp:Ljava/lang/Long;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 700
    .end local v1           #temp:Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 701
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public getMaxPacketSize()I
    .locals 2

    .prologue
    .line 706
    iget v0, p0, Lcom/android/wifidirect/test/ServerOperation;->mMaxPacketLength:I

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p0}, Lcom/android/wifidirect/test/ServerOperation;->getHeaderLength()I

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
    .line 618
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ServerOperation;->ensureOpen()V

    .line 619
    iget-object v0, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Called from a server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 678
    :try_start_0
    iget-object v1, p0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_0
    return-object v1

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAborted()Z
    .locals 8

    .prologue
    .line 825
    :try_start_0
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v5

    if-eqz v5, :cond_1

    .line 826
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 827
    .local v2, headerID:I
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 828
    .local v3, length:I
    shl-int/lit8 v5, v3, 0x8

    iget-object v6, p0, Lcom/android/wifidirect/test/ServerOperation;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    add-int v3, v5, v6

    .line 829
    const/4 v5, 0x3

    if-le v3, v5, :cond_1

    .line 830
    add-int/lit8 v5, v3, -0x3

    new-array v4, v5, [B

    .line 832
    .local v4, temp:[B
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 833
    .local v0, bytesReceived:I
    :goto_0
    array-length v5, v4

    if-eq v0, v5, :cond_0

    .line 834
    iget-object v5, p0, Lcom/android/wifidirect/test/ServerOperation;->mInput:Ljava/io/InputStream;

    array-length v6, v4

    sub-int/2addr v6, v0

    invoke-virtual {v5, v4, v0, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    .line 837
    :cond_0
    const/16 v5, 0xff

    if-ne v2, v5, :cond_1

    .line 838
    const/4 v5, 0x1

    .line 845
    .end local v0           #bytesReceived:I
    .end local v2           #headerID:I
    .end local v3           #length:I
    .end local v4           #temp:[B
    :goto_1
    return v5

    .line 842
    :catch_0
    move-exception v1

    .line 843
    .local v1, e:Ljava/io/IOException;
    const-string v5, "Obex ServerOperation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isValidBody()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ServerOperation;->mHasBody:Z

    return v0
.end method

.method public noEndofBody()V
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ServerOperation;->mEndofBody:Z

    .line 821
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
    .line 738
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/android/wifidirect/test/ServerOperation;->openInputStream()Ljava/io/InputStream;

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
    .line 770
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/android/wifidirect/test/ServerOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ServerOperation;->ensureOpen()V

    .line 729
    iget-object v0, p0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ServerOperation;->ensureOpen()V

    .line 749
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateOutputOpen:Z

    if-eqz v0, :cond_0

    .line 750
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no more input streams available, stream already opened"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_0
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ServerOperation;->mRequestFinished:Z

    if-nez v0, :cond_1

    .line 754
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no  output streams available ,request not finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    if-nez v0, :cond_2

    .line 758
    new-instance v0, Lcom/android/wifidirect/test/PrivateOutputStream;

    invoke-virtual {p0}, Lcom/android/wifidirect/test/ServerOperation;->getMaxPacketSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/wifidirect/test/PrivateOutputStream;-><init>(Lcom/android/wifidirect/test/BaseStream;I)V

    iput-object v0, p0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    .line 760
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateOutputOpen:Z

    .line 761
    iget-object v0, p0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

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
    .line 632
    invoke-virtual {p0}, Lcom/android/wifidirect/test/ServerOperation;->ensureOpen()V

    .line 634
    if-nez p1, :cond_0

    .line 635
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Headers may not be null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifidirect/test/HeaderSet;->getHeaderList()[I

    move-result-object v0

    .line 639
    .local v0, headerList:[I
    if-eqz v0, :cond_1

    .line 640
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 641
    iget-object v2, p0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    aget v3, v0, v1

    aget v4, v0, v1

    invoke-virtual {p1, v4}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 645
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public declared-synchronized sendReply(IZZ)Z
    .locals 23
    .parameter "type"
    .parameter "suppressSend"
    .parameter "supressReceive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    const-string v18, "Obex ServerOperation"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sendReply type: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", suppress: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", SRMP WAIT: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mSrmServerSession:Lcom/android/wifidirect/test/ObexHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmpWait()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "supressReceive: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mSrmServerSession:Lcom/android/wifidirect/test/ObexHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmpWait()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 372
    :cond_0
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 374
    .local v14, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/wifidirect/test/ServerRequestHandler;->getConnectionId()J

    move-result-wide v10

    .line 375
    .local v10, id:J
    const-wide/16 v18, -0x1

    cmp-long v18, v10, v18

    if-nez v18, :cond_4

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    .line 381
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/wifidirect/test/ObexHelper;->createHeader(Lcom/android/wifidirect/test/HeaderSet;Z)[B

    move-result-object v8

    .line 382
    .local v8, headerArray:[B
    const/4 v4, -0x1

    .line 383
    .local v4, bodyLength:I
    const/4 v13, -0x1

    .line 385
    .local v13, orginalBodyLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/wifidirect/test/PrivateOutputStream;->size()I

    move-result v4

    .line 387
    move v13, v4

    .line 390
    :cond_1
    array-length v0, v8

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mMaxPacketLength:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    .line 392
    const/4 v7, 0x0

    .line 393
    .local v7, end:I
    const/16 v16, 0x0

    .line 395
    .local v16, start:I
    :goto_1
    array-length v0, v8

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v7, v0, :cond_6

    .line 396
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mMaxPacketLength:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x3

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v8, v0, v1}, Lcom/android/wifidirect/test/ObexHelper;->findHeaderEnd([BII)I

    move-result v7

    .line 398
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_5

    .line 400
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/wifidirect/test/ServerOperation;->mClosed:Z

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/wifidirect/test/PrivateInputStream;->close()V

    .line 406
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/wifidirect/test/PrivateOutputStream;->close()V

    .line 409
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mParent:Lcom/android/wifidirect/test/ServerSession;

    move-object/from16 v18, v0

    const/16 v19, 0xd0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/wifidirect/test/ServerSession;->sendResponse(I[B)V

    .line 410
    new-instance v18, Ljava/io/IOException;

    const-string v19, "OBEX Packet exceeds max packet size"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    .end local v4           #bodyLength:I
    .end local v7           #end:I
    .end local v8           #headerArray:[B
    .end local v10           #id:J
    .end local v13           #orginalBodyLength:I
    .end local v14           #out:Ljava/io/ByteArrayOutputStream;
    .end local v16           #start:I
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 378
    .restart local v10       #id:J
    .restart local v14       #out:Ljava/io/ByteArrayOutputStream;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v18, v0

    invoke-static {v10, v11}, Lcom/android/wifidirect/test/ObexHelper;->convertToByteArray(J)[B

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    goto/16 :goto_0

    .line 412
    .restart local v4       #bodyLength:I
    .restart local v7       #end:I
    .restart local v8       #headerArray:[B
    .restart local v13       #orginalBodyLength:I
    .restart local v16       #start:I
    :cond_5
    sub-int v18, v7, v16

    move/from16 v0, v18

    new-array v15, v0, [B

    .line 413
    .local v15, sendHeader:[B
    const/16 v18, 0x0

    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v8, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mParent:Lcom/android/wifidirect/test/ServerSession;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/android/wifidirect/test/ServerSession;->sendResponse(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    move/from16 v16, v7

    .line 417
    goto/16 :goto_1

    .line 419
    .end local v15           #sendHeader:[B
    :cond_6
    if-lez v4, :cond_7

    .line 420
    const/16 v18, 0x1

    .line 595
    .end local v4           #bodyLength:I
    .end local v7           #end:I
    .end local v8           #headerArray:[B
    .end local v10           #id:J
    .end local v13           #orginalBodyLength:I
    .end local v14           #out:Ljava/io/ByteArrayOutputStream;
    .end local v16           #start:I
    :goto_2
    monitor-exit p0

    return v18

    .line 422
    .restart local v4       #bodyLength:I
    .restart local v7       #end:I
    .restart local v8       #headerArray:[B
    .restart local v10       #id:J
    .restart local v13       #orginalBodyLength:I
    .restart local v14       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #start:I
    :cond_7
    const/16 v18, 0x0

    goto :goto_2

    .line 426
    .end local v7           #end:I
    .end local v16           #start:I
    :cond_8
    :try_start_2
    invoke-virtual {v14, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 431
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mGetOperation:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    const/16 v18, 0xa0

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 432
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/wifidirect/test/ServerOperation;->finalBitSet:Z

    .line 435
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/wifidirect/test/ServerOperation;->finalBitSet:Z

    move/from16 v18, v0

    if-nez v18, :cond_a

    array-length v0, v8

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mMaxPacketLength:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x14

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 436
    :cond_a
    if-lez v4, :cond_d

    .line 442
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mMaxPacketLength:I

    move/from16 v18, v0

    array-length v0, v8

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int/lit8 v18, v18, -0x6

    move/from16 v0, v18

    if-le v4, v0, :cond_b

    .line 443
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mMaxPacketLength:I

    move/from16 v18, v0

    array-length v0, v8

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int/lit8 v4, v18, -0x6

    .line 446
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/wifidirect/test/PrivateOutputStream;->readBytes(I)[B

    move-result-object v3

    .line 447
    .local v3, body:[B
    const-string v18, "Obex ServerOperation"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Get Operation bodyLength = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/wifidirect/test/ServerOperation;->finalBitSet:Z

    move/from16 v18, v0

    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateOutput:Lcom/android/wifidirect/test/PrivateOutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/wifidirect/test/PrivateOutputStream;->isClosed()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 455
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mEndofBody:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 456
    const/16 v18, 0x49

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 457
    const-string v18, "Obex ServerOperation"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " write 0x49 + "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    add-int/lit8 v4, v4, 0x3

    .line 459
    shr-int/lit8 v18, v4, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 460
    int-to-byte v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 461
    invoke-virtual {v14, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 474
    .end local v3           #body:[B
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/wifidirect/test/ServerOperation;->finalBitSet:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    const/16 v18, 0xa0

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    if-gtz v13, :cond_e

    .line 475
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mEndofBody:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 476
    const/16 v18, 0x49

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 477
    const-string v18, "Obex ServerOperation"

    const-string v19, "type == ResponseCodes.OBEX_HTTP_OK write 0x49"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v13, 0x3

    .line 479
    const/16 v18, 0x0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 480
    int-to-byte v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 483
    :cond_e
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/wifidirect/test/ServerOperation;->mResponseSize:I

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mParent:Lcom/android/wifidirect/test/ServerSession;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v18

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/wifidirect/test/ServerSession;->sendResponse(I[B)V

    .line 487
    .end local v4           #bodyLength:I
    .end local v8           #headerArray:[B
    .end local v10           #id:J
    .end local v13           #orginalBodyLength:I
    .end local v14           #out:Ljava/io/ByteArrayOutputStream;
    :cond_f
    const/16 v18, 0x90

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    .line 488
    if-eqz p3, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mSrmServerSession:Lcom/android/wifidirect/test/ObexHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/wifidirect/test/ObexHelper;->getLocalSrmpWait()Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 489
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 490
    .local v9, headerID:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v12

    .line 491
    .local v12, length:I
    shl-int/lit8 v18, v12, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v19

    add-int v12, v18, v19

    .line 492
    const-string v18, "Obex ServerOperation"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sendReply reading headerID "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " length "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v9, v0, :cond_14

    const/16 v18, 0x82

    move/from16 v0, v18

    if-eq v9, v0, :cond_14

    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v9, v0, :cond_14

    const/16 v18, 0x83

    move/from16 v0, v18

    if-eq v9, v0, :cond_14

    .line 498
    const/16 v18, 0x3

    move/from16 v0, v18

    if-le v12, v0, :cond_12

    .line 499
    add-int/lit8 v18, v12, -0x3

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 501
    .local v17, temp:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 503
    .local v5, bytesReceived:I
    :goto_4
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v5, v0, :cond_12

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    sub-int v19, v19, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v18

    add-int v5, v5, v18

    goto :goto_4

    .line 464
    .end local v5           #bytesReceived:I
    .end local v9           #headerID:I
    .end local v12           #length:I
    .end local v17           #temp:[B
    .restart local v3       #body:[B
    .restart local v4       #bodyLength:I
    .restart local v8       #headerArray:[B
    .restart local v10       #id:J
    .restart local v13       #orginalBodyLength:I
    .restart local v14       #out:Ljava/io/ByteArrayOutputStream;
    :cond_11
    const/16 v18, 0x48

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 465
    const-string v18, "Obex ServerOperation"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " write 0x48 = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    add-int/lit8 v4, v4, 0x3

    .line 467
    shr-int/lit8 v18, v4, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 468
    int-to-byte v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 469
    invoke-virtual {v14, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_3

    .line 512
    .end local v3           #body:[B
    .end local v4           #bodyLength:I
    .end local v8           #headerArray:[B
    .end local v10           #id:J
    .end local v13           #orginalBodyLength:I
    .end local v14           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #headerID:I
    .restart local v12       #length:I
    :cond_12
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v9, v0, :cond_13

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mParent:Lcom/android/wifidirect/test/ServerSession;

    move-object/from16 v18, v0

    const/16 v19, 0xa0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/wifidirect/test/ServerSession;->sendResponse(I[B)V

    .line 514
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/wifidirect/test/ServerOperation;->mClosed:Z

    .line 515
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/wifidirect/test/ServerOperation;->isAborted:Z

    .line 516
    const-string v18, "Abort Received"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/wifidirect/test/ServerOperation;->mExceptionString:Ljava/lang/String;

    .line 517
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Abort Received"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 519
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mParent:Lcom/android/wifidirect/test/ServerSession;

    move-object/from16 v18, v0

    const/16 v19, 0xc0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/wifidirect/test/ServerSession;->sendResponse(I[B)V

    .line 520
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/wifidirect/test/ServerOperation;->mClosed:Z

    .line 521
    const-string v18, "Bad Request Received"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/wifidirect/test/ServerOperation;->mExceptionString:Ljava/lang/String;

    .line 522
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Bad Request Received"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 526
    :cond_14
    const/16 v18, 0x82

    move/from16 v0, v18

    if-ne v9, v0, :cond_16

    .line 527
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/wifidirect/test/ServerOperation;->finalBitSet:Z

    .line 535
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mParent:Lcom/android/wifidirect/test/ServerSession;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/wifidirect/test/ServerSession;->getMaxPacketSize()I

    move-result v18

    move/from16 v0, v18

    if-le v12, v0, :cond_17

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mParent:Lcom/android/wifidirect/test/ServerSession;

    move-object/from16 v18, v0

    const/16 v19, 0xce

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/wifidirect/test/ServerSession;->sendResponse(I[B)V

    .line 537
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Packet received was too large"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 528
    :cond_16
    const/16 v18, 0x83

    move/from16 v0, v18

    if-ne v9, v0, :cond_15

    .line 529
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/wifidirect/test/ServerOperation;->mRequestFinished:Z

    goto :goto_5

    .line 543
    :cond_17
    const/16 v18, 0x3

    move/from16 v0, v18

    if-le v12, v0, :cond_1e

    .line 544
    const-string v18, "Obex ServerOperation"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sendReply reading "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v12, -0x3

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    add-int/lit8 v18, v12, -0x3

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 546
    .local v6, data:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 548
    .restart local v5       #bytesReceived:I
    :goto_6
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v5, v0, :cond_18

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v18, v0

    array-length v0, v6

    move/from16 v19, v0

    sub-int v19, v19, v5

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v6, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v18

    add-int v5, v5, v18

    goto :goto_6

    .line 552
    :cond_18
    const-string v18, "Obex ServerOperation"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sendReply read "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/android/wifidirect/test/ObexHelper;->updateHeaderSet(Lcom/android/wifidirect/test/HeaderSet;[B)[B

    move-result-object v3

    .line 554
    .restart local v3       #body:[B
    if-eqz v3, :cond_19

    .line 555
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/wifidirect/test/ServerOperation;->mHasBody:Z

    .line 557
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/wifidirect/test/ServerRequestHandler;->getConnectionId()J

    move-result-wide v18

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_1a

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/wifidirect/test/ObexHelper;->convertToLong([B)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Lcom/android/wifidirect/test/ServerRequestHandler;->setConnectionId(J)V

    .line 564
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_1c

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mParent:Lcom/android/wifidirect/test/ServerSession;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/wifidirect/test/ServerSession;->handleAuthResp([B)Z

    move-result v18

    if-nez v18, :cond_1b

    .line 566
    const-string v18, "Authentication Failed"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/wifidirect/test/ServerOperation;->mExceptionString:Ljava/lang/String;

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mParent:Lcom/android/wifidirect/test/ServerSession;

    move-object/from16 v18, v0

    const/16 v19, 0xc1

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/wifidirect/test/ServerSession;->sendResponse(I[B)V

    .line 568
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/wifidirect/test/ServerOperation;->mClosed:Z

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    .line 570
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 561
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mListener:Lcom/android/wifidirect/test/ServerRequestHandler;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/wifidirect/test/ServerRequestHandler;->setConnectionId(J)V

    goto :goto_7

    .line 572
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    .line 575
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_1d

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mParent:Lcom/android/wifidirect/test/ServerSession;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/wifidirect/test/ServerSession;->handleAuthChall(Lcom/android/wifidirect/test/HeaderSet;)Z

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->replyHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v18 .. v22}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->requestHeader:Lcom/android/wifidirect/test/HeaderSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    .line 585
    :cond_1d
    if-eqz v3, :cond_1e

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/ServerOperation;->mPrivateInput:Lcom/android/wifidirect/test/PrivateInputStream;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/android/wifidirect/test/PrivateInputStream;->writeBytes([BI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 590
    .end local v3           #body:[B
    .end local v5           #bytesReceived:I
    .end local v6           #data:[B
    :cond_1e
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 592
    .end local v9           #headerID:I
    .end local v12           #length:I
    :cond_1f
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 595
    :cond_20
    const/16 v18, 0x0

    goto/16 :goto_2
.end method

.method public streamClosed(Z)V
    .locals 0
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 817
    return-void
.end method
