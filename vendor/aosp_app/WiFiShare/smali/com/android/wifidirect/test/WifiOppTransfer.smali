.class public Lcom/android/wifidirect/test/WifiOppTransfer;
.super Ljava/lang/Object;
.source "WifiOppTransfer.java"

# interfaces
.implements Lcom/android/wifidirect/test/WifiOppBatch$WifiOppBatchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;,
        Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;
    }
.end annotation


# static fields
.field private static final CONNECT_RETRY_TIME:I = 0xc8

.field private static final CONNECT_WAIT_TIMEOUT:I = 0x14c08

.field private static final D:Z = true

.field private static final OPUSH_UUID16:S = 0x1105s

.field private static final TAG:Ljava/lang/String; = "<==>tsjWFD WifiOppTransfer"

.field public static final TCPLINK_CONNECTED:I = 0xb

.field public static final TCPLINK_ERROR:I = 0xa

.field private static final V:Z = true


# instance fields
.field private client:Lcom/android/wifidirect/test/FTPClient;

.field private mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

.field private mConnectThread:Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;

.field private mContext:Landroid/content/Context;

.field private mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

.field private mFileProcessor:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSession:Lcom/android/wifidirect/test/WifiOppObexSession;

.field private mSessionHandler:Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;

.field private mTimestamp:J

