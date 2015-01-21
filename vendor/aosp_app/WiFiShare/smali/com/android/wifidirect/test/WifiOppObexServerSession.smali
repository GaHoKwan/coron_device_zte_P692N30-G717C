.class public Lcom/android/wifidirect/test/WifiOppObexServerSession;
.super Lcom/android/wifidirect/test/ServerRequestHandler;
.source "WifiOppObexServerSession.java"

# interfaces
.implements Lcom/android/wifidirect/test/WifiOppObexSession;


# static fields
.field private static final D:Z = true

#the value of this static final field might be set in the static constructor
.field private static final MAX_INPUT_DATA_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "<==>tsjWFD WifiOppObexServerSession"

.field private static final V:Z = true


# instance fields
.field private mAccepted:I

.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

.field private mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

.field private mInterrupted:Z

.field protected mListenSocket:Ljava/net/ServerSocket;

.field private mLocalShareInfoId:I

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mRunningThread:Lcom/android/wifidirect/test/SessionThread;

.field private mServerBlocking:Z

.field private mSession:Lcom/android/wifidirect/test/ServerSession;

.field mTimeoutMsgSent:Z

.field private mTimestamp:J

.field private mTransport:Lcom/android/wifidirect/test/ObexTransport;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/android/wifidirect/test/Constants;->bufferReader:I

    sput v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->MAX_INPUT_DATA_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wifidirect/test/ObexTransport;)V
    .locals 5
    .parameter "context"
    .parameter "transport"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/wifidirect/test/ServerRequestHandler;-><init>()V

    .line 41
    iput-object v4, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 44
    iput-boolean v3, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mServerBlocking:Z

    .line 53
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mAccepted:I

    .line 54
    iput-boolean v2, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInterrupted:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mTimeoutMsgSent:Z

    .line 70
    iput-object v4, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mRunningThread:Lcom/android/wifidirect/test/SessionThread;

    .line 74
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    .line 76
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 77
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "<==>tsjWFD WifiOppObexServerSession"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 79
    const-string v1, "<==>tsjWFD WifiOppObexServerSession"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 80
    return-void
.end method

