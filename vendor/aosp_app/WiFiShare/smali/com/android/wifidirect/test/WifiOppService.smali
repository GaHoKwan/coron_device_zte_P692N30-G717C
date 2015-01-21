.class public Lcom/android/wifidirect/test/WifiOppService;
.super Landroid/app/Service;
.source "WifiOppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;,
        Lcom/android/wifidirect/test/WifiOppService$UpdateThread;,
        Lcom/android/wifidirect/test/WifiOppService$WifiShareContentObserver;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final MEDIA_SCANNED:I = 0x2

.field private static final MEDIA_SCANNED_FAILED:I = 0x3

.field private static final MSG_INCOMING_CONNECTION_RETRY:I = 0x4

.field private static final START_LISTENER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "wifiDirect_Service"

.field private static final V:Z = true


# instance fields
.field private mBatchId:I

.field private mBatchs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/wifidirect/test/WifiOppBatch;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIncomingRetries:I

.field private mListenStarted:Z

.field private mMediaScanInProgress:Z

.field private mNewChars:Landroid/database/CharArrayBuffer;

.field private mNotifier:Lcom/android/wifidirect/test/WifiOppNotification;

.field private mObserver:Lcom/android/wifidirect/test/WifiOppService$WifiShareContentObserver;

.field private mOldChars:Landroid/database/CharArrayBuffer;

.field private mPendingConnection:Lcom/android/wifidirect/test/ObexTransport;

.field private mPendingUpdate:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mServerSession:Lcom/android/wifidirect/test/WifiOppObexServerSession;

.field private mServerTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

.field private mShares:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/wifidirect/test/WifiOppShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSocketListener:Lcom/android/wifidirect/test/WifiOppTcpListener;

.field private mTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

.field private mUpdateThread:Lcom/android/wifidirect/test/WifiOppService$UpdateThread;

.field private mWifiMgr:Landroid/net/wifi/WifiManager;

.field private final mWifiReceiver:Landroid/content/BroadcastReceiver;

