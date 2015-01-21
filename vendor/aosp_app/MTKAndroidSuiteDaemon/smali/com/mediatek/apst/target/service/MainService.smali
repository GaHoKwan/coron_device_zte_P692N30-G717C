.class public Lcom/mediatek/apst/target/service/MainService;
.super Landroid/app/Service;
.source "MainService.java"

# interfaces
.implements Lcom/mediatek/apst/target/event/IBatteryListener;
.implements Lcom/mediatek/apst/target/event/ICalendarEventListener;
.implements Lcom/mediatek/apst/target/event/IContactsListener;
.implements Lcom/mediatek/apst/target/event/IMmsListener;
.implements Lcom/mediatek/apst/target/event/IPackageListener;
.implements Lcom/mediatek/apst/target/event/ISdStateListener;
.implements Lcom/mediatek/apst/target/event/ISimStateListener;
.implements Lcom/mediatek/apst/target/event/ISmsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/apst/target/service/MainService$MainHandler;,
        Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;,
        Lcom/mediatek/apst/target/service/MainService$CommandHandler;,
        Lcom/mediatek/apst/target/service/MainService$CommandSender;,
        Lcom/mediatek/apst/target/service/MainService$Connector;,
        Lcom/mediatek/apst/target/service/MainService$MainCallback;
    }
.end annotation


# static fields
.field private static final MSG_CHECK_TIMEOUT:I = 0x2

.field private static final MSG_CONNECTED:I = 0x1

.field private static final MSG_FORCE_STOP:I = 0x4

.field private static final MSG_SAFE_STOP:I = 0x3

.field private static final RSP_ST_APPEND_BATCH:I = 0x2

.field private static final RSP_ST_SEND_BATCH:I = 0x3

.field private static final RSP_ST_SEND_SINGLE:I = 0x1

.field private static sHasInstance:Ljava/lang/Boolean;


# instance fields
.field private mApplicationProxy:Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;

.field private mBR:Lcom/mediatek/apst/target/receiver/InternalReceiver;

.field private mBookmarkProxy:Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;

.field private mCalendarEventOb:Lcom/mediatek/apst/target/service/CalendarEventObserver;

.field private mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

.field private mCmdHandler:Lcom/mediatek/apst/target/service/MainService$CommandHandler;

.field private mCmdSender:Lcom/mediatek/apst/target/service/MainService$CommandSender;

.field private mComm:Lcom/mediatek/apst/util/communication/common/CommHandler;

.field private mCommandBatch:Lcom/mediatek/apst/util/command/ICommandBatch;

.field private mConnected:Z

.field private mConnector:Lcom/mediatek/apst/target/service/MainService$Connector;

.field private mContactsOb:Lcom/mediatek/apst/target/service/ContactsObserver;

.field private mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

.field private mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

.field private mHasNotifiedStart:Z

.field private mIncomingSmsFinder:Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;

.field private mMainCallback:Lcom/mediatek/apst/util/communication/common/ICallback;

.field private mMediaProxy:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

.field private mMessageOb:Lcom/mediatek/apst/target/service/MessageObserver;

.field private mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

.field private mMsgHandler:Lcom/mediatek/apst/target/service/MainService$MainHandler;

.field private mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;

.field private mPrepareToStop:Z

.field private mResponseState:I

.field private mSmsSender:Lcom/mediatek/apst/target/service/SmsSender;

