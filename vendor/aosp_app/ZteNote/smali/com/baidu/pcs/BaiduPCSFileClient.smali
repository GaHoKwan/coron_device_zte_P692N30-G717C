.class public Lcom/baidu/pcs/BaiduPCSFileClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/pcs/BaiduPCSFileClient$2;
    }
.end annotation


# static fields
.field public static final DEFAUL_THREAD_COUNT:I = 0x3

.field public static final DEFAUL_THREAD_COUNT_MAX:I = 0x3

.field public static final DEFAUL_THREAD_COUNT_MIN:I = 0x0

.field private static volatile DELETE_TASK_TYPE:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType; = null

.field private static volatile DELETE_TIME:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "TaskManager"

.field static fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

.field private static mIdContext:Landroid/content/Context;

.field private static mTaskManager:Lcom/baidu/pcs/BaiduPCSFileClient;


# instance fields
.field private hasAlreadyInited:Z

.field private mDeleteLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->mTaskManager:Lcom/baidu/pcs/BaiduPCSFileClient;

    sput-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->mIdContext:Landroid/content/Context;

    sput-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/pcs/BaiduPCSFileClient;->DELETE_TIME:J

    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->ALL:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    sput-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->DELETE_TASK_TYPE:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileClient;->hasAlreadyInited:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileClient;->mDeleteLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->mIdContext:Landroid/content/Context;

    return-object v0
.end method