.method private FTPServerReceiveFile(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mRunningThread:Lcom/android/wifidirect/test/SessionThread;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mRunningThread:Lcom/android/wifidirect/test/SessionThread;

    invoke-virtual {v0, p1}, Lcom/android/wifidirect/test/SessionThread;->setHandler(Landroid/os/Handler;)V

    .line 194
    :cond_0
    return-void
.end method

.method private FTPServerStart()V
    .locals 5

    .prologue
    .line 182
    const-string v0, "<==>tsjWFD WifiOppObexServerSession"

    const-string v1, "FTPServerStart New connection, spawned thread"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Lcom/android/wifidirect/test/SessionThread;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/wifidirect/test/SessionThread;-><init>(Lcom/android/wifidirect/test/ObexTransport;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mRunningThread:Lcom/android/wifidirect/test/SessionThread;

    .line 186
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mRunningThread:Lcom/android/wifidirect/test/SessionThread;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/SessionThread;->start()V

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/android/wifidirect/test/WifiOppObexServerSession;)Lcom/android/wifidirect/test/SessionThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mRunningThread:Lcom/android/wifidirect/test/SessionThread;

    return-object v0
.end method

.method private processShareInfo()Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    .locals 5

    .prologue
    .line 609
    const-string v1, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processShareInfo() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v3, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v2, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-static {v1, v2}, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->generateFileInfo(Landroid/content/Context;I)Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-result-object v0

    .line 613
    .local v0, fileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;
    const-string v1, "<==>tsjWFD WifiOppObexServerSession"

    const-string v2, "Generate WifiOppReceiveFileInfo:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v1, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filename  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v1, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length    :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string v1, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status    :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-object v0
.end method

.method private receiveFile(Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;Lcom/android/wifidirect/test/Operation;)I
    .locals 28
    .parameter "fileInfo"
    .parameter "op"

    .prologue
    .line 508
    const/16 v18, -0x1

    .line 509
    .local v18, status:I
    const/4 v5, 0x0

    .line 511
    .local v5, bos:Ljava/io/BufferedOutputStream;
    const/4 v13, 0x0

    .line 512
    .local v13, is:Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 514
    .local v11, error:Z
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/android/wifidirect/test/Operation;->openInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 521
    :goto_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 523
    .local v7, contentUri:Landroid/net/Uri;
    if-nez v11, :cond_0

    .line 524
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 525
    .local v21, updateValues:Landroid/content/ContentValues;
    const-string v22, "_data"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 529
    .end local v21           #updateValues:Landroid/content/ContentValues;
    :cond_0
    const/16 v16, 0x0

    .line 530
    .local v16, position:I
    if-nez v11, :cond_1

    .line 531
    new-instance v5, Ljava/io/BufferedOutputStream;

    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 534
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    :cond_1
    if-nez v11, :cond_4

    .line 536
    invoke-interface/range {p2 .. p2}, Lcom/android/wifidirect/test/Operation;->getMaxPacketSize()I

    move-result v14

    .line 537
    .local v14, outputBufferSize:I
    const-string v22, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Receive outputBufferSize:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-array v4, v14, [B

    .line 539
    .local v4, b:[B
    const/16 v17, 0x0

    .line 540
    .local v17, readLength:I
    const-wide/16 v19, 0x0

    .line 541
    .local v19, timestamp:J
    move v8, v14

    .line 542
    .local v8, current:I
    const/4 v6, 0x0

    .line 543
    .local v6, byteCounter:I
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mLength:J

    move-wide/from16 v22, v0

    mul-int/lit8 v24, v8, 0x14

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v12, v0

    .line 544
    .local v12, filePercent:I
    const/4 v15, 0x0

    .line 546
    .local v15, perCentCounter:I
    :cond_2
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInterrupted:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mLength:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_4

    .line 548
    int-to-long v0, v8

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mLength:J

    move-wide/from16 v24, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    cmp-long v22, v22, v24

    if-lez v22, :cond_3

    .line 549
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mLength:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    sub-int v8, v22, v16

    .line 551
    :cond_3
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v4, v0, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v17

    .line 553
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 554
    const-string v22, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Receive file reached stream end at position"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 583
    .end local v4           #b:[B
    .end local v6           #byteCounter:I
    .end local v8           #current:I
    .end local v12           #filePercent:I
    .end local v14           #outputBufferSize:I
    .end local v15           #perCentCounter:I
    .end local v17           #readLength:I
    .end local v19           #timestamp:J
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInterrupted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 584
    const-string v22, "<==>tsjWFD WifiOppObexServerSession"

    const-string v23, "receiving file interrupted by user."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/16 v18, 0x1ea

    .line 598
    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    .line 600
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 605
    :cond_6
    :goto_4
    return v18

    .line 515
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v16           #position:I
    :catch_0
    move-exception v10

    .line 516
    .local v10, e1:Ljava/io/IOException;
    const-string v22, "<==>tsjWFD WifiOppObexServerSession"

    const-string v23, "Error when openInputStream"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/16 v18, 0x1f0

    .line 518
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 558
    .end local v10           #e1:Ljava/io/IOException;
    .restart local v4       #b:[B
    .restart local v6       #byteCounter:I
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v8       #current:I
    .restart local v12       #filePercent:I
    .restart local v14       #outputBufferSize:I
    .restart local v15       #perCentCounter:I
    .restart local v16       #position:I
    .restart local v17       #readLength:I
    .restart local v19       #timestamp:J
    :cond_7
    const/16 v22, 0x0

    :try_start_3
    move/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v5, v4, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 559
    add-int v16, v16, v17

    .line 561
    add-int v6, v6, v17

    .line 562
    if-lt v6, v8, :cond_2

    .line 564
    const/4 v6, 0x0

    .line 565
    add-int/lit8 v15, v15, 0x1

    .line 566
    if-ge v15, v12, :cond_8

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mLength:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-nez v22, :cond_2

    .line 569
    :cond_8
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 570
    .restart local v21       #updateValues:Landroid/content/ContentValues;
    const-string v22, "current_bytes"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 572
    const/4 v15, 0x0

    .line 573
    goto/16 :goto_1

    .line 576
    .end local v21           #updateValues:Landroid/content/ContentValues;
    :catch_1
    move-exception v10

    .line 577
    .restart local v10       #e1:Ljava/io/IOException;
    const-string v22, "<==>tsjWFD WifiOppObexServerSession"

    const-string v23, "Error when receiving file"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/16 v18, 0x1f0

    .line 579
    const/4 v11, 0x1

    goto :goto_2

    .line 587
    .end local v4           #b:[B
    .end local v6           #byteCounter:I
    .end local v8           #current:I
    .end local v10           #e1:Ljava/io/IOException;
    .end local v12           #filePercent:I
    .end local v14           #outputBufferSize:I
    .end local v15           #perCentCounter:I
    .end local v17           #readLength:I
    .end local v19           #timestamp:J
    :cond_9
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mLength:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-nez v22, :cond_a

    .line 588
    const-string v22, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Receiving file completed for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/16 v18, 0xc8

    goto/16 :goto_3

    .line 591
    :cond_a
    const-string v22, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Reading file failed at "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " of "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mLength:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 593
    const/16 v18, 0x1eb

    goto/16 :goto_3

    .line 601
    :catch_2
    move-exception v9

    .line 602
    .local v9, e:Ljava/io/IOException;
    const-string v22, "<==>tsjWFD WifiOppObexServerSession"

    const-string v23, "Error when closing stream after send"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method


# virtual methods
.method public addShare(Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 172
    const-string v0, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addShare for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 174
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppObexServerSession;->processShareInfo()Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    .line 176
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mRunningThread:Lcom/android/wifidirect/test/SessionThread;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mRunningThread:Lcom/android/wifidirect/test/SessionThread;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/wifidirect/test/SessionThread;->setFileInfo(Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;Lcom/android/wifidirect/test/WifiOppShareInfo;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 659
    const-string v1, "<==>tsjWFD WifiOppObexServerSession"

    const-string v2, "release WakeLock"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 663
    :cond_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 667
    :cond_1
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 668
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 669
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 670
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 671
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 673
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    return-void
.end method

.method public onConnect(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;)I
    .locals 6
    .parameter "request"
    .parameter "reply"

    .prologue
    const/16 v3, 0xd5

    .line 624
    const-string v4, "<==>tsjWFD WifiOppObexServerSession"

    const-string v5, "onConnect"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-static {p1}, Lcom/android/wifidirect/test/Constants;->logHeader(Lcom/android/wifidirect/test/HeaderSet;)V

    .line 626
    iget v4, p1, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    if-ne v4, v3, :cond_0

    .line 628
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/wifidirect/test/Constants;->IS_USE_FTP_TRANSFOR_MODE:Z

    .line 629
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppObexServerSession;->FTPServerStart()V

    .line 648
    :goto_0
    return v3

    .line 635
    :cond_0
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/wifidirect/test/Constants;->IS_USE_FTP_TRANSFOR_MODE:Z

    .line 638
    const/16 v3, 0x46

    :try_start_0
    invoke-virtual {p1, v3}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v2, v0

    .line 639
    .local v2, uuid:[B
    const-string v3, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConnect(): uuid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    if-eqz v2, :cond_1

    .line 641
    const/16 v3, 0x4a

    invoke-virtual {p2, v3, v2}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mTimestamp:J

    .line 648
    const/16 v3, 0xa0

    goto :goto_0

    .line 643
    .end local v2           #uuid:[B
    :catch_0
    move-exception v1

    .line 644
    .local v1, e:Ljava/io/IOException;
    const-string v3, "<==>tsjWFD WifiOppObexServerSession"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/16 v3, 0xd0

    goto :goto_0
.end method

.method public onDisconnect(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;)V
    .locals 2
    .parameter "req"
    .parameter "resp"

    .prologue
    .line 653
    const-string v0, "<==>tsjWFD WifiOppObexServerSession"

    const-string v1, "onDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/16 v0, 0xa0

    iput v0, p2, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    .line 655
    return-void
.end method

.method public onPut(Lcom/android/wifidirect/test/Operation;)I
    .locals 27
    .parameter "op"

    .prologue
    .line 257
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onPut "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/16 v15, 0xa0

    .line 269
    .local v15, obexResponse:I
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mAccepted  :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mAccepted:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mAccepted:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 271
    const/16 v23, 0xc3

    .line 501
    :goto_0
    return v23

    .line 275
    :cond_0
    const/16 v16, 0x0

    .line 276
    .local v16, pre_reject:Z
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/android/wifidirect/test/Operation;->getReceivedHeader()Lcom/android/wifidirect/test/HeaderSet;

    move-result-object v17

    .line 277
    .local v17, request:Lcom/android/wifidirect/test/HeaderSet;
    invoke-static/range {v17 .. v17}, Lcom/android/wifidirect/test/Constants;->logHeader(Lcom/android/wifidirect/test/HeaderSet;)V

    .line 278
    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 279
    .local v13, name:Ljava/lang/String;
    const/16 v23, 0xc3

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 280
    .local v9, length:Ljava/lang/Long;
    const/16 v23, 0x42

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 281
    .local v11, mimeType:Ljava/lang/String;
    const/16 v23, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 283
    .local v18, senderDeviceName:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-nez v23, :cond_1

    .line 284
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    const-string v24, "length is 0, reject the transfer"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/16 v16, 0x1

    .line 286
    const/16 v15, 0xcb

    .line 289
    :cond_1
    if-eqz v13, :cond_2

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 290
    :cond_2
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    const-string v24, "name is null or empty, reject the transfer"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/16 v16, 0x1

    .line 292
    const/16 v15, 0xc0

    .line 295
    :cond_3
    if-nez v16, :cond_4

    .line 298
    const-string v23, "."

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 299
    .local v5, dotIndex:I
    if-gez v5, :cond_7

    .line 300
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    const-string v24, "There is no file extension, reject the transfer"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/16 v16, 0x1

    .line 302
    const/16 v15, 0xc0

    .line 326
    .end local v5           #dotIndex:I
    :cond_4
    :goto_1
    if-nez v16, :cond_6

    if-eqz v11, :cond_5

    sget-object v23, Lcom/android/wifidirect/test/Constants;->ACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-static {v11, v0}, Lcom/android/wifidirect/test/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 329
    :cond_5
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    const-string v24, "mimeType is null or in unacceptable list, reject the transfer"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/16 v16, 0x1

    .line 331
    const/16 v15, 0xcf

    .line 334
    :cond_6
    if-eqz v16, :cond_a

    const/16 v23, 0xa0

    move/from16 v0, v23

    if-eq v15, v0, :cond_a

    move/from16 v23, v15

    .line 336
    goto/16 :goto_0

    .line 304
    .restart local v5       #dotIndex:I
    :cond_7
    add-int/lit8 v23, v5, 0x1

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v10

    .line 306
    .local v10, map:Landroid/webkit/MimeTypeMap;
    invoke-virtual {v10, v7}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 307
    .local v20, type:Ljava/lang/String;
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Mimetype guessed from extension "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-eqz v20, :cond_9

    .line 309
    move-object/from16 v11, v20

    .line 318
    :cond_8
    :goto_2
    if-eqz v11, :cond_4

    .line 319
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 312
    :cond_9
    if-nez v11, :cond_8

    .line 313
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    const-string v24, "Can\'t get mimetype, reject the transfer"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    const/16 v16, 0x1

    .line 315
    const/16 v15, 0xcf

    goto :goto_2

    .line 339
    .end local v5           #dotIndex:I
    .end local v7           #extension:Ljava/lang/String;
    .end local v9           #length:Ljava/lang/Long;
    .end local v10           #map:Landroid/webkit/MimeTypeMap;
    .end local v11           #mimeType:Ljava/lang/String;
    .end local v13           #name:Ljava/lang/String;
    .end local v17           #request:Lcom/android/wifidirect/test/HeaderSet;
    .end local v18           #senderDeviceName:Ljava/lang/String;
    .end local v20           #type:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 340
    .local v6, e:Ljava/io/IOException;
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "get getReceivedHeaders error "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/16 v23, 0xc0

    goto/16 :goto_0

    .line 344
    .end local v6           #e:Ljava/io/IOException;
    .restart local v9       #length:Ljava/lang/Long;
    .restart local v11       #mimeType:Ljava/lang/String;
    .restart local v13       #name:Ljava/lang/String;
    .restart local v17       #request:Lcom/android/wifidirect/test/HeaderSet;
    .restart local v18       #senderDeviceName:Ljava/lang/String;
    :cond_a
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 346
    .local v22, values:Landroid/content/ContentValues;
    const-string v23, "hint"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v23, "total_bytes"

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 348
    const-string v23, "mimetype"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/wifidirect/test/WifiOppTcpTransport;

    move/from16 v23, v0

    if-eqz v23, :cond_17

    .line 352
    const-string v23, "destination"

    const-string v24, "wifi"

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :goto_3
    const-string v23, "direction"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string v23, "timestamp"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mTimestamp:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 359
    const-string v23, "devicename"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v14, 0x1

    .line 363
    .local v14, needConfirm:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mServerBlocking:Z

    move/from16 v23, v0

    if-nez v23, :cond_b

    .line 364
    const-string v23, "confirm"

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const/4 v14, 0x0

    .line 369
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 370
    .local v4, contentUri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v23

    const/16 v24, 0x1

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mLocalShareInfoId:I

    .line 372
    if-eqz v14, :cond_c

    .line 373
    new-instance v8, Landroid/content/Intent;

    const-string v23, "android.wififtp.intent.action.INCOMING_FILE_NOTIFICATION"

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v8, in:Landroid/content/Intent;
    const-string v23, "com.android.wifidirect.test"

    const-class v24, Lcom/android/wifidirect/test/WifiOppReceiver;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 378
    .end local v8           #in:Landroid/content/Intent;
    :cond_c
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "insert contentUri: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mLocalShareInfoId = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mLocalShareInfoId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    const-string v24, "acquire partial WakeLock"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    monitor-enter p0

    .line 383
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 387
    :cond_d
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mServerBlocking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    :cond_e
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mServerBlocking:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f

    .line 391
    const-wide/16 v23, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mTimeoutMsgSent:Z

    move/from16 v23, v0

    if-nez v23, :cond_e

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    const-wide/32 v25, 0xc350

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 396
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mTimeoutMsgSent:Z

    .line 397
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    const-string v24, "MSG_CONNECT_TIMEOUT sent"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 400
    :catch_1
    move-exception v6

    .line 401
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    const-string v24, "Interrupted in onPut blocking"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .end local v6           #e:Ljava/lang/InterruptedException;
    :cond_f
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 404
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    const-string v24, "Server unblocked "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    monitor-enter p0

    .line 406
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mTimeoutMsgSent:Z

    move/from16 v23, v0

    if-eqz v23, :cond_10

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    :cond_10
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mLocalShareInfoId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_11

    .line 417
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    const-string v24, "Unexpected error!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mConfirm:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mAccepted:I

    .line 420
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "after confirm: userAccepted="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mAccepted:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/16 v19, 0xc8

    .line 425
    .local v19, status:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mAccepted:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mAccepted:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    .line 429
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_13

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mStatus:I

    move/from16 v19, v0

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mStatus:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 434
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    const-string v24, "Internal Error1"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/16 v15, 0xd0

    .line 439
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_15

    .line 441
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 442
    .local v21, updateValues:Landroid/content/ContentValues;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 443
    const-string v23, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v23, "status"

    const/16 v24, 0xc0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/wifidirect/test/WifiOppObexServerSession;->receiveFile(Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;Lcom/android/wifidirect/test/Operation;)I

    move-result v19

    .line 451
    const/16 v23, 0xc8

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_14

    .line 452
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Internal Error2"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mAccepted:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/16 v15, 0xd0

    .line 455
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 458
    .end local v21           #updateValues:Landroid/content/ContentValues;
    :cond_15
    const/16 v23, 0xc8

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v12

    .line 460
    .local v12, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 461
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .end local v12           #msg:Landroid/os/Message;
    :cond_16
    :goto_5
    move/from16 v23, v15

    .line 501
    goto/16 :goto_0

    .line 354
    .end local v4           #contentUri:Landroid/net/Uri;
    .end local v14           #needConfirm:Z
    .end local v19           #status:I
    :cond_17
    const-string v23, "destination"

    const-string v24, "FF:FF:FF:00:00:00"

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 403
    .restart local v4       #contentUri:Landroid/net/Uri;
    .restart local v14       #needConfirm:Z
    :catchall_0
    move-exception v23

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v23

    .line 409
    :catchall_1
    move-exception v23

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v23

    .line 463
    .restart local v19       #status:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_16

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v12

    .line 466
    .restart local v12       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v23, v0

    move/from16 v0, v19

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 468
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    .line 471
    .end local v12           #msg:Landroid/os/Message;
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mAccepted:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mAccepted:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    .line 481
    :cond_1a
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    const-string v24, "Rejected incoming request"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1b

    .line 484
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 488
    :goto_6
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mFileInfo:Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 491
    :cond_1b
    const/16 v19, 0x1ea

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 493
    const/16 v15, 0xc3

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v12

    .line 496
    .restart local v12       #msg:Landroid/os/Message;
    const/16 v23, 0x3

    move/from16 v0, v23

    iput v0, v12, Landroid/os/Message;->what:I

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v23, v0

    move/from16 v0, v19

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 499
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_5

    .line 485
    .end local v12           #msg:Landroid/os/Message;
    :catch_2
    move-exception v6

    .line 486
    .local v6, e:Ljava/io/IOException;
    const-string v23, "<==>tsjWFD WifiOppObexServerSession"

    const-string v24, "error close file stream"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public preStart()V
    .locals 4

    .prologue
    .line 107
    const-string v1, "<==>tsjWFD WifiOppObexServerSession"

    const-string v2, "acquire full WakeLock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 110
    :try_start_0
    const-string v1, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<==>tsj Create ServerSession with transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v1, Lcom/android/wifidirect/test/ServerSession;

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/android/wifidirect/test/ServerSession;-><init>(Lcom/android/wifidirect/test/ObexTransport;Lcom/android/wifidirect/test/ServerRequestHandler;Lcom/android/wifidirect/test/Authenticator;)V

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mSession:Lcom/android/wifidirect/test/ServerSession;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/io/IOException;
    const-string v1, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create server session error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 126
    const-string v0, "<==>tsjWFD WifiOppObexServerSession"

    const-string v1, "Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 128
    sget-boolean v0, Lcom/android/wifidirect/test/Constants;->IS_USE_FTP_TRANSFOR_MODE:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mCallback:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/android/wifidirect/test/WifiOppObexServerSession;->FTPServerReceiveFile(Landroid/os/Handler;)V

    .line 131
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 142
    const-string v1, "<==>tsjWFD WifiOppObexServerSession"

    const-string v2, "Stop!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mInterrupted:Z

    .line 144
    sget-boolean v1, Lcom/android/wifidirect/test/Constants;->IS_USE_FTP_TRANSFOR_MODE:Z

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mRunningThread:Lcom/android/wifidirect/test/SessionThread;

    if-eqz v1, :cond_0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mRunningThread:Lcom/android/wifidirect/test/SessionThread;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/SessionThread;->stop()V

    .line 148
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    invoke-interface {v1}, Lcom/android/wifidirect/test/ObexTransport;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    iput-object v4, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mRunningThread:Lcom/android/wifidirect/test/SessionThread;

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mSession:Lcom/android/wifidirect/test/ServerSession;

    if-eqz v1, :cond_1

    .line 161
    :try_start_1
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mSession:Lcom/android/wifidirect/test/ServerSession;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/ServerSession;->close()V

    .line 162
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    invoke-interface {v1}, Lcom/android/wifidirect/test/ObexTransport;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    :cond_1
    :goto_1
    iput-object v4, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 168
    iput-object v4, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mSession:Lcom/android/wifidirect/test/ServerSession;

    .line 169
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/io/IOException;
    const-string v1, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close mTransport error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 164
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close mTransport error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public unblock()V
    .locals 4

    .prologue
    .line 83
    const-string v1, "<==>tsjWFD WifiOppObexServerSession"

    const-string v2, "unblock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-boolean v1, Lcom/android/wifidirect/test/Constants;->IS_USE_FTP_TRANSFOR_MODE:Z

    if-eqz v1, :cond_0

    .line 87
    new-instance v0, Lcom/android/wifidirect/test/WifiOppObexServerSession$1;

    const-string v1, "SessionThread Unblock thread"

    invoke-direct {v0, p0, v1}, Lcom/android/wifidirect/test/WifiOppObexServerSession$1;-><init>(Lcom/android/wifidirect/test/WifiOppObexServerSession;Ljava/lang/String;)V

    .line 95
    .local v0, notifyThread:Ljava/lang/Thread;
    const-string v1, "<==>tsjWFD WifiOppObexServerSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConfirmed to unblock mRunningThread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mRunningThread:Lcom/android/wifidirect/test/SessionThread;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    .end local v0           #notifyThread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession;->mServerBlocking:Z

    goto :goto_0
.end method