.field private mSysInfoProxy:Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/service/MainService;->sHasInstance:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x1f4

    const/4 v1, 0x0

    .line 356
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 375
    iput-boolean v1, p0, Lcom/mediatek/apst/target/service/MainService;->mHasNotifiedStart:Z

    .line 376
    iput-boolean v1, p0, Lcom/mediatek/apst/target/service/MainService;->mConnected:Z

    .line 377
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/apst/target/service/MainService;->mResponseState:I

    .line 378
    iput-boolean v1, p0, Lcom/mediatek/apst/target/service/MainService;->mPrepareToStop:Z

    .line 409
    new-instance v0, Lcom/mediatek/apst/target/service/MainService$Connector;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/target/service/MainService$Connector;-><init>(Lcom/mediatek/apst/target/service/MainService;)V

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mConnector:Lcom/mediatek/apst/target/service/MainService$Connector;

    .line 411
    new-instance v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;-><init>(Lcom/mediatek/apst/target/service/MainService;I)V

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCmdHandler:Lcom/mediatek/apst/target/service/MainService$CommandHandler;

    .line 414
    new-instance v0, Lcom/mediatek/apst/target/service/MainService$CommandSender;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/apst/target/service/MainService$CommandSender;-><init>(Lcom/mediatek/apst/target/service/MainService;I)V

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCmdSender:Lcom/mediatek/apst/target/service/MainService$CommandSender;

    .line 416
    new-instance v0, Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;-><init>(Lcom/mediatek/apst/target/service/MainService;)V

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mIncomingSmsFinder:Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;

    .line 418
    invoke-static {}, Lcom/mediatek/apst/target/service/SmsSender;->getInstance()Lcom/mediatek/apst/target/service/SmsSender;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mSmsSender:Lcom/mediatek/apst/target/service/SmsSender;

    .line 3277
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/util/communication/common/Dispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/apst/target/service/MainService;Lcom/mediatek/apst/util/command/ICommandBatch;)Lcom/mediatek/apst/util/command/ICommandBatch;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/mediatek/apst/target/service/MainService;->mCommandBatch:Lcom/mediatek/apst/util/command/ICommandBatch;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/mediatek/apst/target/service/MainService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    iput p1, p0, Lcom/mediatek/apst/target/service/MainService;->mResponseState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mSysInfoProxy:Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/receiver/InternalReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mBR:Lcom/mediatek/apst/target/receiver/InternalReceiver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MulMessageObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/SmsSender;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mSmsSender:Lcom/mediatek/apst/target/service/SmsSender;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMediaProxy:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mBookmarkProxy:Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/apst/target/service/MainService;Lcom/mediatek/apst/util/command/BaseCommand;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/mediatek/apst/target/service/MainService;->enqueueSendCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/apst/target/service/MainService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/mediatek/apst/target/service/MainService;->init()V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MainService$Connector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mConnector:Lcom/mediatek/apst/target/service/MainService$Connector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mApplicationProxy:Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/apst/target/service/MainService;Lcom/mediatek/apst/util/command/BaseCommand;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/mediatek/apst/target/service/MainService;->enqueueHandleCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MainService$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMsgHandler:Lcom/mediatek/apst/target/service/MainService$MainHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/util/communication/common/CommHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mComm:Lcom/mediatek/apst/util/communication/common/CommHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/apst/target/service/MainService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/mediatek/apst/target/service/MainService;->setConnected(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/apst/target/service/MainService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/mediatek/apst/target/service/MainService;->isConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/apst/target/service/MainService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/MainService;->mPrepareToStop:Z

    return v0
.end method

.method private declared-synchronized appendBatch(Lcom/mediatek/apst/util/command/BaseCommand;)V
    .locals 3
    .parameter "cmd"

    .prologue
    .line 796
    monitor-enter p0

    if-nez p1, :cond_1

    .line 797
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Command is null!"

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 801
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCommandBatch:Lcom/mediatek/apst/util/command/ICommandBatch;

    if-eqz v0, :cond_0

    .line 802
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeatureID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getToken()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCommandBatch:Lcom/mediatek/apst/util/command/ICommandBatch;

    invoke-interface {v0}, Lcom/mediatek/apst/util/command/ICommandBatch;->getCommands()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private deInit()V
    .locals 2

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/mediatek/apst/target/service/MainService;->unregisterEventListeners()V

    .line 706
    invoke-direct {p0}, Lcom/mediatek/apst/target/service/MainService;->terminateThreads()V

    .line 708
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mComm:Lcom/mediatek/apst/util/communication/common/CommHandler;

    if-eqz v1, :cond_0

    .line 710
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mComm:Lcom/mediatek/apst/util/communication/common/CommHandler;

    invoke-virtual {v1}, Lcom/mediatek/apst/util/communication/common/CommHandler;->closeConnection()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/mediatek/apst/target/service/MainService;->setConnected(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mComm:Lcom/mediatek/apst/util/communication/common/CommHandler;

    .line 716
    :cond_0
    const-string v1, "Socket connection closed..."

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 719
    invoke-direct {p0}, Lcom/mediatek/apst/target/service/MainService;->uninstallCommunicationCallbacks()V

    .line 721
    invoke-direct {p0}, Lcom/mediatek/apst/target/service/MainService;->notifyStop()V

    .line 722
    return-void

    .line 710
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private declared-synchronized enqueueHandleCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z
    .locals 3
    .parameter "cmd"

    .prologue
    const/4 v0, 0x0

    .line 725
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mCmdHandler:Lcom/mediatek/apst/target/service/MainService$CommandHandler;

    if-eqz v1, :cond_0

    .line 726
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCmdHandler:Lcom/mediatek/apst/target/service/MainService$CommandHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->enqueue(Lcom/mediatek/apst/util/command/BaseCommand;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 730
    :goto_0
    monitor-exit p0

    return v0

    .line 728
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Command handler thread is null."

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 725
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized enqueueSendCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z
    .locals 3
    .parameter "cmd"

    .prologue
    const/4 v0, 0x0

    .line 735
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mCmdSender:Lcom/mediatek/apst/target/service/MainService$CommandSender;

    if-eqz v1, :cond_0

    .line 736
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCmdSender:Lcom/mediatek/apst/target/service/MainService$CommandSender;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->enqueue(Lcom/mediatek/apst/util/command/BaseCommand;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 740
    :goto_0
    monitor-exit p0

    return v0

    .line 738
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Command sender thread is null."

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/mediatek/apst/target/service/MainService;->installCommunicationCallbacks()V

    .line 695
    invoke-direct {p0}, Lcom/mediatek/apst/target/service/MainService;->startThreads()V

    .line 697
    invoke-direct {p0}, Lcom/mediatek/apst/target/service/MainService;->registerEventListeners()V

    .line 699
    invoke-direct {p0}, Lcom/mediatek/apst/target/service/MainService;->notifyStart()V

    .line 700
    return-void
.end method

.method private installCommunicationCallbacks()V
    .locals 3

    .prologue
    .line 564
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mMainCallback:Lcom/mediatek/apst/util/communication/common/ICallback;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->installCallback(ILcom/mediatek/apst/util/communication/common/ICallback;)Z

    .line 566
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mMainCallback:Lcom/mediatek/apst/util/communication/common/ICallback;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->installCallback(ILcom/mediatek/apst/util/communication/common/ICallback;)Z

    .line 567
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mMainCallback:Lcom/mediatek/apst/util/communication/common/ICallback;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->installCallback(ILcom/mediatek/apst/util/communication/common/ICallback;)Z

    .line 569
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/16 v1, 0x100

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mMainCallback:Lcom/mediatek/apst/util/communication/common/ICallback;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->installCallback(ILcom/mediatek/apst/util/communication/common/ICallback;)Z

    .line 570
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/16 v1, 0x1000

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mMainCallback:Lcom/mediatek/apst/util/communication/common/ICallback;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->installCallback(ILcom/mediatek/apst/util/communication/common/ICallback;)Z

    .line 572
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/high16 v1, 0x1

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mMainCallback:Lcom/mediatek/apst/util/communication/common/ICallback;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->installCallback(ILcom/mediatek/apst/util/communication/common/ICallback;)Z

    .line 573
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/high16 v1, 0x10

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mMainCallback:Lcom/mediatek/apst/util/communication/common/ICallback;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->installCallback(ILcom/mediatek/apst/util/communication/common/ICallback;)Z

    .line 574
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/high16 v1, 0x100

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mMainCallback:Lcom/mediatek/apst/util/communication/common/ICallback;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->installCallback(ILcom/mediatek/apst/util/communication/common/ICallback;)Z

    .line 576
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/high16 v1, 0x110

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mMainCallback:Lcom/mediatek/apst/util/communication/common/ICallback;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->installCallback(ILcom/mediatek/apst/util/communication/common/ICallback;)Z

    .line 578
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const v1, 0x11000

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mMainCallback:Lcom/mediatek/apst/util/communication/common/ICallback;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->installCallback(ILcom/mediatek/apst/util/communication/common/ICallback;)Z

    .line 580
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/high16 v1, 0x111

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mMainCallback:Lcom/mediatek/apst/util/communication/common/ICallback;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->installCallback(ILcom/mediatek/apst/util/communication/common/ICallback;)Z

    .line 581
    const-string v0, "Communication callbacks installed..."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method private isConnected()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/MainService;->mConnected:Z

    return v0
.end method

.method private notifyStart()V
    .locals 8

    .prologue
    const v7, 0x7f030001

    const/4 v6, 0x0

    .line 519
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 521
    .local v2, text:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Notification;

    const/high16 v3, 0x7f02

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 526
    .local v1, notification:Landroid/app/Notification;
    const/4 v3, 0x2

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 529
    new-instance v3, Landroid/content/Intent;

    const-string v4, ""

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 532
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p0, v3, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 537
    invoke-virtual {p0, v7, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 540
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 542
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/apst/target/service/MainService;->mHasNotifiedStart:Z

    .line 543
    return-void
.end method

.method private notifyStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 549
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/MainService;->mHasNotifiedStart:Z

    if-eqz v0, :cond_0

    .line 550
    iput-boolean v1, p0, Lcom/mediatek/apst/target/service/MainService;->mHasNotifiedStart:Z

    .line 553
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 555
    const v0, 0x7f030003

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 558
    :cond_0
    return-void
.end method

.method private registerEventListeners()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 637
    invoke-static {p0}, Lcom/mediatek/apst/target/event/EventDispatcher;->registerBatteryListener(Lcom/mediatek/apst/target/event/IBatteryListener;)V

    .line 638
    invoke-static {p0}, Lcom/mediatek/apst/target/event/EventDispatcher;->registerPackageListener(Lcom/mediatek/apst/target/event/IPackageListener;)V

    .line 639
    invoke-static {p0}, Lcom/mediatek/apst/target/event/EventDispatcher;->registerSdStateListener(Lcom/mediatek/apst/target/event/ISdStateListener;)V

    .line 640
    invoke-static {p0}, Lcom/mediatek/apst/target/event/EventDispatcher;->registerSimStateListener(Lcom/mediatek/apst/target/event/ISimStateListener;)V

    .line 641
    invoke-static {p0}, Lcom/mediatek/apst/target/event/EventDispatcher;->registerSmsListener(Lcom/mediatek/apst/target/event/ISmsListener;)V

    .line 642
    invoke-static {p0}, Lcom/mediatek/apst/target/event/EventDispatcher;->registerContactsListener(Lcom/mediatek/apst/target/event/IContactsListener;)V

    .line 643
    invoke-static {p0}, Lcom/mediatek/apst/target/event/EventDispatcher;->registerCalendarEventListener(Lcom/mediatek/apst/target/event/ICalendarEventListener;)V

    .line 644
    invoke-static {p0}, Lcom/mediatek/apst/target/event/EventDispatcher;->registerMmsListener(Lcom/mediatek/apst/target/event/IMmsListener;)V

    .line 645
    const-string v0, "MainService registered for listening events..."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mBR:Lcom/mediatek/apst/target/receiver/InternalReceiver;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/receiver/InternalReceiver;->registerAll()V

    .line 648
    const-string v0, "Broadcast receivers registered..."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mMessageOb:Lcom/mediatek/apst/target/service/MessageObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 658
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI_OB:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 660
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMessageOb:Lcom/mediatek/apst/target/service/MessageObserver;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/service/MessageObserver;->start()V

    .line 661
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mCalendarEventOb:Lcom/mediatek/apst/target/service/CalendarEventObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 663
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/service/MulMessageObserver;->start()V

    .line 664
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCalendarEventOb:Lcom/mediatek/apst/target/service/CalendarEventObserver;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/service/CalendarEventObserver;->start()V

    .line 665
    const-string v0, "Content observers registered and started..."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method private setConnected(Z)V
    .locals 0
    .parameter "connected"

    .prologue
    .line 435
    iput-boolean p1, p0, Lcom/mediatek/apst/target/service/MainService;->mConnected:Z

    .line 436
    return-void
.end method

.method private startThreads()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 604
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCmdHandler:Lcom/mediatek/apst/target/service/MainService$CommandHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->setMaxPriority(I)V

    .line 605
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCmdHandler:Lcom/mediatek/apst/target/service/MainService$CommandHandler;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 607
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCmdSender:Lcom/mediatek/apst/target/service/MainService$CommandSender;

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->setMaxPriority(I)V

    .line 608
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCmdSender:Lcom/mediatek/apst/target/service/MainService$CommandSender;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 610
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mIncomingSmsFinder:Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 611
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mSmsSender:Lcom/mediatek/apst/target/service/SmsSender;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/service/SmsSender;->start()V

    .line 612
    return-void
.end method

.method private terminateThreads()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 616
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mIncomingSmsFinder:Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mIncomingSmsFinder:Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/service/NewSmsFinder;->terminate()V

    .line 618
    iput-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mIncomingSmsFinder:Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mSmsSender:Lcom/mediatek/apst/target/service/SmsSender;

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mSmsSender:Lcom/mediatek/apst/target/service/SmsSender;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/service/SmsSender;->terminate()V

    .line 622
    iput-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mSmsSender:Lcom/mediatek/apst/target/service/SmsSender;

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCmdSender:Lcom/mediatek/apst/target/service/MainService$CommandSender;

    if-eqz v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCmdSender:Lcom/mediatek/apst/target/service/MainService$CommandSender;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->terminate()V

    .line 627
    iput-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mCmdSender:Lcom/mediatek/apst/target/service/MainService$CommandSender;

    .line 630
    :cond_2
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCmdHandler:Lcom/mediatek/apst/target/service/MainService$CommandHandler;

    if-eqz v0, :cond_3

    .line 631
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCmdHandler:Lcom/mediatek/apst/target/service/MainService$CommandHandler;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->terminate()V

    .line 632
    iput-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mCmdHandler:Lcom/mediatek/apst/target/service/MainService$CommandHandler;

    .line 634
    :cond_3
    return-void
.end method

.method private uninstallCommunicationCallbacks()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->uninstallCallback(I)Z

    .line 588
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->uninstallCallback(I)Z

    .line 589
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->uninstallCallback(I)Z

    .line 590
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->uninstallCallback(I)Z

    .line 591
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->uninstallCallback(I)Z

    .line 592
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->uninstallCallback(I)Z

    .line 593
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->uninstallCallback(I)Z

    .line 594
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/high16 v1, 0x110

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->uninstallCallback(I)Z

    .line 595
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/high16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->uninstallCallback(I)Z

    .line 596
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const v1, 0x11000

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->uninstallCallback(I)Z

    .line 597
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    const/high16 v1, 0x111

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->uninstallCallback(I)Z

    .line 599
    :cond_0
    const-string v0, "Communication callbacks uninstalled..."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method private unregisterEventListeners()V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMessageOb:Lcom/mediatek/apst/target/service/MessageObserver;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/service/MessageObserver;->stop()V

    .line 676
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mMessageOb:Lcom/mediatek/apst/target/service/MessageObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 677
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/service/MulMessageObserver;->stop()V

    .line 678
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCalendarEventOb:Lcom/mediatek/apst/target/service/CalendarEventObserver;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/service/CalendarEventObserver;->stop()V

    .line 679
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 680
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mCalendarEventOb:Lcom/mediatek/apst/target/service/CalendarEventObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 681
    const-string v0, "Content observers stopped and unregistered..."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mBR:Lcom/mediatek/apst/target/receiver/InternalReceiver;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mBR:Lcom/mediatek/apst/target/receiver/InternalReceiver;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/receiver/InternalReceiver;->unregisterAll()V

    .line 686
    :cond_0
    const-string v0, "Broadcast receivers unregistered..."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 687
    invoke-static {p0}, Lcom/mediatek/apst/target/event/EventDispatcher;->unregisterListener(Lcom/mediatek/apst/target/event/IEventListener;)V

    .line 688
    const-string v0, "MainService unregistered for listening events..."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 689
    return-void
.end method


# virtual methods
.method public onBatteryStateChanged(Lcom/mediatek/apst/target/event/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 810
    new-instance v0, Lcom/mediatek/apst/util/command/sysinfo/NotifyBatteryReq;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/sysinfo/NotifyBatteryReq;-><init>()V

    .line 811
    .local v0, req:Lcom/mediatek/apst/util/command/sysinfo/NotifyBatteryReq;
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-virtual {v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->getToken()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->setToken(I)V

    .line 812
    const-string v1, "level"

    invoke-virtual {p1, v1}, Lcom/mediatek/apst/target/event/Event;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/sysinfo/NotifyBatteryReq;->setBatteryLevel(I)V

    .line 813
    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lcom/mediatek/apst/target/event/Event;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/sysinfo/NotifyBatteryReq;->setBatteryScale(I)V

    .line 815
    invoke-direct {p0, v0}, Lcom/mediatek/apst/target/service/MainService;->enqueueSendCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    .line 816
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 443
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCalendarEventContentChanged(Lcom/mediatek/apst/target/event/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1033
    const-string v1, "by_self"

    invoke-virtual {p1, v1}, Lcom/mediatek/apst/target/event/Event;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1034
    new-instance v0, Lcom/mediatek/apst/util/command/calendar/NotifyCalendarEventChangeReq;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/calendar/NotifyCalendarEventChangeReq;-><init>()V

    .line 1035
    .local v0, req:Lcom/mediatek/apst/util/command/calendar/NotifyCalendarEventChangeReq;
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-virtual {v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->getToken()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->setToken(I)V

    .line 1036
    const-string v1, "calendarEvent"

    invoke-virtual {p1, v1}, Lcom/mediatek/apst/target/event/Event;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/calendar/NotifyCalendarEventChangeReq;->setEvent(Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;)V

    .line 1039
    invoke-direct {p0, v0}, Lcom/mediatek/apst/target/service/MainService;->enqueueSendCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    .line 1041
    .end local v0           #req:Lcom/mediatek/apst/util/command/calendar/NotifyCalendarEventChangeReq;
    :cond_0
    return-void
.end method

.method public onContactsContentChanged(Lcom/mediatek/apst/target/event/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 971
    const-string v1, "by_self"

    invoke-virtual {p1, v1}, Lcom/mediatek/apst/target/event/Event;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 972
    new-instance v0, Lcom/mediatek/apst/util/command/contacts/NotifyContactsContentChangeReq;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/contacts/NotifyContactsContentChangeReq;-><init>()V

    .line 973
    .local v0, req:Lcom/mediatek/apst/util/command/contacts/NotifyContactsContentChangeReq;
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-virtual {v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->getToken()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->setToken(I)V

    .line 975
    invoke-direct {p0, v0}, Lcom/mediatek/apst/target/service/MainService;->enqueueSendCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    .line 977
    .end local v0           #req:Lcom/mediatek/apst/util/command/contacts/NotifyContactsContentChangeReq;
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 448
    sput-object p0, Lcom/mediatek/apst/target/util/Global;->sContext:Landroid/content/Context;

    .line 449
    new-instance v0, Lcom/mediatek/apst/target/receiver/InternalReceiver;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/target/receiver/InternalReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mBR:Lcom/mediatek/apst/target/receiver/InternalReceiver;

    .line 452
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/ProxyManager;->getSystemInfoProxy(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mSysInfoProxy:Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;

    .line 453
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/ProxyManager;->getContactsProxy(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    .line 454
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mContactsOb:Lcom/mediatek/apst/target/service/ContactsObserver;

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->registerSelfChangeObserver(Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;)V

    .line 455
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/ProxyManager;->getMessageProxy(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    .line 456
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mMessageOb:Lcom/mediatek/apst/target/service/MessageObserver;

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->registerSelfChangeObserver(Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;)V

    .line 457
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->registerSelfChangeObserver(Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;)V

    .line 458
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/ProxyManager;->getCalendarProxy(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    .line 460
    new-instance v0, Lcom/mediatek/apst/target/service/CalendarEventObserver;

    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mMsgHandler:Lcom/mediatek/apst/target/service/MainService$MainHandler;

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/service/CalendarEventObserver;-><init>(Landroid/os/Handler;Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;)V

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCalendarEventOb:Lcom/mediatek/apst/target/service/CalendarEventObserver;

    .line 462
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mCalendarEventOb:Lcom/mediatek/apst/target/service/CalendarEventObserver;

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->registerSelfChangeObserver(Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;)V

    .line 463
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/ProxyManager;->getApplicationProxy(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mApplicationProxy:Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;

    .line 464
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/ProxyManager;->getMediaProxy(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMediaProxy:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    .line 465
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/ProxyManager;->getBookmarkProxy(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mBookmarkProxy:Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;

    .line 467
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/apst/util/communication/comm/CommFactory;->createCommHandler(I)Lcom/mediatek/apst/util/communication/common/CommHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mComm:Lcom/mediatek/apst/util/communication/common/CommHandler;

    .line 468
    invoke-static {}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->getInstance()Lcom/mediatek/apst/util/communication/common/Dispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    .line 470
    new-instance v0, Lcom/mediatek/apst/target/service/MainService$MainCallback;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/target/service/MainService$MainCallback;-><init>(Lcom/mediatek/apst/target/service/MainService;)V

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMainCallback:Lcom/mediatek/apst/util/communication/common/ICallback;

    .line 472
    new-instance v0, Lcom/mediatek/apst/target/service/MainService$MainHandler;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/target/service/MainService$MainHandler;-><init>(Lcom/mediatek/apst/target/service/MainService;)V

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMsgHandler:Lcom/mediatek/apst/target/service/MainService$MainHandler;

    .line 474
    new-instance v0, Lcom/mediatek/apst/target/service/ContactsObserver;

    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mMsgHandler:Lcom/mediatek/apst/target/service/MainService$MainHandler;

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/service/ContactsObserver;-><init>(Landroid/os/Handler;Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;)V

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mContactsOb:Lcom/mediatek/apst/target/service/ContactsObserver;

    .line 476
    new-instance v0, Lcom/mediatek/apst/target/service/MessageObserver;

    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mMsgHandler:Lcom/mediatek/apst/target/service/MainService$MainHandler;

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/service/MessageObserver;-><init>(Landroid/os/Handler;Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;)V

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMessageOb:Lcom/mediatek/apst/target/service/MessageObserver;

    .line 477
    new-instance v0, Lcom/mediatek/apst/target/service/MulMessageObserver;

    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mMsgHandler:Lcom/mediatek/apst/target/service/MainService$MainHandler;

    iget-object v2, p0, Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/service/MulMessageObserver;-><init>(Landroid/os/Handler;Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;)V

    iput-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;

    .line 478
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->registerSelfChangeObserver(Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;)V

    .line 479
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 504
    sget-object v1, Lcom/mediatek/apst/target/service/MainService;->sHasInstance:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    const-string v1, "Try to destroy service..."

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 506
    invoke-direct {p0}, Lcom/mediatek/apst/target/service/MainService;->deInit()V

    .line 507
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/mediatek/apst/target/service/MainService;->sHasInstance:Ljava/lang/Boolean;

    .line 508
    const-string v1, "Service Destroyed."

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 511
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/apst/target/ftp/FtpService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    .local v0, intentFtp:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 513
    return-void
.end method

.method public onMmsInserted(Lcom/mediatek/apst/target/event/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 947
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "mms inserted"

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 948
    const-string v1, "by_self"

    invoke-virtual {p1, v1}, Lcom/mediatek/apst/target/event/Event;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 949
    new-instance v0, Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;-><init>()V

    .line 950
    .local v0, req:Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-virtual {v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->getToken()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->setToken(I)V

    .line 951
    const-string v1, "mms"

    invoke-virtual {p1, v1}, Lcom/mediatek/apst/target/event/Event;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/message/Mms;

    check-cast v1, Lcom/mediatek/apst/util/entity/message/Mms;

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;->setNewMessage(Lcom/mediatek/apst/util/entity/message/Message;)V

    .line 953
    invoke-direct {p0, v0}, Lcom/mediatek/apst/target/service/MainService;->enqueueSendCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    .line 955
    .end local v0           #req:Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;
    :cond_0
    return-void
.end method

.method public onMmsReceived(Lcom/mediatek/apst/target/event/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 958
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "mms received"

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    new-instance v0, Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;-><init>()V

    .line 960
    .local v0, req:Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-virtual {v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->getToken()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->setToken(I)V

    .line 961
    const-string v1, "mms"

    invoke-virtual {p1, v1}, Lcom/mediatek/apst/target/event/Event;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/message/Mms;

    check-cast v1, Lcom/mediatek/apst/util/entity/message/Mms;

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;->setNewMessage(Lcom/mediatek/apst/util/entity/message/Message;)V

    .line 962
    invoke-direct {p0, v0}, Lcom/mediatek/apst/target/service/MainService;->enqueueSendCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    .line 963
    return-void
.end method

.method public onMmsSent(Lcom/mediatek/apst/target/event/Event;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 967
    return-void
.end method

.method public onPackageAdded(Lcom/mediatek/apst/target/event/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 981
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lcom/mediatek/apst/target/event/Event;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 982
    .local v0, uid:I
    new-instance v1, Lcom/mediatek/apst/target/service/MainService$2;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/apst/target/service/MainService$2;-><init>(Lcom/mediatek/apst/target/service/MainService;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 999
    return-void
.end method

.method public onPackageDataCleared(Lcom/mediatek/apst/target/event/Event;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1003
    const-string v5, "uid"

    invoke-virtual {p1, v5}, Lcom/mediatek/apst/target/event/Event;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1005
    .local v4, uid:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.android.contacts"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1007
    .local v0, contactsAppUid:I
    if-ne v0, v4, :cond_1

    .line 1008
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "Contacts package data cleared!"

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1010
    new-instance v3, Lcom/mediatek/apst/util/command/contacts/NotifyContactsDataClearedReq;

    invoke-direct {v3}, Lcom/mediatek/apst/util/command/contacts/NotifyContactsDataClearedReq;-><init>()V

    .line 1011
    .local v3, req:Lcom/mediatek/apst/util/command/contacts/NotifyContactsDataClearedReq;
    iget-object v5, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-virtual {v5}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->getToken()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->setToken(I)V

    .line 1013
    invoke-direct {p0, v3}, Lcom/mediatek/apst/target/service/MainService;->enqueueSendCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    .line 1029
    .end local v0           #contactsAppUid:I
    .end local v3           #req:Lcom/mediatek/apst/util/command/contacts/NotifyContactsDataClearedReq;
    :cond_0
    :goto_0
    return-void

    .line 1016
    .restart local v0       #contactsAppUid:I
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.android.mms"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1018
    .local v2, messageAppUid:I
    if-ne v2, v4, :cond_0

    .line 1019
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "Messaging package data cleared! "

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v3, Lcom/mediatek/apst/util/command/message/NotifyMessageDataClearedReq;

    invoke-direct {v3}, Lcom/mediatek/apst/util/command/message/NotifyMessageDataClearedReq;-><init>()V

    .line 1022
    .local v3, req:Lcom/mediatek/apst/util/command/message/NotifyMessageDataClearedReq;
    iget-object v5, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-virtual {v5}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->getToken()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->setToken(I)V

    .line 1024
    invoke-direct {p0, v3}, Lcom/mediatek/apst/target/service/MainService;->enqueueSendCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1026
    .end local v0           #contactsAppUid:I
    .end local v2           #messageAppUid:I
    .end local v3           #req:Lcom/mediatek/apst/util/command/message/NotifyMessageDataClearedReq;
    :catch_0
    move-exception v1

    .line 1027
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x0

    invoke-static {v5, v6, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V
    .locals 1
    .parameter "rspCmd"

    .prologue
    .line 763
    iget v0, p0, Lcom/mediatek/apst/target/service/MainService;->mResponseState:I

    packed-switch v0, :pswitch_data_0

    .line 787
    :goto_0
    return-void

    .line 766
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/apst/target/service/MainService;->enqueueSendCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    goto :goto_0

    .line 772
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/apst/target/service/MainService;->appendBatch(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_0

    .line 778
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/mediatek/apst/target/service/MainService;->appendBatch(Lcom/mediatek/apst/util/command/BaseCommand;)V

    .line 779
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mCommandBatch:Lcom/mediatek/apst/util/command/ICommandBatch;

    check-cast v0, Lcom/mediatek/apst/util/command/BaseCommand;

    invoke-direct {p0, v0}, Lcom/mediatek/apst/target/service/MainService;->enqueueSendCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    .line 781
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/apst/target/service/MainService;->mResponseState:I

    goto :goto_0

    .line 763
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSdStateChanged(Lcom/mediatek/apst/target/event/Event;)V
    .locals 7
    .parameter "event"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 820
    const-string v3, "mounted"

    invoke-virtual {p1, v3}, Lcom/mediatek/apst/target/event/Event;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 821
    .local v0, mounted:Z
    const-string v3, "writeable"

    invoke-virtual {p1, v3}, Lcom/mediatek/apst/target/event/Event;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 823
    .local v2, writeable:Z
    new-instance v1, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;

    invoke-direct {v1}, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;-><init>()V

    .line 824
    .local v1, req:Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;
    iget-object v3, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-virtual {v3}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->getToken()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->setToken(I)V

    .line 825
    if-eqz v0, :cond_0

    .line 826
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->setSdMounted(Z)V

    .line 827
    invoke-virtual {v1, v2}, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->setSdWriteable(Z)V

    .line 828
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getSdPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->setSdCardPath(Ljava/lang/String;)V

    .line 829
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getSdTotalSpace()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->setSdCardTotalSpace(J)V

    .line 830
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getSdAvailableSpace()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->setSdCardAvailableSpace(J)V

    .line 838
    :goto_0
    invoke-direct {p0, v1}, Lcom/mediatek/apst/target/service/MainService;->enqueueSendCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    .line 839
    return-void

    .line 832
    :cond_0
    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->setSdMounted(Z)V

    .line 833
    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->setSdWriteable(Z)V

    .line 834
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->setSdCardPath(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v1, v5, v6}, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->setSdCardTotalSpace(J)V

    .line 836
    invoke-virtual {v1, v5, v6}, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->setSdCardAvailableSpace(J)V

    goto :goto_0
.end method

.method public onSimStateChanged(Lcom/mediatek/apst/target/event/Event;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 844
    new-instance v0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;-><init>()V

    .line 845
    .local v0, req:Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-virtual {v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->getToken()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->setToken(I)V

    .line 846
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mSysInfoProxy:Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;

    invoke-virtual {v1}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSimAccessible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->setSimAccessible(Z)V

    .line 847
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim1Accessible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->setSim1Accessible(Z)V

    .line 848
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim2Accessible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->setSim2Accessible(Z)V

    .line 849
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim3Accessible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->setSim3Accessible(Z)V

    .line 850
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim4Accessible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->setSim4Accessible(Z)V

    .line 852
    invoke-static {v2}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->setSimDetailInfo(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V

    .line 854
    invoke-static {v2}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->setSim1DetailInfo(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V

    .line 856
    invoke-static {v3}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->setSim2DetailInfo(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V

    .line 858
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->setSim3DetailInfo(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V

    .line 860
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->setSim4DetailInfo(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V

    .line 864
    invoke-virtual {v0}, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->getSlotInfoList()Ljava/util/List;

    move-result-object v1

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    invoke-virtual {v0}, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->getSlotInfoList()Ljava/util/List;

    move-result-object v1

    invoke-static {v3}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    const-string v1, "sim_info_flag"

    invoke-virtual {p1, v1}, Lcom/mediatek/apst/target/event/Event;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->setInfoChanged(Z)V

    .line 884
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    invoke-virtual {v1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getAvailableContactsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->setContactsCount(I)V

    .line 885
    invoke-direct {p0, v0}, Lcom/mediatek/apst/target/service/MainService;->enqueueSendCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    .line 887
    return-void
.end method

.method public onSmsInserted(Lcom/mediatek/apst/target/event/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 936
    const-string v1, "by_self"

    invoke-virtual {p1, v1}, Lcom/mediatek/apst/target/event/Event;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 937
    new-instance v0, Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;-><init>()V

    .line 938
    .local v0, req:Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService;->mDispatcher:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-virtual {v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->getToken()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->setToken(I)V

    .line 939
    const-string v1, "sms"

    invoke-virtual {p1, v1}, Lcom/mediatek/apst/target/event/Event;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/message/Sms;

    check-cast v1, Lcom/mediatek/apst/util/entity/message/Sms;

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;->setNewMessage(Lcom/mediatek/apst/util/entity/message/Message;)V

    .line 941
    invoke-direct {p0, v0}, Lcom/mediatek/apst/target/service/MainService;->enqueueSendCommand(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    .line 943
    .end local v0           #req:Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;
    :cond_0
    return-void
.end method

.method public onSmsReceived(Lcom/mediatek/apst/target/event/Event;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 928
    iget-object v6, p0, Lcom/mediatek/apst/target/service/MainService;->mIncomingSmsFinder:Lcom/mediatek/apst/target/service/MainService$IncomingSmsFinder;

    new-instance v0, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;

    const-string v1, "after_time_of"

    invoke-virtual {p1, v1}, Lcom/mediatek/apst/target/event/Event;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "address"

    invoke-virtual {p1, v3}, Lcom/mediatek/apst/target/event/Event;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "body"

    invoke-virtual {p1, v4}, Lcom/mediatek/apst/target/event/Event;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Lcom/mediatek/apst/target/service/NewSmsFinder;->appendTask(Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;)V

    .line 932
    return-void
.end method

.method public onSmsSent(Lcom/mediatek/apst/target/event/Event;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mSmsSender:Lcom/mediatek/apst/target/service/SmsSender;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/service/SmsSender;->allowSendNext()V

    .line 893
    const-string v0, "sms_id"

    invoke-virtual {p1, v0}, Lcom/mediatek/apst/target/event/Event;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 894
    .local v2, smsId:J
    const-string v0, "date"

    invoke-virtual {p1, v0}, Lcom/mediatek/apst/target/event/Event;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 895
    .local v4, date:J
    const-string v0, "sent"

    invoke-virtual {p1, v0}, Lcom/mediatek/apst/target/event/Event;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 896
    .local v6, sent:Z
    new-instance v0, Lcom/mediatek/apst/target/service/MainService$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/apst/target/service/MainService$1;-><init>(Lcom/mediatek/apst/target/service/MainService;JJZ)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 924
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x1

    .line 483
    sget-object v1, Lcom/mediatek/apst/target/service/MainService;->sHasInstance:Ljava/lang/Boolean;

    monitor-enter v1

    .line 484
    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/service/MainService;->sHasInstance:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    const-string v0, "Try to start service..."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 486
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/service/MainService;->sHasInstance:Ljava/lang/Boolean;

    .line 487
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mConnector:Lcom/mediatek/apst/target/service/MainService$Connector;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 489
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MainService;->mMsgHandler:Lcom/mediatek/apst/target/service/MainService$MainHandler;

    const/4 v2, 0x2

    const-wide/16 v3, 0x1194

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 496
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->initFeatureOptionList()V

    .line 499
    return v5

    .line 496
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public safeStop()V
    .locals 1

    .prologue
    .line 750
    const-string v0, "Wait for safe stopping..."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/MainService;->mPrepareToStop:Z

    .line 753
    invoke-direct {p0}, Lcom/mediatek/apst/target/service/MainService;->notifyStop()V

    .line 754
    return-void
.end method
