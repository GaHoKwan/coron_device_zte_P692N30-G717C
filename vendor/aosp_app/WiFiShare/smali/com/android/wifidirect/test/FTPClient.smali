.class Lcom/android/wifidirect/test/FTPClient;
.super Ljava/lang/Object;
.source "FtpClient.java"


# static fields
.field private static final D:Z = true

.field private static final V:Z = true

.field private static final sSleepTime:I = 0x32


# instance fields
.field private final TAG:Ljava/lang/String;

.field private WAKE_LOCK_TAG:Ljava/lang/String;

.field byteArray:[B

.field private bytesRead:J

.field private contentUri:Landroid/net/Uri;

.field private fileNum:I

.field private filename:Ljava/lang/String;

.field private in:Ljava/io/BufferedReader;

.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

.field private mFilefullpath:Ljava/lang/String;

.field private mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

.field private volatile mInterrupted:Z

.field private mIsConnectFinished:Z

.field private mOutStream:Ljava/io/OutputStream;

.field private mTimestampEnd:J

.field private mTimestampIncludingConfirm:J

.field private mTimestampNoConfirm:J

.field private mTransport:Lcom/android/wifidirect/test/ObexTransport;

.field private volatile mWaitingForRemote:Z

.field private out:Ljava/io/PrintWriter;

.field private selectedPort:I

.field private selectedServer:Ljava/lang/String;

.field private strUris:Ljava/lang/String;

.field wakeLock:Landroid/os/PowerManager$WakeLock;

.field protected wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/android/wifidirect/test/WifiOppSendFileInfo;Lcom/android/wifidirect/test/WifiOppShareInfo;Landroid/content/Context;Lcom/android/wifidirect/test/ObexTransport;)V
    .locals 4
    .parameter "mHandle"
    .parameter "FileInfo"
    .parameter "info"
    .parameter "context"
    .parameter "transport"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "<==>tsjWFD FTPClient"

    iput-object v0, p0, Lcom/android/wifidirect/test/FTPClient;->TAG:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/android/wifidirect/test/FTPClient;->out:Ljava/io/PrintWriter;

    .line 30
    iput-object v2, p0, Lcom/android/wifidirect/test/FTPClient;->in:Ljava/io/BufferedReader;

    .line 31
    iput-object v2, p0, Lcom/android/wifidirect/test/FTPClient;->mOutStream:Ljava/io/OutputStream;

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/wifidirect/test/FTPClient;->bytesRead:J

    .line 39
    const-string v0, "wififtp"

    iput-object v0, p0, Lcom/android/wifidirect/test/FTPClient;->WAKE_LOCK_TAG:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/android/wifidirect/test/FTPClient;->filename:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/android/wifidirect/test/FTPClient;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 46
    iput-object v2, p0, Lcom/android/wifidirect/test/FTPClient;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    .line 47
    iput-object v2, p0, Lcom/android/wifidirect/test/FTPClient;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 50
    iput-boolean v3, p0, Lcom/android/wifidirect/test/FTPClient;->mIsConnectFinished:Z

    .line 52
    iput-boolean v3, p0, Lcom/android/wifidirect/test/FTPClient;->mInterrupted:Z

    .line 53
    iput-boolean v3, p0, Lcom/android/wifidirect/test/FTPClient;->mWaitingForRemote:Z

    .line 60
    const-string v0, "<==>tsjWFD FTPClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<==> FTPClient created! this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/android/wifidirect/test/WifiTransferMgr;->getHostIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/FTPClient;->selectedServer:Ljava/lang/String;

    .line 62
    const/16 v0, 0x1f2e

    iput v0, p0, Lcom/android/wifidirect/test/FTPClient;->selectedPort:I

    .line 63
    sget v0, Lcom/android/wifidirect/test/Constants;->InputDataSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/wifidirect/test/FTPClient;->byteArray:[B

    .line 64
    iput-object p1, p0, Lcom/android/wifidirect/test/FTPClient;->mCallback:Landroid/os/Handler;

    .line 65
    iput-object p2, p0, Lcom/android/wifidirect/test/FTPClient;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    .line 66
    iput-object p3, p0, Lcom/android/wifidirect/test/FTPClient;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 67
    iput-object p4, p0, Lcom/android/wifidirect/test/FTPClient;->mContext:Landroid/content/Context;

    .line 68
    iput-object p5, p0, Lcom/android/wifidirect/test/FTPClient;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    .line 69
    return-void
.end method

.method private applyRemoteDeviceQuirks(Lcom/android/wifidirect/test/WifiOppSendFileInfo;)Ljava/lang/String;
    .locals 10
    .parameter "info"

    .prologue
    const/4 v6, 0x0

    .line 498
    iget-object v0, p1, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mDestAddr:Ljava/lang/String;

    .line 499
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-object v6

    .line 502
    :cond_1
    const-string v7, "00:04:48"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 507
    iget-object v2, p1, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mFileName:Ljava/lang/String;

    .line 509
    .local v2, filename:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 510
    .local v1, c:[C
    const/4 v3, 0x1

    .line 511
    .local v3, firstDot:Z
    const/4 v5, 0x0

    .line 512
    .local v5, modified:Z
    array-length v7, v1

    add-int/lit8 v4, v7, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_4

    .line 513
    aget-char v7, v1, v4

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_3

    .line 514
    if-nez v3, :cond_2

    .line 515
    const/4 v5, 0x1

    .line 516
    const/16 v7, 0x5f

    aput-char v7, v1, v4

    .line 518
    :cond_2
    const/4 v3, 0x0

    .line 512
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 522
    :cond_4
    if-eqz v5, :cond_0

    .line 523
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    .line 524
    .local v6, newFilename:Ljava/lang/String;
    const-string v7, "<==>tsjWFD FTPClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending file \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" as \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" to workaround Poloroid filename quirk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleConnectException(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 390
    const-string v1, "<==>tsjWFD FTPClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleConnectException: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wifidirect/test/FTPClient;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v2, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-static {v1, v2, p1}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 393
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 394
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 395
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iput p1, v1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    .line 396
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 397
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 398
    return-void
.end method

.method private handleSendFileException(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 401
    const-string v1, "<==>tsjWFD FTPClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSendFileException: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wifidirect/test/FTPClient;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v2, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-static {v1, v2, p1}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 404
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 405
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 406
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iput p1, v1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    .line 407
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 408
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 409
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 469
    const-string v0, "<==>tsjWFD FTPClient"

    const-string v1, "Releasing wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/android/wifidirect/test/FTPClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/wifidirect/test/FTPClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/FTPClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 473
    const-string v0, "<==>tsjWFD FTPClient"

    const-string v1, "Finished releasing wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    const-string v0, "<==>tsjWFD FTPClient"

    const-string v1, "Couldn\'t release null wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private releaseWifiLock()V
    .locals 2

    .prologue
    .line 490
    const-string v0, "<==>tsjWFD FTPClient"

    const-string v1, "Releasing wifi lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/android/wifidirect/test/FTPClient;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/wifidirect/test/FTPClient;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/FTPClient;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 495
    :cond_0
    return-void
.end method

.method private sendFile(Ljava/io/FileInputStream;J)I
    .locals 31
    .parameter "fInputS"
    .parameter "fileLengh"

    .prologue
    .line 240
    const-wide/16 v21, 0x0

    .local v21, totalBytes:J
    const-wide/16 v23, 0x0

    .line 241
    .local v23, totalBytesRead:J
    const-wide/16 v14, 0x0

    .local v14, offset:J
    const-wide/16 v7, 0x0

    .line 242
    .local v7, bytesRead:J
    const/4 v5, 0x0

    .line 243
    .local v5, append:Z
    const/16 v25, 0x0

    .line 244
    .local v25, updateValues:Landroid/content/ContentValues;
    const/4 v13, 0x0

    .line 245
    .local v13, line:Ljava/lang/String;
    const/16 v17, 0x0

    .line 246
    .local v17, readLength:I
    const/16 v18, 0xc8

    .line 247
    .local v18, statusSendFile:I
    const-string v11, "sendFile: "

    .line 249
    .local v11, functionName:Ljava/lang/String;
    const-string v27, "<==>tsjWFD FTPClient"

    const-string v28, "sendFile begin."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    move/from16 v28, v0

    const/16 v29, 0xc0

    invoke-static/range {v27 .. v29}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 252
    new-instance v25, Landroid/content/ContentValues;

    .end local v25           #updateValues:Landroid/content/ContentValues;
    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .restart local v25       #updateValues:Landroid/content/ContentValues;
    const-string v27, "current_bytes"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    const-string v27, "status"

    const/16 v28, 0xc0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->contentUri:Landroid/net/Uri;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 258
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    const/16 v27, 0x1

    :try_start_1
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/wifidirect/test/FTPClient;->mWaitingForRemote:Z

    .line 260
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->in:Ljava/io/BufferedReader;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 262
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 263
    const/16 v27, 0x0

    :try_start_3
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/wifidirect/test/FTPClient;->mWaitingForRemote:Z

    .line 264
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 265
    :try_start_4
    sget-object v27, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_DOWNLOAD:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-nez v27, :cond_9

    .line 266
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "(INFO) Received download request from client."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 268
    const/16 v27, 0x1

    :try_start_5
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/wifidirect/test/FTPClient;->mWaitingForRemote:Z

    .line 269
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 270
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_READY:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->in:Ljava/io/BufferedReader;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/wifidirect/test/FTPClient;->filename:Ljava/lang/String;

    .line 272
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "(INFO) Received filename from client: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->filename:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->filename:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    .line 276
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "no filename received. cancel transfer."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    .line 277
    const/16 v27, 0x1f0

    .line 376
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "finally enter"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :try_start_7
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "finally bp1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 386
    :goto_0
    return v27

    .line 260
    :catchall_0
    move-exception v27

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v27
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_1

    .line 366
    :catch_0
    move-exception v9

    .line 367
    .local v9, e:Ljava/io/IOException;
    :goto_1
    :try_start_a
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "IOException Cannot connect to: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->selectedServer:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/16 v18, 0x1ea

    .line 370
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 376
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "finally enter"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :try_start_b
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "finally bp1"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    .end local v9           #e:Ljava/io/IOException;
    :goto_2
    move/from16 v27, v18

    .line 386
    goto :goto_0

    .line 264
    :catchall_1
    move-exception v27

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v27
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_1

    .line 371
    :catch_1
    move-exception v9

    .line 372
    .local v9, e:Ljava/lang/NullPointerException;
    :goto_3
    :try_start_e
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "NullPointerException occured to download the file: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->strUris:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 374
    const/16 v18, 0x1f0

    .line 376
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "finally enter"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :try_start_f
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "finally bp1"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_2

    .line 380
    :catch_2
    move-exception v9

    .line 381
    .local v9, e:Ljava/io/IOException;
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "Error when closing stream after send"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v18, 0x1f0

    .line 384
    goto/16 :goto_2

    .line 269
    .end local v9           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v27

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v27
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_1

    .line 376
    :catchall_3
    move-exception v27

    :goto_4
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "finally enter"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :try_start_12
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "finally bp1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 383
    :goto_5
    throw v27

    .line 380
    :catch_3
    move-exception v9

    .line 381
    .restart local v9       #e:Ljava/io/IOException;
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "Error when closing stream after send"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v18, 0x1f0

    goto/16 :goto_0

    .line 280
    .end local v9           #e:Ljava/io/IOException;
    :cond_0
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->out:Ljava/io/PrintWriter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->in:Ljava/io/BufferedReader;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 282
    .local v20, tempOffset:Ljava/lang/String;
    monitor-enter p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_1

    .line 283
    const/16 v27, 0x0

    :try_start_14
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/wifidirect/test/FTPClient;->mWaitingForRemote:Z

    .line 284
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 285
    :try_start_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/wifidirect/test/FTPClient;->mTimestampNoConfirm:J

    .line 286
    sget-object v27, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_REJECT:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-nez v27, :cond_1

    .line 287
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "receive \'reject\',Client canceled download request ."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_1

    .line 288
    const/16 v27, 0x1ea

    .line 376
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "finally enter"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :try_start_16
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "finally bp1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_4

    goto/16 :goto_0

    .line 380
    :catch_4
    move-exception v9

    .line 381
    .restart local v9       #e:Ljava/io/IOException;
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "Error when closing stream after send"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v18, 0x1f0

    goto/16 :goto_0

    .line 284
    .end local v9           #e:Ljava/io/IOException;
    :catchall_4
    move-exception v27

    :try_start_17
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    throw v27

    .line 289
    :cond_1
    sget-object v27, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_FILEERROR:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-nez v27, :cond_2

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->in:Ljava/io/BufferedReader;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 291
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "File System error, cancel transfer, error code="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_1

    .line 376
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "finally enter"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :try_start_19
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "finally bp1"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_5

    move/from16 v19, v18

    .end local v18           #statusSendFile:I
    .local v19, statusSendFile:I
    :goto_6
    move/from16 v27, v18

    move/from16 v18, v19

    .line 383
    .end local v19           #statusSendFile:I
    .restart local v18       #statusSendFile:I
    goto/16 :goto_0

    .line 380
    :catch_5
    move-exception v9

    .line 381
    .restart local v9       #e:Ljava/io/IOException;
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "Error when closing stream after send"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v19, 0x1f0

    .end local v18           #statusSendFile:I
    .restart local v19       #statusSendFile:I
    goto :goto_6

    .line 294
    .end local v9           #e:Ljava/io/IOException;
    .end local v19           #statusSendFile:I
    .restart local v18       #statusSendFile:I
    :cond_2
    :try_start_1a
    sget-object v27, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_ABORT:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_1

    move-result v27

    if-nez v27, :cond_3

    .line 297
    const/16 v27, 0x1ec

    .line 376
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "finally enter"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :try_start_1b
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "finally bp1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_6

    goto/16 :goto_0

    .line 380
    :catch_6
    move-exception v9

    .line 381
    .restart local v9       #e:Ljava/io/IOException;
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "Error when closing stream after send"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v18, 0x1f0

    goto/16 :goto_0

    .line 299
    .end local v9           #e:Ljava/io/IOException;
    :cond_3
    :try_start_1c
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 300
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "(INFO) Received offset from client: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";file length :"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    sub-long v21, p2, v14

    .line 302
    sget v27, Lcom/android/wifidirect/test/Constants;->OutputDataSize:I

    move/from16 v0, v27

    new-array v6, v0, [B

    .line 304
    .local v6, byteArray:[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/io/FileInputStream;->skip(J)J

    .line 305
    new-instance v12, Ljava/io/BufferedInputStream;

    sget v27, Lcom/android/wifidirect/test/Constants;->InputDataSize:I

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-direct {v12, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 307
    .local v12, inBuffer:Ljava/io/BufferedInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->mOutStream:Ljava/io/OutputStream;

    move-object/from16 v27, v0

    if-nez v27, :cond_4

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/wifidirect/test/ObexTransport;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/wifidirect/test/FTPClient;->mOutStream:Ljava/io/OutputStream;

    .line 310
    :cond_4
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "(INFO) Transferring file ... totalBytesRead:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-wide/16 v23, 0x0

    .line 312
    const/16 v16, 0x0

    .line 313
    .local v16, perCentCounter:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mLength:J

    move-wide/from16 v27, v0

    sget v29, Lcom/android/wifidirect/test/Constants;->OutputDataSize:I

    mul-int/lit8 v29, v29, 0x14

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    div-long v27, v27, v29

    move-wide/from16 v0, v27

    long-to-int v10, v0

    .line 314
    .local v10, filePercent:I
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "filePercent "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_1

    move-object/from16 v26, v25

    .line 315
    .end local v25           #updateValues:Landroid/content/ContentValues;
    .local v26, updateValues:Landroid/content/ContentValues;
    :goto_7
    cmp-long v27, v23, v21

    if-gez v27, :cond_6

    :try_start_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/wifidirect/test/FTPClient;->mInterrupted:Z

    move/from16 v27, v0

    if-nez v27, :cond_6

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->mCallback:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->mCallback:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x4

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    const-wide/32 v29, 0xc350

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 318
    const/16 v27, 0x0

    sget v28, Lcom/android/wifidirect/test/Constants;->OutputDataSize:I

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v12, v6, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v17

    .line 319
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "readLength= "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->mOutStream:Ljava/io/OutputStream;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v17

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 322
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v27, v0

    add-long v23, v23, v27

    .line 323
    add-int/lit8 v16, v16, 0x1

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->mCallback:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    move/from16 v0, v16

    if-ge v0, v10, :cond_5

    cmp-long v27, v23, v21

    if-nez v27, :cond_b

    .line 328
    :cond_5
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "befoere update WifiShare.CURRENT_BYTES"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_e

    .line 330
    .end local v26           #updateValues:Landroid/content/ContentValues;
    .restart local v25       #updateValues:Landroid/content/ContentValues;
    :try_start_1e
    const-string v27, "current_bytes"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->contentUri:Landroid/net/Uri;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 332
    const/16 v16, 0x0

    .line 334
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->mOutStream:Ljava/io/OutputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/OutputStream;->flush()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_1

    move-object/from16 v26, v25

    .end local v25           #updateValues:Landroid/content/ContentValues;
    .restart local v26       #updateValues:Landroid/content/ContentValues;
    goto/16 :goto_7

    .line 337
    :cond_6
    :try_start_1f
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "after While complete"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    cmp-long v27, v23, v21

    if-nez v27, :cond_7

    .line 340
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "complete totalBytesRead == totalBytes"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_e

    .line 342
    .end local v26           #updateValues:Landroid/content/ContentValues;
    .restart local v25       #updateValues:Landroid/content/ContentValues;
    :try_start_20
    const-string v27, "status"

    const/16 v28, 0xc8

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->contentUri:Landroid/net/Uri;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 357
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_1

    .line 376
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "finally enter"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :try_start_21
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "finally bp1"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_7

    goto/16 :goto_2

    .line 380
    :catch_7
    move-exception v9

    .line 381
    .restart local v9       #e:Ljava/io/IOException;
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "Error when closing stream after send"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v18, 0x1f0

    .line 384
    goto/16 :goto_2

    .line 346
    .end local v9           #e:Ljava/io/IOException;
    .end local v25           #updateValues:Landroid/content/ContentValues;
    .restart local v26       #updateValues:Landroid/content/ContentValues;
    :cond_7
    :try_start_22
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "File transfer incomplete: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wifidirect/test/FTPClient;->filename:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 349
    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/wifidirect/test/FTPClient;->mInterrupted:Z

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 350
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "transfer has been cancelled!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_22} :catch_e

    .line 351
    const/16 v27, 0x1ea

    .line 376
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "finally enter"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :try_start_23
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "finally bp1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_8

    :goto_9
    move-object/from16 v25, v26

    .line 383
    .end local v26           #updateValues:Landroid/content/ContentValues;
    .restart local v25       #updateValues:Landroid/content/ContentValues;
    goto/16 :goto_0

    .line 380
    .end local v25           #updateValues:Landroid/content/ContentValues;
    .restart local v26       #updateValues:Landroid/content/ContentValues;
    :catch_8
    move-exception v9

    .line 381
    .restart local v9       #e:Ljava/io/IOException;
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "Error when closing stream after send"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v18, 0x1f0

    goto :goto_9

    .line 353
    .end local v9           #e:Ljava/io/IOException;
    :cond_8
    const/16 v27, 0x1f0

    .line 376
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "finally enter"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :try_start_24
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "finally bp1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_9

    :goto_a
    move-object/from16 v25, v26

    .line 383
    .end local v26           #updateValues:Landroid/content/ContentValues;
    .restart local v25       #updateValues:Landroid/content/ContentValues;
    goto/16 :goto_0

    .line 380
    .end local v25           #updateValues:Landroid/content/ContentValues;
    .restart local v26       #updateValues:Landroid/content/ContentValues;
    :catch_9
    move-exception v9

    .line 381
    .restart local v9       #e:Ljava/io/IOException;
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "Error when closing stream after send"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v18, 0x1f0

    goto :goto_a

    .line 359
    .end local v6           #byteArray:[B
    .end local v9           #e:Ljava/io/IOException;
    .end local v10           #filePercent:I
    .end local v12           #inBuffer:Ljava/io/BufferedInputStream;
    .end local v16           #perCentCounter:I
    .end local v20           #tempOffset:Ljava/lang/String;
    .end local v26           #updateValues:Landroid/content/ContentValues;
    .restart local v25       #updateValues:Landroid/content/ContentValues;
    :cond_9
    :try_start_25
    sget-object v27, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_MIMETYPE_ERROR:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-nez v27, :cond_a

    .line 360
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "MimeType error, cancel transfer "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_25} :catch_1

    .line 361
    const/16 v27, 0x196

    .line 376
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "finally enter"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :try_start_26
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "finally bp1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_a

    goto/16 :goto_0

    .line 380
    :catch_a
    move-exception v9

    .line 381
    .restart local v9       #e:Ljava/io/IOException;
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "Error when closing stream after send"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v18, 0x1f0

    goto/16 :goto_0

    .line 363
    .end local v9           #e:Ljava/io/IOException;
    :cond_a
    :try_start_27
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "readLine gave null or others, quitting line="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_3
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_27} :catch_1

    .line 364
    const/16 v27, 0x1f0

    .line 376
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "finally enter"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :try_start_28
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "finally bp1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_b

    goto/16 :goto_0

    .line 380
    :catch_b
    move-exception v9

    .line 381
    .restart local v9       #e:Ljava/io/IOException;
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "Error when closing stream after send"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v18, 0x1f0

    goto/16 :goto_0

    .line 380
    :catch_c
    move-exception v9

    .line 381
    const-string v27, "<==>tsjWFD FTPClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "Error when closing stream after send"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v18, 0x1f0

    .line 384
    goto/16 :goto_2

    .line 380
    .end local v9           #e:Ljava/io/IOException;
    :catch_d
    move-exception v9

    .line 381
    .restart local v9       #e:Ljava/io/IOException;
    const-string v28, "<==>tsjWFD FTPClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "Error when closing stream after send"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v18, 0x1f0

    goto/16 :goto_5

    .line 376
    .end local v9           #e:Ljava/io/IOException;
    .end local v25           #updateValues:Landroid/content/ContentValues;
    .restart local v6       #byteArray:[B
    .restart local v10       #filePercent:I
    .restart local v12       #inBuffer:Ljava/io/BufferedInputStream;
    .restart local v16       #perCentCounter:I
    .restart local v20       #tempOffset:Ljava/lang/String;
    .restart local v26       #updateValues:Landroid/content/ContentValues;
    :catchall_5
    move-exception v27

    move-object/from16 v25, v26

    .end local v26           #updateValues:Landroid/content/ContentValues;
    .restart local v25       #updateValues:Landroid/content/ContentValues;
    goto/16 :goto_4

    .line 371
    .end local v25           #updateValues:Landroid/content/ContentValues;
    .restart local v26       #updateValues:Landroid/content/ContentValues;
    :catch_e
    move-exception v9

    move-object/from16 v25, v26

    .end local v26           #updateValues:Landroid/content/ContentValues;
    .restart local v25       #updateValues:Landroid/content/ContentValues;
    goto/16 :goto_3

    .line 366
    .end local v25           #updateValues:Landroid/content/ContentValues;
    .restart local v26       #updateValues:Landroid/content/ContentValues;
    :catch_f
    move-exception v9

    move-object/from16 v25, v26

    .end local v26           #updateValues:Landroid/content/ContentValues;
    .restart local v25       #updateValues:Landroid/content/ContentValues;
    goto/16 :goto_1

    .end local v25           #updateValues:Landroid/content/ContentValues;
    .restart local v26       #updateValues:Landroid/content/ContentValues;
    :cond_b
    move-object/from16 v25, v26

    .end local v26           #updateValues:Landroid/content/ContentValues;
    .restart local v25       #updateValues:Landroid/content/ContentValues;
    goto/16 :goto_8
.end method

.method private takeWakeLock()V
    .locals 3

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 456
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/android/wifidirect/test/FTPClient;->WAKE_LOCK_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 462
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 464
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    const-string v1, "<==>tsjWFD FTPClient"

    const-string v2, "Acquiring wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 466
    return-void
.end method

.method private takeWifiLock()V
    .locals 3

    .prologue
    .line 480
    const-string v1, "<==>tsjWFD FTPClient"

    const-string v2, "Taking wifi lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 483
    .local v0, manager:Landroid/net/wifi/WifiManager;
    const-string v1, "FTPClient"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 484
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 486
    .end local v0           #manager:Landroid/net/wifi/WifiManager;
    :cond_0
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 487
    return-void
.end method


# virtual methods
.method public ClientSendFile()V
    .locals 15

    .prologue
    const/16 v14, 0x1f0

    const/16 v13, 0xc8

    .line 171
    const-string v3, ""

    .line 172
    .local v3, line:Ljava/lang/String;
    const-string v2, "ClientSendFile: "

    .line 173
    .local v2, functionName:Ljava/lang/String;
    const-string v9, "<==>tsjWFD FTPClient"

    invoke-static {v9, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/16 v7, 0xc8

    .line 176
    .local v7, statusClientSF:I
    :goto_0
    iget-boolean v9, p0, Lcom/android/wifidirect/test/FTPClient;->mIsConnectFinished:Z

    if-nez v9, :cond_0

    .line 178
    :try_start_0
    const-string v9, "<==>tsjWFD FTPClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "waiting for \'run\' finished, sleep for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x32

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-wide/16 v9, 0x32

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v9, "<==>tsjWFD FTPClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "InterruptedException!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v0           #e:Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 186
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/wifidirect/test/FTPClient;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v10, v10, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/android/wifidirect/test/FTPClient;->contentUri:Landroid/net/Uri;

    .line 189
    :try_start_1
    const-string v9, "<==>tsjWFD FTPClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Begin sendFile"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v9, p0, Lcom/android/wifidirect/test/FTPClient;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    iget-object v9, v9, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    iget-object v10, p0, Lcom/android/wifidirect/test/FTPClient;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    iget-wide v10, v10, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mLength:J

    invoke-direct {p0, v9, v10, v11}, Lcom/android/wifidirect/test/FTPClient;->sendFile(Ljava/io/FileInputStream;J)I

    move-result v7

    .line 192
    if-eq v13, v7, :cond_2

    .line 193
    invoke-direct {p0, v7}, Lcom/android/wifidirect/test/FTPClient;->handleSendFileException(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 224
    :catch_1
    move-exception v0

    .line 225
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 226
    const-string v9, "<==>tsjWFD FTPClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "IOException Cannot connect to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/wifidirect/test/FTPClient;->selectedServer:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0, v14}, Lcom/android/wifidirect/test/FTPClient;->handleSendFileException(I)V

    .line 235
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :goto_2
    iget-object v9, p0, Lcom/android/wifidirect/test/FTPClient;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/wifidirect/test/FTPClient;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v10, v10, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-static {v9, v10, v13}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    goto :goto_1

    .line 196
    :cond_2
    :try_start_2
    const-string v9, "<==>tsjWFD FTPClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "after  sendFile"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v9, p0, Lcom/android/wifidirect/test/FTPClient;->in:Ljava/io/BufferedReader;

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 199
    const-string v9, "<==>tsjWFD FTPClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "line = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-eqz v3, :cond_1

    .line 201
    sget-object v9, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_FINISH:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3

    .line 202
    iget-object v9, p0, Lcom/android/wifidirect/test/FTPClient;->mCallback:Landroid/os/Handler;

    invoke-static {v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    .line 203
    .local v4, msg:Landroid/os/Message;
    const/4 v9, 0x0

    iput v9, v4, Landroid/os/Message;->what:I

    .line 204
    iget-object v9, p0, Lcom/android/wifidirect/test/FTPClient;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iput-object v9, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/wifidirect/test/FTPClient;->mTimestampEnd:J

    .line 208
    iget-wide v9, p0, Lcom/android/wifidirect/test/FTPClient;->mTimestampEnd:J

    iget-wide v11, p0, Lcom/android/wifidirect/test/FTPClient;->mTimestampIncludingConfirm:J

    sub-long v5, v9, v11

    .line 209
    .local v5, resumeTime:J
    new-instance v1, Ljava/lang/Float;

    const-wide/16 v9, 0x0

    invoke-direct {v1, v9, v10}, Ljava/lang/Float;-><init>(D)V

    .local v1, fSize:Ljava/lang/Float;
    new-instance v8, Ljava/lang/Float;

    const-wide/16 v9, 0x0

    invoke-direct {v8, v9, v10}, Ljava/lang/Float;-><init>(D)V

    .line 210
    .local v8, tSpeed:Ljava/lang/Float;
    new-instance v1, Ljava/lang/Float;

    .end local v1           #fSize:Ljava/lang/Float;
    iget-object v9, p0, Lcom/android/wifidirect/test/FTPClient;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    iget-wide v9, v9, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mLength:J

    long-to-float v9, v9

    const/high16 v10, 0x4980

    div-float/2addr v9, v10

    invoke-direct {v1, v9}, Ljava/lang/Float;-><init>(F)V

    .line 211
    .restart local v1       #fSize:Ljava/lang/Float;
    new-instance v8, Ljava/lang/Float;

    .end local v8           #tSpeed:Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const-wide/16 v10, 0x3e8

    div-long v10, v5, v10

    long-to-float v10, v10

    div-float/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/Float;-><init>(F)V

    .line 212
    .restart local v8       #tSpeed:Ljava/lang/Float;
    const-string v9, "<==>tsjWFD FTPClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Send report: fileName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/wifidirect/test/FTPClient;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    iget-object v11, v11, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "M"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v9, "<==>tsjWFD FTPClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Send time with confirmation: resumeTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms; speed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "M/s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-wide v9, p0, Lcom/android/wifidirect/test/FTPClient;->mTimestampEnd:J

    iget-wide v11, p0, Lcom/android/wifidirect/test/FTPClient;->mTimestampNoConfirm:J

    sub-long v5, v9, v11

    .line 217
    new-instance v8, Ljava/lang/Float;

    .end local v8           #tSpeed:Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const-wide/16 v10, 0x3e8

    div-long v10, v5, v10

    long-to-float v10, v10

    div-float/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/Float;-><init>(F)V

    .line 218
    .restart local v8       #tSpeed:Ljava/lang/Float;
    const-string v9, "<==>tsjWFD FTPClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Send time without confirmation: resumeTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms; speed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "M/s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 228
    .end local v1           #fSize:Ljava/lang/Float;
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #resumeTime:J
    .end local v8           #tSpeed:Ljava/lang/Float;
    :catch_2
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v9, "<==>tsjWFD FTPClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "NullPointerException .e="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 232
    invoke-direct {p0, v14}, Lcom/android/wifidirect/test/FTPClient;->handleSendFileException(I)V

    goto/16 :goto_2

    .line 221
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_3
    const/16 v9, 0x1ea

    :try_start_3
    invoke-direct {p0, v9}, Lcom/android/wifidirect/test/FTPClient;->handleSendFileException(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2
.end method

.method public close()V
    .locals 4

    .prologue
    .line 412
    const-string v1, "<==>tsjWFD FTPClient"

    const-string v2, "close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->in:Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->in:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 416
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->in:Ljava/io/BufferedReader;

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->out:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->out:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 420
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->out:Ljava/io/PrintWriter;

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->mOutStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_2

    .line 423
    iget-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->mOutStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 424
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wifidirect/test/FTPClient;->mOutStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :cond_2
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Ljava/io/IOException;
    const-string v1, "<==>tsjWFD FTPClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close: Error when closing in/out e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public connect()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 86
    const-string v2, ""

    .line 87
    .local v2, line:Ljava/lang/String;
    const-string v1, "connect: "

    .line 88
    .local v1, functionName:Ljava/lang/String;
    const/16 v6, 0xc8

    .line 90
    .local v6, statusConnect:I
    const-string v7, "<==>tsjWFD FTPClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "23 connect begin"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0}, Lcom/android/wifidirect/test/FTPClient;->takeWifiLock()V

    .line 92
    invoke-direct {p0}, Lcom/android/wifidirect/test/FTPClient;->takeWakeLock()V

    .line 93
    iget-object v7, p0, Lcom/android/wifidirect/test/FTPClient;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/wifidirect/test/FTPClient;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v8, v8, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    const/16 v9, 0xbe

    invoke-static {v7, v8, v9}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 94
    iput-boolean v11, p0, Lcom/android/wifidirect/test/FTPClient;->mInterrupted:Z

    .line 97
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/wifidirect/test/FTPClient;->mTimestampIncludingConfirm:J

    .line 99
    iget-object v7, p0, Lcom/android/wifidirect/test/FTPClient;->in:Ljava/io/BufferedReader;

    if-nez v7, :cond_0

    .line 100
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/android/wifidirect/test/FTPClient;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    invoke-interface {v9}, Lcom/android/wifidirect/test/ObexTransport;->openInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v7, p0, Lcom/android/wifidirect/test/FTPClient;->in:Ljava/io/BufferedReader;

    .line 103
    :cond_0
    iget-object v7, p0, Lcom/android/wifidirect/test/FTPClient;->out:Ljava/io/PrintWriter;

    if-nez v7, :cond_1

    .line 104
    new-instance v7, Ljava/io/PrintWriter;

    iget-object v8, p0, Lcom/android/wifidirect/test/FTPClient;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    invoke-interface {v8}, Lcom/android/wifidirect/test/ObexTransport;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v7, p0, Lcom/android/wifidirect/test/FTPClient;->out:Ljava/io/PrintWriter;

    .line 107
    :cond_1
    const-string v7, "<==>tsjWFD FTPClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "11 Begin Read"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v7, p0, Lcom/android/wifidirect/test/FTPClient;->out:Ljava/io/PrintWriter;

    sget-object v8, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_CONNECTED:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v7, "<==>tsjWFD FTPClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Connected to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/wifidirect/test/FTPClient;->selectedServer:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/android/wifidirect/test/FTPClient;->mWaitingForRemote:Z

    .line 113
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :try_start_2
    iget-object v7, p0, Lcom/android/wifidirect/test/FTPClient;->in:Ljava/io/BufferedReader;

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 115
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    const/4 v7, 0x0

    :try_start_3
    iput-boolean v7, p0, Lcom/android/wifidirect/test/FTPClient;->mWaitingForRemote:Z

    .line 117
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    :try_start_4
    const-string v7, "<==>tsjWFD FTPClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "input Line:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eqz v2, :cond_5

    .line 120
    sget-object v7, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_LIST:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 121
    const-string v7, "<==>tsjWFD FTPClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Received line from client: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v7, p0, Lcom/android/wifidirect/test/FTPClient;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    iget-object v3, v7, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mMimetype:Ljava/lang/String;

    .line 123
    .local v3, mType:Ljava/lang/String;
    const-string v7, "<==>tsjWFD FTPClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "type is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/wifidirect/test/FTPClient;->fileNum:I

    .line 125
    invoke-static {}, Lcom/android/wifidirect/test/WifiTransferMgr;->getSendDeviceName()Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, senderName:Ljava/lang/String;
    const-string v7, "<==>tsjWFD FTPClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "fileNum is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/wifidirect/test/FTPClient;->fileNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";senderName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v7, p0, Lcom/android/wifidirect/test/FTPClient;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    if-nez v7, :cond_3

    .line 129
    const-string v7, "<==>tsjWFD FTPClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mFileInfo is null!! cancel transfer!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 v7, 0x190

    invoke-direct {p0, v7}, Lcom/android/wifidirect/test/FTPClient;->handleConnectException(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 168
    .end local v3           #mType:Ljava/lang/String;
    .end local v5           #senderName:Ljava/lang/String;
    :goto_0
    return-void

    .line 113
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/io/IOException;
    const-string v7, "<==>tsjWFD FTPClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "IOException Cannot connect to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/wifidirect/test/FTPClient;->selectedServer:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/16 v6, 0x1f1

    .line 154
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :goto_1
    const/16 v7, 0xc8

    if-eq v7, v6, :cond_6

    .line 162
    invoke-direct {p0, v6}, Lcom/android/wifidirect/test/FTPClient;->handleConnectException(I)V

    .line 166
    :goto_2
    const-string v7, "<==>tsjWFD FTPClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "end of connect"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :catchall_1
    move-exception v7

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v7
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1

    .line 155
    :catch_1
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v7, "<==>tsjWFD FTPClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "NullPointerException occured to download the file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/wifidirect/test/FTPClient;->strUris:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 158
    const/16 v6, 0x1f0

    goto :goto_1

    .line 133
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v3       #mType:Ljava/lang/String;
    .restart local v5       #senderName:Ljava/lang/String;
    :cond_3
    :try_start_9
    iget-object v7, p0, Lcom/android/wifidirect/test/FTPClient;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    invoke-direct {p0, v7}, Lcom/android/wifidirect/test/FTPClient;->applyRemoteDeviceQuirks(Lcom/android/wifidirect/test/WifiOppSendFileInfo;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, newFileName:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 135
    const-string v7, "<==>tsjWFD FTPClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "applyRemoteDeviceQuirks return new name!! newFileName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v7, p0, Lcom/android/wifidirect/test/FTPClient;->out:Ljava/io/PrintWriter;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    :goto_3
    iget-object v7, p0, Lcom/android/wifidirect/test/FTPClient;->out:Ljava/io/PrintWriter;

    iget v8, p0, Lcom/android/wifidirect/test/FTPClient;->fileNum:I

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 142
    iget-object v7, p0, Lcom/android/wifidirect/test/FTPClient;->out:Ljava/io/PrintWriter;

    iget-object v8, p0, Lcom/android/wifidirect/test/FTPClient;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    iget-object v8, v8, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    iget-object v7, p0, Lcom/android/wifidirect/test/FTPClient;->out:Ljava/io/PrintWriter;

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 138
    :cond_4
    iget-object v7, p0, Lcom/android/wifidirect/test/FTPClient;->out:Ljava/io/PrintWriter;

    iget-object v8, p0, Lcom/android/wifidirect/test/FTPClient;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    iget-object v8, v8, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 148
    .end local v3           #mType:Ljava/lang/String;
    .end local v4           #newFileName:Ljava/lang/String;
    .end local v5           #senderName:Ljava/lang/String;
    :cond_5
    const-string v7, "<==>tsjWFD FTPClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Cannot connect to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/wifidirect/test/FTPClient;->selectedServer:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/wifidirect/test/FTPClient;->selectedPort:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_1

    .line 149
    const/16 v6, 0x1f0

    goto/16 :goto_1

    .line 164
    :cond_6
    iput-boolean v10, p0, Lcom/android/wifidirect/test/FTPClient;->mIsConnectFinished:Z

    goto/16 :goto_2
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 434
    const-string v0, "<==>tsjWFD FTPClient"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-direct {p0}, Lcom/android/wifidirect/test/FTPClient;->releaseWakeLock()V

    .line 436
    invoke-direct {p0}, Lcom/android/wifidirect/test/FTPClient;->releaseWifiLock()V

    .line 437
    return-void
.end method

.method public getWaitingForRemote()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/wifidirect/test/FTPClient;->mWaitingForRemote:Z

    return v0
.end method

.method public onSessionComplete()V
    .locals 3

    .prologue
    .line 441
    const-string v0, "<==>tsjWFD FTPClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionComplete out="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wifidirect/test/FTPClient;->out:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/android/wifidirect/test/FTPClient;->out:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/wifidirect/test/FTPClient;->out:Ljava/io/PrintWriter;

    sget-object v1, Lcom/android/wifidirect/test/Constants;->FTP_COMMAND_DISCONNECT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    :cond_0
    return-void
.end method

.method public renewInfos(Lcom/android/wifidirect/test/WifiOppSendFileInfo;Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    .locals 0
    .parameter "FileInfo"
    .parameter "info"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/wifidirect/test/FTPClient;->mFileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    .line 77
    iput-object p2, p0, Lcom/android/wifidirect/test/FTPClient;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 78
    return-void
.end method

.method public setInterrupted(Z)V
    .locals 3
    .parameter "interrupted"

    .prologue
    .line 81
    const-string v0, "<==>tsjWFD FTPClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInterrupted interrupted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput-boolean p1, p0, Lcom/android/wifidirect/test/FTPClient;->mInterrupted:Z

    .line 83
    return-void
.end method
