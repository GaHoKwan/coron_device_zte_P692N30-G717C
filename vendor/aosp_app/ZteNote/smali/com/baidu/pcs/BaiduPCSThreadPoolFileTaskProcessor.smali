.class public Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadPoolFileTaskProcessor"

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mDownloadThreadCount:I

.field private final mIdToFileTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/baidu/pcs/BaiduPCSFileTransferTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSFileTransferTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskListLock:Ljava/lang/Object;

.field private mUploadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mUploadThreadCount:I

.field private sDownloadWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private sUploadWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor$1;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor$1;-><init>()V

    sput-object v0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mUploadThreadCount:I

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mDownloadThreadCount:I

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mUploadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->sDownloadWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->sUploadWorkQueue:Ljava/util/concurrent/BlockingQueue;

    iput p1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mUploadThreadCount:I

    iput p2, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mDownloadThreadCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mIdToFileTaskMap:Ljava/util/Map;

    return-void
.end method

.method private matchPauseTaskType(Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;Lcom/baidu/pcs/BaiduPCSFileTransferTask;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmType()I

    move-result v1

    sget-object v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;->DOWNLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    if-ne p1, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;->UPLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    if-ne p1, v2, :cond_2

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    if-eq v2, v1, :cond_0

    :cond_2
    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;->ALL:Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchTaskType(Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;Lcom/baidu/pcs/BaiduPCSFileTransferTask;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmType()I

    move-result v1

    sget-object v2, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->DOWNLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    if-ne p1, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->UPLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    if-ne p1, v2, :cond_2

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    if-eq v2, v1, :cond_0

    :cond_2
    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->ALL:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTask(Lcom/baidu/pcs/BaiduPCSFileTransferTask;)J
    .locals 6

    const-wide/16 v2, -0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmTaskId()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->isTaskExistInProcessor(Lcom/baidu/pcs/BaiduPCSFileTransferTask;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const v0, 0x985c

    const-string v1, "file with same name already exist"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->notifyStatus(ILjava/lang/String;)V

    :goto_0
    return-wide v2

    :cond_1
    const v0, 0x985d

    const-string v1, "file with same name already exist"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->notifyStatus(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mIdToFileTaskMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mIdToFileTaskMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    monitor-exit v2

    :cond_3
    :goto_3
    move-wide v2, v0

    goto :goto_0

    :cond_4
    const-string v3, "ThreadPoolFileTaskProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task has exist in mTaskList, taskid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    const-string v3, "ThreadPoolFileTaskProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task has exist in mIdToFileTaskMap, taskid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    move-wide v0, v2

    goto :goto_3
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mIdToFileTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_1
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mUploadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mUploadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mUploadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_2
    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public firstStartTask(J)V
    .locals 3

    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "firststartTask--------start----"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->getTask(J)Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->firstStart()V

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const/4 v2, 0x3

    if-ne v2, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "firststartTask--------end----"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    :cond_3
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mUploadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "task null"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFileTaskList()Ljava/util/List;
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

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskList:Ljava/util/List;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getTask(J)Lcom/baidu/pcs/BaiduPCSFileTransferTask;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mIdToFileTaskMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    monitor-exit v1

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 9

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->sDownloadWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->sUploadWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mDownloadThreadCount:I

    iget v2, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mDownloadThreadCount:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->sDownloadWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mUploadThreadCount:I

    iget v2, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mUploadThreadCount:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->sUploadWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mUploadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor$2;

    invoke-direct {v1, p0}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor$2;-><init>(Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;)V

    iget v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mUploadThreadCount:I

    mul-int/lit8 v2, v0, 0x2

    move v0, v8

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mUploadThreadCount:I

    mul-int/lit8 v2, v0, 0x2

    move v0, v8

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mUploadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public isTaskExistInProcessor(Lcom/baidu/pcs/BaiduPCSFileTransferTask;)Z
    .locals 9

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmType()I

    move-result v3

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmRemotePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getCurrentState()I

    move-result v7

    const/16 v8, 0x6e

    if-eq v7, v8, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmRemotePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ThreadPoolFileTaskProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has already exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    move v0, v1

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ThreadPoolFileTaskProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has already exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_1

    :pswitch_2
    :try_start_1
    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmLocalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmRemotePath()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x2f

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x2f

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ThreadPoolFileTaskProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has already exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1

    :pswitch_3
    :try_start_3
    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmRemotePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmLocalPath()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x2f

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x2f

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ThreadPoolFileTaskProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has already exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    monitor-exit v2

    move v0, v1

    goto/16 :goto_1

    :cond_1
    monitor-exit v2

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public pauseAllTasks(Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;)V
    .locals 5

    const-string v0, "ThreadPoolFileTaskProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseAllTasks--------begin----pauseTaskType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    if-nez v0, :cond_3

    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v3, "task null"

    invoke-static {v0, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->matchPauseTaskType(Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;Lcom/baidu/pcs/BaiduPCSFileTransferTask;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getCurrentState()I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_4

    const/16 v4, 0x68

    if-ne v3, v4, :cond_2

    :cond_4
    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmTaskId()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->pauseTaskWithoutUpdateDB(J)V

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "pauseAllTasks----end--------"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pauseTask(J)V
    .locals 3

    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "pauseTask--------begin----"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->getTask(J)Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x6e

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getCurrentState()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "task is Done or Failed, cancel pause action "

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "pauseTask----end--------"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->pause()V

    goto :goto_0

    :cond_1
    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "task null"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pauseTaskWithoutUpdateDB(J)V
    .locals 2

    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "pauseTask--------begin----"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->getTask(J)Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->pauseWithoutUpdateDB()V

    :goto_0
    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "pauseTask----end--------"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "task null"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeAllTask(Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;)V
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    if-nez v0, :cond_2

    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v4, "task null"

    invoke-static {v0, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->matchTaskType(Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;Lcom/baidu/pcs/BaiduPCSFileTransferTask;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->removeWithoutUpdateDB()V

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mIdToFileTaskMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmTaskId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "pauseAllTasks----end--------"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeTask(J)V
    .locals 3

    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "removeTask--------start----"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->getTask(J)Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->remove()V

    :goto_0
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mIdToFileTaskMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "removeTask--------end----"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v1, "ThreadPoolFileTaskProcessor"

    const-string v2, "task null"

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resumeAllTask(Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;)V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    if-nez v0, :cond_3

    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v3, "task null"

    invoke-static {v0, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->matchPauseTaskType(Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;Lcom/baidu/pcs/BaiduPCSFileTransferTask;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getCurrentState()I

    move-result v3

    const/16 v4, 0x69

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmTaskId()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->startTaskWithoutUpdateDB(J)V

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "pauseAllTasks----end--------"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 5

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->taskNeedRun()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmTaskId()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->startTask(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return-void
.end method

.method public startAllTask(Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;)V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    if-nez v0, :cond_3

    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v3, "task null"

    invoke-static {v0, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->matchTaskType(Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;Lcom/baidu/pcs/BaiduPCSFileTransferTask;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getCurrentState()I

    move-result v3

    const/16 v4, 0x69

    if-eq v3, v4, :cond_4

    const/16 v4, 0x6a

    if-ne v3, v4, :cond_2

    :cond_4
    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmTaskId()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->startTaskWithoutUpdateDB(J)V

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "startAllTasks----end--------"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startTask(J)V
    .locals 3

    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "startTask--------start----"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->getTask(J)Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->start()V

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const/4 v2, 0x3

    if-ne v2, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "startTask--------end----"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    :cond_3
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mUploadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "task null"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startTaskWithoutUpdateDB(J)V
    .locals 3

    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "startTaskWithoutUpdateDB--------start----"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->getTask(J)Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->startWithoutUpdateDB()V

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const/4 v2, 0x3

    if-ne v2, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "startTaskWithoutUpdateDB--------end----"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    :cond_3
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mUploadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "task null"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskListLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->taskRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->pause()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return-void
.end method