.field private userAccepted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppService;->userAccepted:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mListenStarted:Z

    .line 100
    iput v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mIncomingRetries:I

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mPendingConnection:Lcom/android/wifidirect/test/ObexTransport;

    .line 196
    new-instance v0, Lcom/android/wifidirect/test/WifiOppService$1;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/WifiOppService$1;-><init>(Lcom/android/wifidirect/test/WifiOppService;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mHandler:Landroid/os/Handler;

    .line 320
    new-instance v0, Lcom/android/wifidirect/test/WifiOppService$2;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/WifiOppService$2;-><init>(Lcom/android/wifidirect/test/WifiOppService;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 943
    return-void
.end method

.method static synthetic access$000(Lcom/android/wifidirect/test/WifiOppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppService;->updateFromProvider()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/wifidirect/test/WifiOppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppService;->startSocketListener()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/wifidirect/test/WifiOppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mListenStarted:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/wifidirect/test/WifiOppService;)Lcom/android/wifidirect/test/WifiOppNotification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mNotifier:Lcom/android/wifidirect/test/WifiOppNotification;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/wifidirect/test/WifiOppService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mShares:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/wifidirect/test/WifiOppService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/wifidirect/test/WifiOppService;->shouldScanFile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/wifidirect/test/WifiOppService;Landroid/database/Cursor;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/wifidirect/test/WifiOppService;->scanFile(Landroid/database/Cursor;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/wifidirect/test/WifiOppService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/wifidirect/test/WifiOppService;->deleteShare(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/wifidirect/test/WifiOppService;Landroid/database/Cursor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/wifidirect/test/WifiOppService;->insertShare(Landroid/database/Cursor;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/wifidirect/test/WifiOppService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/wifidirect/test/WifiOppService;->visibleNotification(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/wifidirect/test/WifiOppService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/wifidirect/test/WifiOppService;->needAction(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/wifidirect/test/WifiOppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppService;->userAccepted:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/wifidirect/test/WifiOppService;Landroid/database/Cursor;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wifidirect/test/WifiOppService;->updateShare(Landroid/database/Cursor;IZ)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/wifidirect/test/WifiOppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/wifidirect/test/WifiOppService;->mMediaScanInProgress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/wifidirect/test/WifiOppService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/wifidirect/test/WifiOppService;)Lcom/android/wifidirect/test/ObexTransport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mPendingConnection:Lcom/android/wifidirect/test/ObexTransport;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/wifidirect/test/WifiOppService;Lcom/android/wifidirect/test/ObexTransport;)Lcom/android/wifidirect/test/ObexTransport;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppService;->mPendingConnection:Lcom/android/wifidirect/test/ObexTransport;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/wifidirect/test/WifiOppService;Lcom/android/wifidirect/test/ObexTransport;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/wifidirect/test/WifiOppService;->createServerSession(Lcom/android/wifidirect/test/ObexTransport;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/wifidirect/test/WifiOppService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mIncomingRetries:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/wifidirect/test/WifiOppService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/wifidirect/test/WifiOppService;->mIncomingRetries:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/wifidirect/test/WifiOppService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/wifidirect/test/WifiOppService;)Lcom/android/wifidirect/test/WifiOppService$UpdateThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mUpdateThread:Lcom/android/wifidirect/test/WifiOppService$UpdateThread;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/wifidirect/test/WifiOppService;Lcom/android/wifidirect/test/WifiOppService$UpdateThread;)Lcom/android/wifidirect/test/WifiOppService$UpdateThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppService;->mUpdateThread:Lcom/android/wifidirect/test/WifiOppService$UpdateThread;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/wifidirect/test/WifiOppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/wifidirect/test/WifiOppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/wifidirect/test/WifiOppService;->mPendingUpdate:Z

    return p1
.end method

.method private createServerSession(Lcom/android/wifidirect/test/ObexTransport;)V
    .locals 3
    .parameter "transport"

    .prologue
    .line 314
    new-instance v0, Lcom/android/wifidirect/test/WifiOppObexServerSession;

    invoke-direct {v0, p0, p1}, Lcom/android/wifidirect/test/WifiOppObexServerSession;-><init>(Landroid/content/Context;Lcom/android/wifidirect/test/ObexTransport;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mServerSession:Lcom/android/wifidirect/test/WifiOppObexServerSession;

    .line 315
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mServerSession:Lcom/android/wifidirect/test/WifiOppObexServerSession;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppObexServerSession;->preStart()V

    .line 316
    const-string v0, "wifiDirect_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get ServerSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService;->mServerSession:Lcom/android/wifidirect/test/WifiOppObexServerSession;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for incoming connection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method

.method private deleteShare(I)V
    .locals 6
    .parameter "arrayPos"

    .prologue
    .line 752
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 760
    .local v2, info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    const-string v3, "wifiDirect_Service"

    const-string v4, "deleteShare"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-wide v3, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mTimestamp:J

    invoke-direct {p0, v3, v4}, Lcom/android/wifidirect/test/WifiOppService;->findBatchWithTimeStamp(J)I

    move-result v1

    .line 762
    .local v1, i:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 763
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifidirect/test/WifiOppBatch;

    .line 764
    .local v0, batch:Lcom/android/wifidirect/test/WifiOppBatch;
    invoke-virtual {v0, v2}, Lcom/android/wifidirect/test/WifiOppBatch;->hasShare(Lcom/android/wifidirect/test/WifiOppShareInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 765
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service cancel batch for share "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppBatch;->cancelBatch()V

    .line 768
    :cond_0
    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppBatch;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 769
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service remove batch  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v3, "wifiDirect_Service"

    const-string v4, "deleteShare befoere removeBatch"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-direct {p0, v0}, Lcom/android/wifidirect/test/WifiOppService;->removeBatch(Lcom/android/wifidirect/test/WifiOppBatch;)V

    .line 774
    .end local v0           #batch:Lcom/android/wifidirect/test/WifiOppBatch;
    :cond_1
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 775
    return-void
.end method

.method private findBatchWithTimeStamp(J)I
    .locals 3
    .parameter "timestamp"

    .prologue
    .line 805
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 806
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifidirect/test/WifiOppBatch;

    iget-wide v1, v1, Lcom/android/wifidirect/test/WifiOppBatch;->mTimestamp:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 810
    .end local v0           #i:I
    :goto_1
    return v0

    .line 805
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 810
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private insertShare(Landroid/database/Cursor;I)V
    .locals 24
    .parameter "cursor"
    .parameter "arrayPos"

    .prologue
    .line 518
    new-instance v2, Lcom/android/wifidirect/test/WifiOppShareInfo;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hint"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mimetype"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "direction"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "destination"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "visibility"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v11, "confirm"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "status"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v13, "total_bytes"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-string v15, "current_bytes"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const-string v17, "timestamp"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    const-string v19, "scanned"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    :goto_0
    invoke-direct/range {v2 .. v19}, Lcom/android/wifidirect/test/WifiOppShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIJJJZ)V

    .line 535
    .local v2, info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    const-string v3, "wifiDirect_Service"

    const-string v4, "Service adding new entry"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID      : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v4, "wifiDirect_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URI     : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mUri:Ljava/lang/String;

    if-eqz v3, :cond_5

    const-string v3, "yes"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URI     : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HINT    : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mHint:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FILENAME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MIMETYPE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRECTION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DESTINAT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VISIBILI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mVisibility:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONFIRM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mConfirm:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATUS  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TOTAL   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mTotalBytes:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CURRENT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mCurrentBytes:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TIMESTAMP : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mTimestamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCANNED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMediaScanned:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mShares:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 556
    invoke-virtual {v2}, Lcom/android/wifidirect/test/WifiOppShareInfo;->isObsolete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 557
    iget v3, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    const/16 v4, 0x1eb

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    .line 569
    :cond_0
    invoke-virtual {v2}, Lcom/android/wifidirect/test/WifiOppShareInfo;->isReadyToStart()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 570
    iget v3, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    if-nez v3, :cond_1

    .line 574
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifidirect/test/WifiOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v22

    .line 586
    .local v22, i:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 592
    .end local v22           #i:Ljava/io/InputStream;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8

    .line 593
    new-instance v23, Lcom/android/wifidirect/test/WifiOppBatch;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/wifidirect/test/WifiOppBatch;-><init>(Landroid/content/Context;Lcom/android/wifidirect/test/WifiOppShareInfo;)V

    .line 594
    .local v23, newBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mBatchId:I

    move-object/from16 v0, v23

    iput v3, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    .line 595
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mBatchId:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mBatchId:I

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    iget v3, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    if-nez v3, :cond_6

    .line 598
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<==>Service create new Batch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for OUTBOUND info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v3, Lcom/android/wifidirect/test/WifiOppTransfer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/wifidirect/test/WifiOppService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v3, v0, v4, v1}, Lcom/android/wifidirect/test/WifiOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/wifidirect/test/WifiOppBatch;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    .line 610
    :cond_2
    :goto_2
    iget v3, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    if-eqz v3, :cond_7

    .line 611
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<==>Service start transfer new Batch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    invoke-virtual {v3}, Lcom/android/wifidirect/test/WifiOppTransfer;->start()V

    .line 650
    .end local v23           #newBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    :cond_3
    :goto_3
    return-void

    .line 518
    .end local v2           #info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 537
    .restart local v2       #info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    :cond_5
    const-string v3, "no"

    goto/16 :goto_1

    .line 575
    :catch_0
    move-exception v20

    .line 576
    .local v20, e:Ljava/io/FileNotFoundException;
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t open file for OUTBOUND info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget v3, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    const/16 v4, 0x190

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    goto :goto_3

    .line 579
    .end local v20           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v20

    .line 580
    .local v20, e:Ljava/lang/SecurityException;
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for OUTBOUND info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget v3, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    const/16 v4, 0x190

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/wifidirect/test/Constants;->wifiupdateShareStatus(Landroid/content/Context;II)V

    goto :goto_3

    .line 587
    .end local v20           #e:Ljava/lang/SecurityException;
    .restart local v22       #i:Ljava/io/InputStream;
    :catch_2
    move-exception v21

    .line 588
    .local v21, ex:Ljava/io/IOException;
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error when close file for OUTBOUND info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 602
    .end local v21           #ex:Ljava/io/IOException;
    .end local v22           #i:Ljava/io/InputStream;
    .restart local v23       #newBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    :cond_6
    iget v3, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 603
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<==>Service create new Batch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for INBOUND info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v3, Lcom/android/wifidirect/test/WifiOppTransfer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/wifidirect/test/WifiOppService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/wifidirect/test/WifiOppService;->mServerSession:Lcom/android/wifidirect/test/WifiOppObexServerSession;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v3, v0, v4, v1, v5}, Lcom/android/wifidirect/test/WifiOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/wifidirect/test/WifiOppBatch;Lcom/android/wifidirect/test/WifiOppObexSession;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mServerTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    goto/16 :goto_2

    .line 614
    :cond_7
    iget v3, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mServerTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    if-eqz v3, :cond_3

    .line 616
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<==>Service start server transfer new Batch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mServerTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    invoke-virtual {v3}, Lcom/android/wifidirect/test/WifiOppTransfer;->start()V

    goto/16 :goto_3

    .line 623
    .end local v23           #newBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    :cond_8
    iget-wide v3, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mTimestamp:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/wifidirect/test/WifiOppService;->findBatchWithTimeStamp(J)I

    move-result v22

    .line 624
    .local v22, i:I
    const/4 v3, -0x1

    move/from16 v0, v22

    if-eq v0, v3, :cond_9

    .line 625
    const-string v4, "wifiDirect_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service add info "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to existing batch "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wifidirect/test/WifiOppBatch;

    iget v3, v3, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wifidirect/test/WifiOppBatch;

    invoke-virtual {v3, v2}, Lcom/android/wifidirect/test/WifiOppBatch;->addShare(Lcom/android/wifidirect/test/WifiOppShareInfo;)V

    goto/16 :goto_3

    .line 630
    :cond_9
    new-instance v23, Lcom/android/wifidirect/test/WifiOppBatch;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/wifidirect/test/WifiOppBatch;-><init>(Landroid/content/Context;Lcom/android/wifidirect/test/WifiOppShareInfo;)V

    .line 631
    .restart local v23       #newBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mBatchId:I

    move-object/from16 v0, v23

    iput v3, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    .line 632
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mBatchId:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mBatchId:I

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    const-string v3, "wifiDirect_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service add new Batch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private needAction(I)Z
    .locals 2
    .parameter "arrayPos"

    .prologue
    .line 852
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 853
    .local v0, info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    iget v1, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/wifidirect/test/WifiShare;->isStatusCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    const/4 v1, 0x0

    .line 856
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private removeBatch(Lcom/android/wifidirect/test/WifiOppBatch;)V
    .locals 6
    .parameter "batch"

    .prologue
    const/4 v5, 0x1

    .line 814
    const-string v2, "wifiDirect_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove batch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 817
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 818
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 820
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifidirect/test/WifiOppBatch;

    .line 821
    .local v1, nextBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    iget v2, v1, Lcom/android/wifidirect/test/WifiOppBatch;->mStatus:I

    if-ne v2, v5, :cond_1

    .line 849
    .end local v0           #i:I
    .end local v1           #nextBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    :cond_0
    :goto_1
    return-void

    .line 825
    .restart local v0       #i:I
    .restart local v1       #nextBatch:Lcom/android/wifidirect/test/WifiOppBatch;
    :cond_1
    iget v2, v1, Lcom/android/wifidirect/test/WifiOppBatch;->mDirection:I

    if-nez v2, :cond_2

    .line 826
    const-string v2, "wifiDirect_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start pending outbound batch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    new-instance v2, Lcom/android/wifidirect/test/WifiOppTransfer;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppService;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/wifidirect/test/WifiOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/wifidirect/test/WifiOppBatch;)V

    iput-object v2, p0, Lcom/android/wifidirect/test/WifiOppService;->mTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    .line 829
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService;->mTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    invoke-virtual {v2}, Lcom/android/wifidirect/test/WifiOppTransfer;->start()V

    goto :goto_1

    .line 832
    :cond_2
    iget v2, v1, Lcom/android/wifidirect/test/WifiOppBatch;->mDirection:I

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService;->mServerSession:Lcom/android/wifidirect/test/WifiOppObexServerSession;

    if-eqz v2, :cond_3

    .line 836
    const-string v2, "wifiDirect_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start pending inbound batch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v2, Lcom/android/wifidirect/test/WifiOppTransfer;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppService;->mServerSession:Lcom/android/wifidirect/test/WifiOppObexServerSession;

    invoke-direct {v2, p0, v3, v1, v4}, Lcom/android/wifidirect/test/WifiOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/wifidirect/test/WifiOppBatch;Lcom/android/wifidirect/test/WifiOppObexSession;)V

    iput-object v2, p0, Lcom/android/wifidirect/test/WifiOppService;->mServerTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    .line 839
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService;->mServerTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    invoke-virtual {v2}, Lcom/android/wifidirect/test/WifiOppTransfer;->start()V

    .line 840
    invoke-virtual {v1}, Lcom/android/wifidirect/test/WifiOppBatch;->getPendingShare()Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mConfirm:I

    if-ne v2, v5, :cond_0

    .line 842
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService;->mServerTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    invoke-virtual {v2}, Lcom/android/wifidirect/test/WifiOppTransfer;->setConfirmed()V

    goto :goto_1

    .line 818
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private scanFile(Landroid/database/Cursor;I)Z
    .locals 5
    .parameter "cursor"
    .parameter "arrayPos"

    .prologue
    const/4 v1, 0x1

    .line 865
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 866
    .local v0, info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    monitor-enter p0

    .line 867
    :try_start_0
    const-string v2, "wifiDirect_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scanning file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-boolean v2, p0, Lcom/android/wifidirect/test/WifiOppService;->mMediaScanInProgress:Z

    if-nez v2, :cond_0

    .line 869
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/wifidirect/test/WifiOppService;->mMediaScanInProgress:Z

    .line 870
    new-instance v2, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;-><init>(Landroid/content/Context;Lcom/android/wifidirect/test/WifiOppShareInfo;Landroid/os/Handler;)V

    .line 871
    monitor-exit p0

    .line 873
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 875
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldScanFile(I)Z
    .locals 3
    .parameter "arrayPos"

    .prologue
    const/4 v1, 0x1

    .line 879
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 880
    .local v0, info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    iget v2, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/wifidirect/test/WifiShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    if-ne v2, v1, :cond_0

    iget-boolean v2, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMediaScanned:Z

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startListenerDelayed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 179
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mListenStarted:Z

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "wifiDirect_Service"

    const-string v1, "Starting RfcommListener in 3 seconds"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 183
    iput-boolean v4, p0, Lcom/android/wifidirect/test/WifiOppService;->mListenStarted:Z

    .line 186
    :cond_0
    return-void
.end method

.method private startSocketListener()V
    .locals 3

    .prologue
    .line 292
    const-string v0, "wifiDirect_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " startSocketListener,mListenStarted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/wifidirect/test/WifiOppService;->mListenStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mListenStarted:Z

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mSocketListener:Lcom/android/wifidirect/test/WifiOppTcpListener;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/WifiOppTcpListener;->start(Landroid/os/Handler;)Z

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mListenStarted:Z

    .line 298
    :cond_0
    return-void
.end method

.method private stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "old"
    .parameter "cursor"
    .parameter "column"

    .prologue
    const/4 v7, 0x0

    .line 778
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 779
    .local v1, index:I
    if-nez p1, :cond_1

    .line 780
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 801
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 782
    .restart local p1
    :cond_1
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    if-nez v5, :cond_2

    .line 783
    new-instance v5, Landroid/database/CharArrayBuffer;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/android/wifidirect/test/WifiOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    .line 785
    :cond_2
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    invoke-interface {p2, v1, v5}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 786
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    iget v2, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 787
    .local v2, length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v2, v5, :cond_3

    .line 788
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 790
    :cond_3
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-ge v5, v2, :cond_5

    .line 791
    :cond_4
    new-instance v5, Landroid/database/CharArrayBuffer;

    invoke-direct {v5, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/android/wifidirect/test/WifiOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    .line 793
    :cond_5
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    iget-object v4, v5, Landroid/database/CharArrayBuffer;->data:[C

    .line 794
    .local v4, oldArray:[C
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    iget-object v3, v5, Landroid/database/CharArrayBuffer;->data:[C

    .line 795
    .local v3, newArray:[C
    invoke-virtual {p1, v7, v2, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 796
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 797
    aget-char v5, v4, v0

    aget-char v6, v3, v0

    if-eq v5, v6, :cond_6

    .line 798
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, v3, v7, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 796
    .restart local p1
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private trimDatabase()V
    .locals 20

    .prologue
    .line 885
    const-string v8, "visibility=1"

    .line 889
    .local v8, INVISIBLE:Ljava/lang/String;
    const-string v12, "direction=0 AND status>=200 AND visibility=1"

    .line 892
    .local v12, WHERE_INVISIBLE_COMPLETE_OUTBOUND:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifidirect/test/WifiOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "direction=0 AND status>=200 AND visibility=1"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 894
    .local v15, delNum:I
    const-string v2, "wifiDirect_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted complete outbound shares, number =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string v11, "direction=1"

    .line 899
    .local v11, WHERE_INVISIBLE_COMPLETE_INBOUND_FAILED:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifidirect/test/WifiOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "direction=1"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 901
    const-string v2, "wifiDirect_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted complete inbound failed shares, number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-string v9, "direction=1 AND confirm=5"

    .line 907
    .local v9, WHERE_CONFIRMATION_PENDING_INBOUND:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifidirect/test/WifiOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "direction=1 AND confirm=5"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 909
    const-string v2, "wifiDirect_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted unconfirmed incoming shares, number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const-string v10, "direction=1 AND status=200 AND visibility=1"

    .line 919
    .local v10, WHERE_INBOUND_SUCCESS:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifidirect/test/WifiOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "direction=1 AND status=200 AND visibility=1"

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 923
    .local v14, cursor:Landroid/database/Cursor;
    if-nez v14, :cond_0

    .line 940
    :goto_0
    return-void

    .line 927
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 928
    .local v19, recordNum:I
    const/16 v2, 0x3e8

    move/from16 v0, v19

    if-le v0, v2, :cond_1

    .line 929
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x3e8

    move/from16 v18, v0

    .line 931
    .local v18, numToDelete:I
    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 932
    const-string v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 933
    .local v13, columnId:I
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 934
    .local v16, id:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifidirect/test/WifiOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 936
    const-string v2, "wifiDirect_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted old inbound success share: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    .end local v13           #columnId:I
    .end local v16           #id:J
    .end local v18           #numToDelete:I
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private updateFromProvider()V
    .locals 1

    .prologue
    .line 350
    monitor-enter p0

    .line 351
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mPendingUpdate:Z

    .line 352
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mUpdateThread:Lcom/android/wifidirect/test/WifiOppService$UpdateThread;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;-><init>(Lcom/android/wifidirect/test/WifiOppService;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mUpdateThread:Lcom/android/wifidirect/test/WifiOppService$UpdateThread;

    .line 354
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mUpdateThread:Lcom/android/wifidirect/test/WifiOppService$UpdateThread;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->start()V

    .line 356
    :cond_0
    monitor-exit p0

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateShare(Landroid/database/Cursor;IZ)V
    .locals 11
    .parameter "cursor"
    .parameter "arrayPos"
    .parameter "userAccepted"

    .prologue
    .line 653
    const-string v8, "wifiDirect_Service"

    const-string v9, "updateShare"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 655
    .local v3, info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    const-string v8, "status"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 657
    .local v7, statusColumn:I
    const-string v8, "_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    .line 658
    iget-object v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mUri:Ljava/lang/String;

    const-string v9, "uri"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/wifidirect/test/WifiOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mUri:Ljava/lang/String;

    .line 659
    iget-object v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mHint:Ljava/lang/String;

    const-string v9, "hint"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/wifidirect/test/WifiOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mHint:Ljava/lang/String;

    .line 660
    iget-object v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    const-string v9, "_data"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/wifidirect/test/WifiOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    .line 661
    iget-object v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMimetype:Ljava/lang/String;

    const-string v9, "mimetype"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/wifidirect/test/WifiOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 662
    const-string v8, "direction"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDirection:I

    .line 663
    iget-object v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDestination:Ljava/lang/String;

    const-string v9, "destination"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/wifidirect/test/WifiOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mDestination:Ljava/lang/String;

    .line 664
    const-string v8, "visibility"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 666
    .local v6, newVisibility:I
    const/4 v1, 0x0

    .line 667
    .local v1, confirmed:Z
    const-string v8, "confirm"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 669
    .local v4, newConfirm:I
    iget v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mVisibility:I

    if-nez v8, :cond_1

    if-eqz v6, :cond_1

    iget v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    invoke-static {v8}, Lcom/android/wifidirect/test/WifiShare;->isStatusCompleted(I)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x5

    if-ne v4, v8, :cond_1

    .line 672
    :cond_0
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService;->mNotifier:Lcom/android/wifidirect/test/WifiOppNotification;

    iget-object v8, v8, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v9, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 675
    :cond_1
    iput v6, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mVisibility:I

    .line 676
    const-string v8, "wifiDirect_Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateShare: mVisibility="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mVisibility:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; newVisibility="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const-string v8, "wifiDirect_Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateShare: mConfirm="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mConfirm:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; newConfirm="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mConfirm:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    const/4 v8, 0x5

    if-eq v4, v8, :cond_2

    .line 680
    const/4 v1, 0x1

    .line 683
    :cond_2
    const-string v8, "confirm"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mConfirm:I

    .line 685
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 687
    .local v5, newStatus:I
    iget v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    invoke-static {v8}, Lcom/android/wifidirect/test/WifiShare;->isStatusCompleted(I)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v5}, Lcom/android/wifidirect/test/WifiShare;->isStatusCompleted(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 689
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService;->mNotifier:Lcom/android/wifidirect/test/WifiOppNotification;

    iget-object v8, v8, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v9, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 692
    :cond_3
    iput v5, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mStatus:I

    .line 693
    const-string v8, "total_bytes"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mTotalBytes:J

    .line 694
    const-string v8, "current_bytes"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mCurrentBytes:J

    .line 696
    const-string v8, "timestamp"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mTimestamp:J

    .line 697
    const-string v8, "scanned"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMediaScanned:Z

    .line 699
    if-eqz v1, :cond_4

    .line 700
    const-string v8, "wifiDirect_Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Service handle info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " confirmed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-wide v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mTimestamp:J

    invoke-direct {p0, v8, v9}, Lcom/android/wifidirect/test/WifiOppService;->findBatchWithTimeStamp(J)I

    move-result v2

    .line 703
    .local v2, i:I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_4

    .line 704
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifidirect/test/WifiOppBatch;

    .line 705
    .local v0, batch:Lcom/android/wifidirect/test/WifiOppBatch;
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService;->mServerTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppService;->mServerTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    invoke-virtual {v9}, Lcom/android/wifidirect/test/WifiOppTransfer;->getBatchId()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 706
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService;->mServerTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    invoke-virtual {v8}, Lcom/android/wifidirect/test/WifiOppTransfer;->setConfirmed()V

    .line 710
    .end local v0           #batch:Lcom/android/wifidirect/test/WifiOppBatch;
    .end local v2           #i:I
    :cond_4
    iget-wide v8, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mTimestamp:J

    invoke-direct {p0, v8, v9}, Lcom/android/wifidirect/test/WifiOppService;->findBatchWithTimeStamp(J)I

    move-result v2

    .line 711
    .restart local v2       #i:I
    const-string v8, "wifiDirect_Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<==>tsj i= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v8, -0x1

    if-eq v2, v8, :cond_6

    .line 713
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifidirect/test/WifiOppBatch;

    .line 714
    .restart local v0       #batch:Lcom/android/wifidirect/test/WifiOppBatch;
    const-string v8, "wifiDirect_Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<==>tsj batch.mStatus= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget v8, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mStatus:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    iget v8, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mStatus:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    .line 717
    :cond_5
    const-string v8, "wifiDirect_Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Batch "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is finished"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget v8, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mDirection:I

    if-nez v8, :cond_a

    .line 720
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService;->mTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    if-nez v8, :cond_8

    .line 721
    const-string v8, "wifiDirect_Service"

    const-string v9, "Unexpected error! mTransfer is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :goto_1
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/wifidirect/test/WifiOppService;->mTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    .line 742
    :goto_2
    const-string v8, "wifiDirect_Service"

    const-string v9, "updateShare before removeBatch"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-direct {p0, v0}, Lcom/android/wifidirect/test/WifiOppService;->removeBatch(Lcom/android/wifidirect/test/WifiOppBatch;)V

    .line 746
    .end local v0           #batch:Lcom/android/wifidirect/test/WifiOppBatch;
    :cond_6
    return-void

    .line 697
    .end local v2           #i:I
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 722
    .restart local v0       #batch:Lcom/android/wifidirect/test/WifiOppBatch;
    .restart local v2       #i:I
    :cond_8
    iget v8, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppService;->mTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    invoke-virtual {v9}, Lcom/android/wifidirect/test/WifiOppTransfer;->getBatchId()I

    move-result v9

    if-ne v8, v9, :cond_9

    .line 723
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService;->mTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    invoke-virtual {v8}, Lcom/android/wifidirect/test/WifiOppTransfer;->stop()V

    goto :goto_1

    .line 725
    :cond_9
    const-string v8, "wifiDirect_Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected error! batch id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doesn\'t match mTransfer id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/wifidirect/test/WifiOppService;->mTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    invoke-virtual {v10}, Lcom/android/wifidirect/test/WifiOppTransfer;->getBatchId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 730
    :cond_a
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService;->mServerTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    if-nez v8, :cond_b

    .line 731
    const-string v8, "wifiDirect_Service"

    const-string v9, "Unexpected error! mServerTransfer is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :goto_3
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/wifidirect/test/WifiOppService;->mServerTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    goto :goto_2

    .line 732
    :cond_b
    iget v8, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppService;->mServerTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    invoke-virtual {v9}, Lcom/android/wifidirect/test/WifiOppTransfer;->getBatchId()I

    move-result v9

    if-ne v8, v9, :cond_c

    .line 733
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService;->mServerTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    invoke-virtual {v8}, Lcom/android/wifidirect/test/WifiOppTransfer;->stop()V

    goto :goto_3

    .line 735
    :cond_c
    const-string v8, "wifiDirect_Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected error! batch id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/wifidirect/test/WifiOppBatch;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doesn\'t match mServerTransfer id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/wifidirect/test/WifiOppService;->mServerTransfer:Lcom/android/wifidirect/test/WifiOppTransfer;

    invoke-virtual {v10}, Lcom/android/wifidirect/test/WifiOppTransfer;->getBatchId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private visibleNotification(I)Z
    .locals 2
    .parameter "arrayPos"

    .prologue
    .line 860
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 861
    .local v0, info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppShareInfo;->hasCompletionNotification()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Bluetooth OPP Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 118
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 119
    const-string v0, "wifiDirect_Service"

    const-string v1, "<==>Service onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mWifiMgr:Landroid/net/wifi/WifiManager;

    .line 121
    new-instance v0, Lcom/android/wifidirect/test/WifiOppTcpListener;

    invoke-direct {v0}, Lcom/android/wifidirect/test/WifiOppTcpListener;-><init>()V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mSocketListener:Lcom/android/wifidirect/test/WifiOppTcpListener;

    .line 122
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mShares:Ljava/util/ArrayList;

    .line 123
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Lcom/android/wifidirect/test/WifiOppService$WifiShareContentObserver;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/WifiOppService$WifiShareContentObserver;-><init>(Lcom/android/wifidirect/test/WifiOppService;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mObserver:Lcom/android/wifidirect/test/WifiOppService$WifiShareContentObserver;

    .line 125
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService;->mObserver:Lcom/android/wifidirect/test/WifiOppService$WifiShareContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    iput v3, p0, Lcom/android/wifidirect/test/WifiOppService;->mBatchId:I

    .line 127
    new-instance v0, Lcom/android/wifidirect/test/WifiOppNotification;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/WifiOppNotification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mNotifier:Lcom/android/wifidirect/test/WifiOppNotification;

    .line 128
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mNotifier:Lcom/android/wifidirect/test/WifiOppNotification;

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 129
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mNotifier:Lcom/android/wifidirect/test/WifiOppNotification;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppNotification;->updateNotification()V

    .line 130
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mNotifier:Lcom/android/wifidirect/test/WifiOppNotification;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppNotification;->finishNotification()V

    .line 132
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppService;->trimDatabase()V

    .line 137
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mWifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 139
    const-string v0, "wifiDirect_Service"

    const-string v1, "Local BT device is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppService;->updateFromProvider()V

    .line 145
    return-void

    .line 143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 302
    const-string v0, "wifiDirect_Service"

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 304
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mNotifier:Lcom/android/wifidirect/test/WifiOppNotification;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppNotification;->finishNotification()V

    .line 305
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppService;->mObserver:Lcom/android/wifidirect/test/WifiOppService$WifiShareContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 307
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService;->mSocketListener:Lcom/android/wifidirect/test/WifiOppTcpListener;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppTcpListener;->stop()V

    .line 308
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 159
    const-string v2, "wifiDirect_Service"

    const-string v3, "Service onStart"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 163
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 164
    const-string v2, "op"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 165
    .local v1, op:I
    packed-switch v1, :pswitch_data_0

    .line 175
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #op:I
    :cond_0
    :goto_0
    return-void

    .line 167
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #op:I
    :pswitch_0
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppService;->startSocketListener()V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 149
    const-string v1, "wifiDirect_Service"

    const-string v2, "Service onStartCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 151
    .local v0, retCode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppService;->startSocketListener()V

    .line 153
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppService;->updateFromProvider()V

    .line 155
    :cond_0
    return v0
.end method