.field private mTransport:Lcom/android/wifidirect/test/ObexTransport;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/wifidirect/test/WifiOppBatch;)V
    .locals 1
    .parameter "context"
    .parameter "powerManager"
    .parameter "batch"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wifidirect/test/WifiOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/wifidirect/test/WifiOppBatch;Lcom/android/wifidirect/test/WifiOppObexSession;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/wifidirect/test/WifiOppBatch;Lcom/android/wifidirect/test/WifiOppObexSession;)V
    .locals 1
    .parameter "context"
    .parameter "powerManager"
    .parameter "batch"
    .parameter "session"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mFileProcessor:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    .line 467
    new-instance v0, Lcom/android/wifidirect/test/WifiOppTransfer$2;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/WifiOppTransfer$2;-><init>(Lcom/android/wifidirect/test/WifiOppTransfer;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mPowerManager:Landroid/os/PowerManager;

    .line 82
    iput-object p3, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    .line 83
    iput-object p4, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mSession:Lcom/android/wifidirect/test/WifiOppObexSession;

    .line 85
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    invoke-virtual {v0, p0}, Lcom/android/wifidirect/test/WifiOppBatch;->registerListern(Lcom/android/wifidirect/test/WifiOppBatch$WifiOppBatchListener;)V

    .line 87
    invoke-static {p1}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->getInstance(Landroid/content/Context;)Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mFileProcessor:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    .line 89
    return-void
.end method

.method static synthetic access$002(Lcom/android/wifidirect/test/WifiOppTransfer;Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;)Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mConnectThread:Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/wifidirect/test/WifiOppTransfer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/wifidirect/test/WifiOppTransfer;->markBatchFailed(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/wifidirect/test/WifiOppTransfer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransfer;->markBatchFailed()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/wifidirect/test/WifiOppTransfer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/wifidirect/test/WifiOppTransfer;Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/wifidirect/test/WifiOppTransfer;->markShareTimeout(Lcom/android/wifidirect/test/WifiOppShareInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mSessionHandler:Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppBatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/ObexTransport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/wifidirect/test/WifiOppTransfer;Lcom/android/wifidirect/test/ObexTransport;)Lcom/android/wifidirect/test/ObexTransport;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/wifidirect/test/WifiOppTransfer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransfer;->startObexSession()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppShareInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/wifidirect/test/WifiOppTransfer;Lcom/android/wifidirect/test/WifiOppShareInfo;)Lcom/android/wifidirect/test/WifiOppShareInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/wifidirect/test/WifiOppTransfer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransfer;->processCurrentShare()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppObexSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mSession:Lcom/android/wifidirect/test/WifiOppObexSession;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mFileProcessor:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/wifidirect/test/WifiOppTransfer;Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/wifidirect/test/WifiOppTransfer;->tickShareStatus(Lcom/android/wifidirect/test/WifiOppShareInfo;)V

    return-void
.end method

.method private markBatchFailed()V
    .locals 1

    .prologue
    .line 313
    const/16 v0, 0x1eb

    invoke-direct {p0, v0}, Lcom/android/wifidirect/test/WifiOppTransfer;->markBatchFailed(I)V

    .line 314
    return-void
.end method

.method private markBatchFailed(I)V
    .locals 11
    .parameter "failReason"

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xc8

    .line 258
    monitor-enter p0

    .line 260
    const-wide/16 v5, 0x3e8

    :try_start_0
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    const-string v5, "<==>tsjWFD WifiOppTransfer"

    const-string v6, "Mark all ShareInfo in the batch as failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    if-eqz v5, :cond_1

    .line 268
    const-string v5, "<==>tsjWFD WifiOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current share has status "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v7, v7, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v5, v5, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    invoke-static {v5}, Lcom/android/wifidirect/test/WifiShare;->isStatusError(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget p1, v5, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    .line 272
    :cond_0
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v5, v5, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget-object v5, v5, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 274
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget-object v6, v6, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 278
    :cond_1
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    invoke-virtual {v5}, Lcom/android/wifidirect/test/WifiOppBatch;->getPendingShare()Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v3

    .line 279
    .local v3, info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    const-string v5, "<==>tsjWFD WifiOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "markBatchFailed: info ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_1
    if-eqz v3, :cond_5

    .line 281
    const-string v5, "<==>tsjWFD WifiOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "markBatchFailed: info.mStatus ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget v5, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    if-ge v5, v9, :cond_3

    .line 283
    iput p1, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 285
    .local v0, contentUri:Landroid/net/Uri;
    const-string v5, "<==>tsjWFD WifiOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "markBatchFailed: info.mUri ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";info.mDirection="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 287
    .local v4, updateValues:Landroid/content/ContentValues;
    const-string v5, "status"

    iget v6, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    iget v5, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    if-nez v5, :cond_4

    .line 290
    const/4 v2, 0x0

    .line 291
    .local v2, fileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mContext:Landroid/content/Context;

    iget-object v6, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mUri:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMimetype:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/wifidirect/test/WifiOppSendFileInfo;

    move-result-object v2

    .line 293
    const-string v5, "<==>tsjWFD WifiOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "markBatchFailed: fileInfo.mFileName ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v5, v2, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 295
    const-string v5, "hint"

    iget-object v6, v2, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v5, "total_bytes"

    iget-wide v6, v2, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mLength:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 297
    const-string v5, "mimetype"

    iget-object v6, v2, Lcom/android/wifidirect/test/WifiOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v2           #fileInfo:Lcom/android/wifidirect/test/WifiOppSendFileInfo;
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0, v4, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 305
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mContext:Landroid/content/Context;

    iget v6, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    invoke-static {v5, v0, v6}, Lcom/android/wifidirect/test/Constants;->wifisendIntentIfCompleted(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 307
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v4           #updateValues:Landroid/content/ContentValues;
    :cond_3
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    invoke-virtual {v5}, Lcom/android/wifidirect/test/WifiOppBatch;->getPendingShare()Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v3

    goto/16 :goto_1

    .line 261
    .end local v3           #info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    :catch_0
    move-exception v1

    .line 262
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v5, "<==>tsjWFD WifiOppTransfer"

    const-string v6, "Interrupted waiting for markBatchFailed"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 264
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 300
    .restart local v0       #contentUri:Landroid/net/Uri;
    .restart local v3       #info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    .restart local v4       #updateValues:Landroid/content/ContentValues;
    :cond_4
    iget v5, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    if-ge v5, v9, :cond_2

    iget-object v5, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 301
    new-instance v5, Ljava/io/File;

    iget-object v6, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 310
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v4           #updateValues:Landroid/content/ContentValues;
    :cond_5
    return-void
.end method

.method private markShareTimeout(Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    .locals 5
    .parameter "share"

    .prologue
    const/4 v4, 0x0

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 251
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 252
    .local v1, updateValues:Landroid/content/ContentValues;
    const-string v2, "confirm"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method private processCurrentShare()V
    .locals 3

    .prologue
    .line 438
    const-string v0, "<==>tsjWFD WifiOppTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCurrentShare:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v2, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mSession:Lcom/android/wifidirect/test/WifiOppObexSession;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    invoke-interface {v0, v1}, Lcom/android/wifidirect/test/WifiOppObexSession;->addShare(Lcom/android/wifidirect/test/WifiOppShareInfo;)V

    .line 440
    return-void
.end method

.method private startConnectSession()V
    .locals 4

    .prologue
    .line 461
    const-string v0, "<==>tsjWFD WifiOppTransfer"

    const-string v1, "start Client ConnectSession"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v0, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;

    invoke-static {}, Lcom/android/wifidirect/test/WifiTransferMgr;->getHostIp()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f2e

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;-><init>(Lcom/android/wifidirect/test/WifiOppTransfer;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mConnectThread:Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;

    .line 463
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mConnectThread:Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->start()V

    .line 464
    return-void
.end method

.method private startObexSession()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 397
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    iput v3, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mStatus:I

    .line 399
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppBatch;->getPendingShare()Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 400
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    if-nez v0, :cond_1

    .line 404
    const-string v0, "<==>tsjWFD WifiOppTransfer"

    const-string v1, "Unexpected error happened !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    const-string v0, "<==>tsjWFD WifiOppTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start session for info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v2, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; for batch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    iget v2, v2, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mDirection:I

    if-nez v0, :cond_2

    .line 411
    const-string v0, "<==>tsjWFD WifiOppTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Client session with transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v0, Lcom/android/wifidirect/test/WifiOppObexClientSession;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mTransport:Lcom/android/wifidirect/test/ObexTransport;

    invoke-direct {v0, v1, v2}, Lcom/android/wifidirect/test/WifiOppObexClientSession;-><init>(Landroid/content/Context;Lcom/android/wifidirect/test/ObexTransport;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mSession:Lcom/android/wifidirect/test/WifiOppObexSession;

    .line 414
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mSession:Lcom/android/wifidirect/test/WifiOppObexSession;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mSessionHandler:Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;

    invoke-interface {v0, v1}, Lcom/android/wifidirect/test/WifiOppObexSession;->start(Landroid/os/Handler;)V

    .line 415
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransfer;->processCurrentShare()V

    goto :goto_0

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mDirection:I

    if-ne v0, v3, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mSession:Lcom/android/wifidirect/test/WifiOppObexSession;

    if-nez v0, :cond_3

    .line 424
    const-string v0, "<==>tsjWFD WifiOppTransfer"

    const-string v1, "Unexpected error happened !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransfer;->markBatchFailed()V

    .line 426
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mStatus:I

    goto :goto_0

    .line 429
    :cond_3
    const-string v0, "<==>tsjWFD WifiOppTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer has Server session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mSession:Lcom/android/wifidirect/test/WifiOppObexSession;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransfer;->processCurrentShare()V

    .line 431
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mSession:Lcom/android/wifidirect/test/WifiOppObexSession;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mSessionHandler:Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;

    invoke-interface {v0, v1}, Lcom/android/wifidirect/test/WifiOppObexSession;->start(Landroid/os/Handler;)V

    goto/16 :goto_0
.end method

.method private tickShareStatus(Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    .locals 5
    .parameter "share"

    .prologue
    const/4 v4, 0x0

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 599
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 600
    .local v1, updateValues:Landroid/content/ContentValues;
    const-string v2, "direction"

    iget v3, p1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 602
    return-void
.end method


# virtual methods
.method public getBatchId()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    return v0
.end method

.method public onBatchCanceled()V
    .locals 2

    .prologue
    .line 651
    const-string v0, "<==>tsjWFD WifiOppTransfer"

    const-string v1, "Transfer on Batch canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransfer;->stop()V

    .line 654
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mStatus:I

    .line 655
    return-void
.end method

.method public onShareAdded(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 615
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/WifiOppBatch;->getPendingShare()Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v0

    .line 616
    .local v0, info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    iget v1, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 617
    const-string v1, "<==>tsjWFD WifiOppTransfer"

    const-string v2, "onShareAdded incoming"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/WifiOppBatch;->getPendingShare()Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 622
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v1, v1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mConfirm:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 625
    const-string v1, "<==>tsjWFD WifiOppTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transfer continue session for info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mCurrentShare:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v3, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from batch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    iget v3, v3, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransfer;->processCurrentShare()V

    .line 628
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransfer;->setConfirmed()V

    .line 631
    :cond_0
    return-void
.end method

.method public onShareDeleted(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 645
    return-void
.end method

.method public setConfirmed()V
    .locals 4

    .prologue
    .line 448
    new-instance v0, Lcom/android/wifidirect/test/WifiOppTransfer$1;

    const-string v1, "Server Unblock thread"

    invoke-direct {v0, p0, v1}, Lcom/android/wifidirect/test/WifiOppTransfer$1;-><init>(Lcom/android/wifidirect/test/WifiOppTransfer;Ljava/lang/String;)V

    .line 456
    .local v0, notifyThread:Ljava/lang/Thread;
    const-string v1, "<==>tsjWFD WifiOppTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConfirmed to unblock mSession"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mSession:Lcom/android/wifidirect/test/WifiOppObexSession;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 458
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 349
    const-string v0, "<==>tsjWFD WifiOppTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create handler thread for batch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    iget v2, v2, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WiOpp Transfer Handler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 352
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 353
    new-instance v0, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;-><init>(Lcom/android/wifidirect/test/WifiOppTransfer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mSessionHandler:Lcom/android/wifidirect/test/WifiOppTransfer$EventHandler;

    .line 355
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mDirection:I

    if-nez v0, :cond_1

    .line 357
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransfer;->startConnectSession()V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mBatch:Lcom/android/wifidirect/test/WifiOppBatch;

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransfer;->startObexSession()V

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 373
    const-string v1, "<==>tsjWFD WifiOppTransfer"

    const-string v2, "stop"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mConnectThread:Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;

    if-eqz v1, :cond_0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mConnectThread:Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->interrupt()V

    .line 377
    const-string v1, "<==>tsjWFD WifiOppTransfer"

    const-string v2, "waiting for connect thread to terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mConnectThread:Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    iput-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mConnectThread:Lcom/android/wifidirect/test/WifiOppTransfer$SocketConnectThread;

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mSession:Lcom/android/wifidirect/test/WifiOppObexSession;

    if-eqz v1, :cond_1

    .line 385
    const-string v1, "<==>tsjWFD WifiOppTransfer"

    const-string v2, "Stop mSession"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mSession:Lcom/android/wifidirect/test/WifiOppObexSession;

    invoke-interface {v1}, Lcom/android/wifidirect/test/WifiOppObexSession;->stop()V

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    .line 389
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 390
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V

    .line 391
    iput-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 393
    :cond_2
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "<==>tsjWFD WifiOppTransfer"

    const-string v2, "Interrupted waiting for connect thread to join"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