.method private destroyDB()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/pcs/BaiduPCSFileClient$1;

    invoke-direct {v1, p0}, Lcom/baidu/pcs/BaiduPCSFileClient$1;-><init>(Lcom/baidu/pcs/BaiduPCSFileClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static getInstance()Lcom/baidu/pcs/BaiduPCSFileClient;
    .locals 2

    const-class v1, Lcom/baidu/pcs/BaiduPCSFileClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->mTaskManager:Lcom/baidu/pcs/BaiduPCSFileClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileClient;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSFileClient;-><init>()V

    sput-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->mTaskManager:Lcom/baidu/pcs/BaiduPCSFileClient;

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setFileClientClosed(Z)V

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->mTaskManager:Lcom/baidu/pcs/BaiduPCSFileClient;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getInstance(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSFileClient;
    .locals 7

    const-class v6, Lcom/baidu/pcs/BaiduPCSFileClient;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/baidu/pcs/BaiduPCSFileClient;->isDestroryed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TaskManager"

    const-string v1, "\u4f60\u5fc5\u987b\u8c03\u7528BaiduPCSClient.destroyBaiduPCSFileClient()\u6e05\u9664\u4e0a\u6b21\u7684\u4efb\u52a1\u961f\u5217\u4e4b\u540e\u4e4b\u540e\uff0c\u518d\u8fdb\u884c\u672c\u6b21\u521d\u59cb\u5316"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->mTaskManager:Lcom/baidu/pcs/BaiduPCSFileClient;

    if-nez v0, :cond_1

    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileClient;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSFileClient;-><init>()V

    sput-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->mTaskManager:Lcom/baidu/pcs/BaiduPCSFileClient;

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->mTaskManager:Lcom/baidu/pcs/BaiduPCSFileClient;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/pcs/BaiduPCSFileClient;->initialize(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->mTaskManager:Lcom/baidu/pcs/BaiduPCSFileClient;

    monitor-exit v6

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initialProcessor(Landroid/content/Context;II)V
    .locals 3

    const/4 v0, 0x3

    sput-object p1, Lcom/baidu/pcs/BaiduPCSFileClient;->mIdContext:Landroid/content/Context;

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v1

    sget-object v2, Lcom/baidu/pcs/BaiduPCSFileClient;->mIdContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/pcs/BaiduPCSCommon;->setContext(Landroid/content/Context;)V

    if-lez p2, :cond_0

    if-lt p2, v0, :cond_1

    :cond_0
    const-string v1, "TaskManager"

    const-string v2, "thread count must gt:0and le:3 so set default:3"

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v0

    :cond_1
    if-lez p3, :cond_2

    if-lt p3, v0, :cond_3

    :cond_2
    const-string v1, "TaskManager"

    const-string v2, "thread count must gt:0and le:3 so set default:3"

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p3, v0

    :cond_3
    new-instance v0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;

    invoke-direct {v0, p2, p3}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;-><init>(II)V

    sput-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    return-void
.end method

.method private initialTokenAndTaskDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v0}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->stop()V

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v0}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->destroy()V

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v0}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->init()V

    :cond_0
    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSCommon;->setAccessToken(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/pcs/BaiduPCSCommon;->setAccountID(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->getInstance()Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;

    move-result-object v0

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/pcs/BaiduPCSCommon;->getAccountID()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/baidu/pcs/BaiduPCSFileClient;->mIdContext:Landroid/content/Context;

    sget-object v3, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->initTasksFromDB(Ljava/lang/String;Landroid/content/Context;Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;)V

    return-void
.end method

.method private static isDestroryed()Z
    .locals 2

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->mTaskManager:Lcom/baidu/pcs/BaiduPCSFileClient;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSCommon;->getAccountID()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSCommon;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSCommon;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method destroy()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v0}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->stop()V

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v0}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->destroy()V

    sput-object v1, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setFileClientClosed(Z)V

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSCommon;->destroy()V

    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileClient;->hasAlreadyInited:Z

    sput-object v1, Lcom/baidu/pcs/BaiduPCSFileClient;->mTaskManager:Lcom/baidu/pcs/BaiduPCSFileClient;

    :try_start_0
    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->mIdContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->mIdContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFileTaskListFromDb(Ljava/lang/String;Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/pcs/BaiduPCSFileTransferTask;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->getInstance()Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;

    move-result-object v0

    sget-object v1, Lcom/baidu/pcs/BaiduPCSFileClient;->mIdContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1, p2}, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->getFileTaskListFromDb(Ljava/lang/String;Landroid/content/Context;Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMemoryFileTaskList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSFileTransferTask;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    if-nez v0, :cond_0

    const-string v0, "TaskManager"

    const-string v1, "getMemoryFileTaskList fileTaskProcessor ==null . you must call initialize first"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v0}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->getFileTaskList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method initialize(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setFileClientClosed(Z)V

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSFileClient;->initialProcessor(Landroid/content/Context;II)V

    invoke-direct {p0, p4, p5}, Lcom/baidu/pcs/BaiduPCSFileClient;->initialTokenAndTaskDB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initializeTasks(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "TaskManager"

    const-string v1, "initializeTasks \u51fd\u6570\u5df2\u5e9f\u5f03\u6389\uff0c\u5982\u679c\u60f3\u91cd\u65b0\u521d\u59cb\u5316\uff0c\u53ef\u4ee5\u4f7f\u7528initializeAndGetBaiduPCSFileClient\u6765\u91cd\u65b0\u521b\u5efa "

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pauseAllTasks(Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;)V
    .locals 8

    const/16 v7, 0x68

    const/16 v6, 0x64

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    if-nez v0, :cond_0

    const-string v0, "TaskManager"

    const-string v1, "pauseTask fileTaskProcessor ==null . you must call initialize first"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "(state=? OR state=?)"

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient$2;->$SwitchMap$com$baidu$pcs$BaiduPCSActionInfo$PauseTaskType:[I

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    :goto_1
    sget-object v2, Lcom/baidu/pcs/BaiduPCSFileClient;->mIdContext:Landroid/content/Context;

    const/16 v3, 0x69

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "state"

    invoke-static {v2, v3, v4, v1, v0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v0, p1}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->pauseAllTasks(Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;)V

    goto :goto_0

    :pswitch_0
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_1

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (type=? OR type =? )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (type=? OR type =? )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    const/4 v2, 0x3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto/16 :goto_1

    :cond_1
    const-string v0, "TaskManager"

    const-string v1, "pauseTaskType is null"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pauseTask(J)V
    .locals 2

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    if-nez v0, :cond_0

    const-string v0, "TaskManager"

    const-string v1, "pauseTask fileTaskProcessor ==null . you must call initialize first"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v0, p1, p2}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->pauseTask(J)V

    goto :goto_0
.end method

.method public removeAllTask(Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v1, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    if-nez v1, :cond_0

    const-string v0, "TaskManager"

    const-string v1, "removeAllTask fileTaskProcessor ==null . you must call initialize first"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileClient;->mDeleteLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/pcs/BaiduPCSFileClient;->DELETE_TIME:J

    sput-object p1, Lcom/baidu/pcs/BaiduPCSFileClient;->DELETE_TASK_TYPE:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    sget-object v1, Lcom/baidu/pcs/BaiduPCSFileClient$2;->$SwitchMap$com$baidu$pcs$BaiduPCSActionInfo$TaskType:[I

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    :goto_1
    sget-object v2, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v2, p1}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->removeAllTask(Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;)V

    sget-object v2, Lcom/baidu/pcs/BaiduPCSFileClient;->mIdContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->deleteTask(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    move-object v1, v0

    goto :goto_1

    :pswitch_1
    const-string v1, "type=? OR type=?"

    new-array v0, v6, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    goto :goto_1

    :pswitch_2
    const-string v1, "type=? OR type=?"

    new-array v0, v6, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    goto :goto_1

    :cond_1
    const-string v0, "TaskManager"

    const-string v1, "pauseTaskType is null"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeTask(J)V
    .locals 2

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    if-nez v0, :cond_0

    const-string v0, "TaskManager"

    const-string v1, "removeTask fileTaskProcessor ==null . you must call initialize first"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v0, p1, p2}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->removeTask(J)V

    goto :goto_0
.end method

.method public resetAlreadyInitedFlag()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileClient;->hasAlreadyInited:Z

    const-string v0, "TaskManager"

    const-string v1, "resetAlreadyInitedFlag \u51fd\u6570\u5df2\u5e9f\u5f03\u6389\uff0c\u5982\u679c\u60f3\u91cd\u65b0\u521d\u59cb\u5316\uff0c\u53ef\u4ee5\u4f7f\u7528initializeAndGetBaiduPCSFileClient\u6765\u91cd\u65b0\u521b\u5efa "

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resumeAllTask(Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;)V
    .locals 8

    const/16 v7, 0x69

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    if-nez v0, :cond_0

    const-string v0, "TaskManager"

    const-string v1, "startTask fileTaskProcessor ==null . you must call initialize first"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "state=? "

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient$2;->$SwitchMap$com$baidu$pcs$BaiduPCSActionInfo$PauseTaskType:[I

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    :goto_1
    sget-object v2, Lcom/baidu/pcs/BaiduPCSFileClient;->mIdContext:Landroid/content/Context;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "state"

    invoke-static {v2, v3, v4, v1, v0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v0, p1}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->resumeAllTask(Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;)V

    goto :goto_0

    :pswitch_0
    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_1

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (type=? OR type=? )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v6, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    goto :goto_1

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (type=? OR type=? )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v6, [Ljava/lang/String;

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    goto :goto_1

    :cond_1
    const-string v0, "TaskManager"

    const-string v1, "pauseTaskType is null"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected startAllTask()V
    .locals 2

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    if-nez v0, :cond_0

    const-string v0, "TaskManager"

    const-string v1, "startAllTask fileTaskProcessor ==null . you must call initialize first"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v0}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->start()V

    goto :goto_0
.end method

.method public startAllTask(Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;)V
    .locals 8

    const/16 v7, 0x6a

    const/16 v6, 0x69

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    if-nez v0, :cond_0

    const-string v0, "TaskManager"

    const-string v1, "startTask fileTaskProcessor ==null . you must call initialize first"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "(state=? OR state=? )"

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient$2;->$SwitchMap$com$baidu$pcs$BaiduPCSActionInfo$TaskType:[I

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    :goto_1
    sget-object v2, Lcom/baidu/pcs/BaiduPCSFileClient;->mIdContext:Landroid/content/Context;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "state"

    invoke-static {v2, v3, v4, v1, v0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v0, p1}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->startAllTask(Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;)V

    goto :goto_0

    :pswitch_0
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_1

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (type=? OR type=? )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (type=? OR type=? )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    const/4 v2, 0x3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto/16 :goto_1

    :cond_1
    const-string v0, "TaskManager"

    const-string v1, "pauseTaskType is null"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startFileTask(Landroid/content/Context;Lcom/baidu/pcs/BaiduPCSFileTransferTask;)J
    .locals 4

    const-wide/16 v0, -0x1

    sget-object v2, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    if-nez v2, :cond_0

    const-string v2, "TaskManager"

    const-string v3, "startFileTask fileTaskProcessor ==null . you must call initialize first"

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v0

    :cond_0
    if-nez p2, :cond_1

    const-string v2, "TaskManager"

    const-string v3, "startFileTask failed.  task == null"

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string v2, "TaskManager"

    const-string v3, "startFileTask failed.  context == null"

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->createTask(Landroid/content/Context;Lcom/baidu/pcs/BaiduPCSFileTransferTask;)J

    sget-object v2, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v2, p2}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->addTask(Lcom/baidu/pcs/BaiduPCSFileTransferTask;)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v0, v2, v3}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->startTask(J)V

    :goto_1
    move-wide v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmTaskId()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->deleteTask(Landroid/content/Context;J)I

    goto :goto_1
.end method

.method public startFileTaskList(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSFileTransferTask;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    if-nez v0, :cond_1

    const-string v0, "TaskManager"

    const-string v1, "startFileTaskList fileTaskProcessor ==null . you must call initialize first"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string v0, "TaskManager"

    const-string v1, "startFileTask failed.  context == null"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    const-string v0, "TaskManager"

    const-string v1, "startFileTask failed.  tasks == null"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {p1, p2}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->createTaskList(Landroid/content/Context;Ljava/util/List;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    if-eqz v0, :cond_7

    sget-wide v4, Lcom/baidu/pcs/BaiduPCSFileClient;->DELETE_TIME:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_6

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmType()I

    move-result v4

    sget-object v5, Lcom/baidu/pcs/BaiduPCSFileClient;->DELETE_TASK_TYPE:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    sget-object v6, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->ALL:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    if-eq v5, v6, :cond_0

    sget-object v5, Lcom/baidu/pcs/BaiduPCSFileClient;->DELETE_TASK_TYPE:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    sget-object v6, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->DOWNLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    :cond_4
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    sget-object v5, Lcom/baidu/pcs/BaiduPCSFileClient;->DELETE_TASK_TYPE:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    sget-object v6, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->UPLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    if-ne v5, v6, :cond_0

    if-eqz v4, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    :cond_6
    sget-object v4, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v4, v0}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->addTask(Lcom/baidu/pcs/BaiduPCSFileTransferTask;)J

    move-result-wide v4

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v0, v4, v5}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->firstStartTask(J)V

    goto :goto_2

    :cond_7
    const-string v0, "TaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tasks get "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public startFileTaskWithNoCheck(Landroid/content/Context;Lcom/baidu/pcs/BaiduPCSFileTransferTask;)J
    .locals 4

    const-wide/16 v0, -0x1

    sget-object v2, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    if-nez v2, :cond_0

    const-string v2, "TaskManager"

    const-string v3, "startFileTask fileTaskProcessor ==null . you must call initialize first"

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v0

    :cond_0
    if-nez p2, :cond_1

    const-string v2, "TaskManager"

    const-string v3, "startFileTask failed.  task == null"

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string v2, "TaskManager"

    const-string v3, "startFileTask failed.  context == null"

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->createTask(Landroid/content/Context;Lcom/baidu/pcs/BaiduPCSFileTransferTask;)J

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v0, p2}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->addTask(Lcom/baidu/pcs/BaiduPCSFileTransferTask;)J

    move-result-wide v0

    sget-object v2, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v2, v0, v1}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->startTask(J)V

    goto :goto_0
.end method

.method public startTask(J)V
    .locals 2

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    if-nez v0, :cond_0

    const-string v0, "TaskManager"

    const-string v1, "startTask fileTaskProcessor ==null . you must call initialize first"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    invoke-interface {v0, p1, p2}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->startTask(J)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    sget-object v0, Lcom/baidu/pcs/BaiduPCSFileClient;->fileTaskProcessor:Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;

    if-nez v0, :cond_0

    const-string v0, "TaskManager"

    const-string v1, "stop fileTaskProcessor ==null . you must call initialize first"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;->ALL:Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileClient;->pauseAllTasks(Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;)V

    goto :goto_0
.end method
