.class public abstract Lcom/baidu/pcs/BaiduPCSFileTransferTask;
.super Lcom/baidu/pcs/BaiduPCSActionBase;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERNAL:J = 0x7d0L

.field static final EXTRAINFONUM_FILE_NOT_EXIST:I = 0x1

.field static final EXTRAINFONUM_NO:I = 0x0

.field static final EXTRAINFONUM_NO_REMOTE_SPACE:I = 0x2

.field static final EXTRAINFONUM_NO_SDCARD_SPACE:I = 0x3

.field private static final MINIMAL_INTERNAL:J = 0x3e8L

.field public static final STATE_TASK_CANCELLED:I = 0x70

.field public static final STATE_TASK_CREATE:I = 0x6b

.field public static final STATE_TASK_CREATE_FAILED:I = 0x6d

.field public static final STATE_TASK_DONE:I = 0x6e

.field public static final STATE_TASK_PENDING:I = 0x64

.field public static final STATE_TASK_REQUEST:I = 0x65

.field public static final STATE_TASK_REQUEST_FAILED:I = 0x67

.field public static final STATE_TASK_TRANSACTION:I = 0x68

.field public static final STATE_TASK_TRANSACTION_FAILED:I = 0x6a

.field public static final STATE_TASK_TRANSACTION_PAUSE:I = 0x69

.field private static final TAG:Ljava/lang/String; = "TransferTask"

.field public static final TYPE_TASK_DIRECTORY_DOWNLOAD:I = 0x3

.field public static final TYPE_TASK_DIRECTORY_UPLOAD:I = 0x2

.field public static final TYPE_TASK_DOWNLOAD:I = 0x1

.field public static final TYPE_TASK_UPLOAD:I

.field static mFileClientClosed:Z


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentState:I

.field protected mData1:Ljava/lang/String;

.field protected mData2:Ljava/lang/String;

.field protected mData3:Ljava/lang/String;

.field protected mData4:Ljava/lang/String;

.field protected mDate:Ljava/lang/String;

.field protected mDirectoryNamePosition:I

.field protected mExtraInfoNum:I

.field protected mFileName:Ljava/lang/String;

.field private mFileOffset:J

.field protected mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

.field protected mIsCancelledTask:Z

.field protected volatile mIsPause:Z

.field protected mLocalPath:Ljava/lang/String;

.field protected mOffset:J

.field protected mOrignalFileOffset:J

.field protected mOrignalOffset:J

.field protected mPauseLock:Ljava/lang/Object;

.field protected mRemotePath:Ljava/lang/String;

.field mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field protected mRequestLock:Ljava/lang/Object;

.field protected mRootPathIsDir:Z

.field final mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

.field protected mSize:J

.field protected mStateLock:Ljava/lang/Object;

.field protected mSubFileInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mTaskId:J

.field protected mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileClientClosed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    const-wide/16 v5, -0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mContext:Landroid/content/Context;

    iput-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mTaskId:J

    iput v2, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mLocalPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRemotePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mDate:Ljava/lang/String;

    iput-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mSize:J

    iput-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mOffset:J

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mIsPause:Z

    iput-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mOrignalOffset:J

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData1:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData2:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData3:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData4:Ljava/lang/String;

    iput v2, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mExtraInfoNum:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mCurrentState:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mStateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mPauseLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRequestLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mIsCancelledTask:Z

    iput-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mOrignalFileOffset:J

    iput-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileOffset:J

    iput v2, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mDirectoryNamePosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRootPathIsDir:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mSubFileInfoList:Ljava/util/List;

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->initState()V

    invoke-static {p1, p0, p2}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->loadTaskByCursor(Landroid/content/Context;Lcom/baidu/pcs/BaiduPCSFileTransferTask;Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-wide/16 v5, -0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mContext:Landroid/content/Context;

    iput-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mTaskId:J

    iput v2, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mLocalPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRemotePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mDate:Ljava/lang/String;

    iput-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mSize:J

    iput-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mOffset:J

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mIsPause:Z

    iput-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mOrignalOffset:J

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData1:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData2:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData3:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData4:Ljava/lang/String;

    iput v2, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mExtraInfoNum:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mCurrentState:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mStateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mPauseLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRequestLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mIsCancelledTask:Z

    iput-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mOrignalFileOffset:J

    iput-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileOffset:J

    iput v2, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mDirectoryNamePosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRootPathIsDir:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mSubFileInfoList:Ljava/util/List;

    iput-object p2, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mLocalPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRemotePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mLocalPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/pcs/BaiduPCSFileHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->initState()V

    return-void
.end method

.method private abortRequest()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$1;

    invoke-direct {v1, p0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask$1;-><init>(Lcom/baidu/pcs/BaiduPCSFileTransferTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private initState()V
    .locals 0

    return-void
.end method

.method static setFileClientClosed(Z)V
    .locals 0

    sput-boolean p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileClientClosed:Z

    return-void
.end method


# virtual methods
.method protected computerDirectoryNamePosition(Ljava/lang/String;)V
    .locals 2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mDirectoryNamePosition:I

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    iget-wide v0, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mTaskId:J

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mTaskId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected firstStart()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/16 v0, 0x64

    :try_start_0
    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mCurrentState:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mIsPause:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSCommon;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mCurrentState:I

    return v0
.end method

.method public final getData1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData1:Ljava/lang/String;

    return-object v0
.end method

.method public final getData2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData2:Ljava/lang/String;

    return-object v0
.end method

.method public final getData3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData3:Ljava/lang/String;

    return-object v0
.end method

.method public final getData4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData4:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfoNum()I
    .locals 1

    iget v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mExtraInfoNum:I

    return v0
.end method

.method public getFile()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method getFileClientClosed()Z
    .locals 1

    sget-boolean v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileClientClosed:Z

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileOffset:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileTaskListener()Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    return-object v0
.end method

.method protected getSubFileInfoListFromDB(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->getInstance()Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;

    move-result-object v0

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/pcs/BaiduPCSCommon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/pcs/BaiduPCSCommon;->getAccountID()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mTaskId:J

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getFileOffset()J

    move-result-wide v5

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->getSubFileInfoListFromDB(Landroid/content/Context;Ljava/lang/String;JJI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getUploadSameNameFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mUploadSameNameFile:Ljava/lang/String;

    return-object v0
.end method

.method public final getmDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getmLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getmOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mOffset:J

    return-wide v0
.end method

.method public final getmRemotePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRemotePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getmSize()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mSize:J

    return-wide v0
.end method

.method public final getmTaskId()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mTaskId:J

    return-wide v0
.end method

.method public final getmType()I
    .locals 1

    iget v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mType:I

    return v0
.end method

.method isRunningOrWaiting()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lt v1, v0, :cond_0

    const-string v1, "TransferTask"

    const-string v2, "task already waiting,cancel startTask"

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 3

    invoke-static {}, Lcom/baidu/pcs/HttpClientFactory;->makeHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "compatibility"

    invoke-static {v1, v2}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    return-object v0
.end method

.method protected needQuit()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mIsPause:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-le v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyBatchDownloadProgress(JJ)V
    .locals 6

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;->onProgress(Lcom/baidu/pcs/BaiduPCSFileTransferTask;JJ)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "TransferTask"

    const-string v1, "fileTaskListener is null"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method notifyBatchDownloadProgressWithInterval(JJJ)J
    .locals 8

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    invoke-interface {v0}, Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;->progressInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, p1

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const-string v0, "TransferTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -----onProgress------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;->onProgress(Lcom/baidu/pcs/BaiduPCSFileTransferTask;JJ)V

    move-wide p1, v6

    :cond_0
    return-wide p1
.end method

.method notifyProgress(JJ)V
    .locals 6

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mIsPause:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    if-eqz v0, :cond_1

    cmp-long v0, p1, p3

    if-lez v0, :cond_2

    const-string v0, "TransferTask"

    const-string v1, "\u4efb\u52a1\u5f53\u524d\u5b8c\u6210\u5927\u5c0f\u5927\u4e8e\u603b\u5927\u5c0f"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, p3

    :goto_1
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;->onProgress(Lcom/baidu/pcs/BaiduPCSFileTransferTask;JJ)V

    goto :goto_0

    :cond_1
    const-string v0, "TransferTask"

    const-string v1, "fileTaskListener is null"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-wide v2, p1

    goto :goto_1
.end method

.method notifyProgressWithInterval(JJJ)J
    .locals 8

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mIsPause:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-wide p1

    :cond_1
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    invoke-interface {v0}, Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;->progressInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, p1

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const-string v0, "TransferTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -----onProgress------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, p3, p5

    if-lez v0, :cond_2

    const-string v0, "TransferTask"

    const-string v1, "\u4efb\u52a1\u5f53\u524d\u5b8c\u6210\u5927\u5c0f\u5927\u4e8e\u603b\u5927\u5c0f"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, p5

    :goto_1
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    move-object v1, p0

    move-wide v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;->onProgress(Lcom/baidu/pcs/BaiduPCSFileTransferTask;JJ)V

    move-wide p1, v6

    goto :goto_0

    :cond_2
    move-wide v2, p3

    goto :goto_1
.end method

.method notifyStatus(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mIsPause:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    :cond_0
    const-string v1, "TransferTask"

    const-string v2, "user pause"

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;->onStatus(Lcom/baidu/pcs/BaiduPCSFileTransferTask;ILjava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getCurrentState()I

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_1

    const-string v1, "TransferTask"

    const-string v2, "task end"

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    goto :goto_0

    :cond_3
    const-string v0, "TransferTask"

    const-string v1, "fileTaskListener is null"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected pause()V
    .locals 2

    const-string v0, "TransferTask"

    const-string v1, "pause---"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setTaskState(I)V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mIsPause:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->abortRequest()V

    const/4 v0, 0x0

    const-string v1, "task paused/deleted by user"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->notifyStatus(ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected pauseWithNoRequestAbort()V
    .locals 2

    const-string v0, "TransferTask"

    const-string v1, "pauseWithNoRequestAbort---"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setTaskState(I)V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mIsPause:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected pauseWithoutUpdateDB()V
    .locals 2

    const-string v0, "TransferTask"

    const-string v1, "pause---"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setTaskStateWithoutUpdateDB(I)V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mIsPause:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->abortRequest()V

    const/4 v0, 0x0

    const-string v1, "task paused/deleted by user"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->notifyStatus(ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected remove()V
    .locals 0

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->pause()V

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->removeTask()V

    return-void
.end method

.method protected removeTask()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mTaskId:J

    invoke-static {v0, v1, v2}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->deleteTask(Landroid/content/Context;J)I

    return-void
.end method

.method protected removeWithoutUpdateDB()V
    .locals 0

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->pauseWithoutUpdateDB()V

    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/HttpClient;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    .locals 5

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRequestLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    invoke-direct {v2}, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;-><init>()V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    invoke-static {}, Lcom/baidu/pcs/HttpClientFactory;->makeHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "compatibility"

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-nez v1, :cond_1

    sget v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->Max_Retries:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->needQuit()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRequestLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    invoke-interface {p2, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    iget-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->needQuit()Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    :try_start_4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    goto :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public bridge synthetic setAccessToken(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSActionBase;->setAccessToken(Ljava/lang/String;)V

    return-void
.end method

.method protected setCurrentFileOffset(JLjava/lang/String;)V
    .locals 4

    iput-wide p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileOffset:J

    sget-boolean v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileClientClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mTaskId:J

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p3}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected setCurrentFileOffsetAndResetMD5(JLjava/lang/String;)V
    .locals 4

    iput-wide p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileOffset:J

    sget-boolean v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileClientClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mTaskId:J

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p3}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTaskAndResetMD5(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected setCurrentOffset(J)V
    .locals 3

    iput-wide p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mOffset:J

    sget-boolean v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileClientClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mTaskId:J

    invoke-static {v0, v1, v2, p1, p2}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTaskOffset(Landroid/content/Context;JJ)I

    :cond_0
    return-void
.end method

.method public final setCurrentState(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mCurrentState:I

    return-void
.end method

.method public final setData1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData1:Ljava/lang/String;

    return-void
.end method

.method public final setData2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData2:Ljava/lang/String;

    return-void
.end method

.method public final setData3(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData3:Ljava/lang/String;

    return-void
.end method

.method public final setData4(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData4:Ljava/lang/String;

    return-void
.end method

.method public setExtraInfoNum(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mExtraInfoNum:I

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public final setFileOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileOffset:J

    return-void
.end method

.method protected setFileSize(J)V
    .locals 3

    iput-wide p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mSize:J

    sget-boolean v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileClientClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mTaskId:J

    invoke-static {v0, v1, v2, p1, p2}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTaskSize(Landroid/content/Context;JJ)I

    :cond_0
    return-void
.end method

.method protected setFileSize(Ljava/lang/String;JJ)V
    .locals 6

    sget-boolean v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileClientClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTaskSize(Landroid/content/Context;Ljava/lang/String;JJ)I

    :cond_0
    return-void
.end method

.method public final setFileTaskListener(Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    return-void
.end method

.method protected setOffset(JJJJ)V
    .locals 9

    iput-wide p3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mOffset:J

    sget-boolean v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileClientClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mContext:Landroid/content/Context;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTaskOffset(Landroid/content/Context;JJJJ)J

    :cond_0
    return-void
.end method

.method protected setTaskState(I)V
    .locals 5

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mCurrentState:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileClientClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mTaskId:J

    iget v3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mCurrentState:I

    iget v4, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mExtraInfoNum:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTaskState(Landroid/content/Context;JII)I

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected setTaskState(Ljava/lang/String;JI)V
    .locals 1

    sget-boolean v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileClientClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTaskState(Landroid/content/Context;Ljava/lang/String;JI)I

    :cond_0
    return-void
.end method

.method protected setTaskStateWithoutUpdateDB(I)V
    .locals 2

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mCurrentState:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setmDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mDate:Ljava/lang/String;

    return-void
.end method

.method public final setmLocalPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mLocalPath:Ljava/lang/String;

    return-void
.end method

.method public final setmOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mOffset:J

    return-void
.end method

.method public final setmRemotePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRemotePath:Ljava/lang/String;

    return-void
.end method

.method public final setmSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mSize:J

    return-void
.end method

.method public final setmTaskId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mTaskId:J

    return-void
.end method

.method public final setmType(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mType:I

    return-void
.end method

.method protected start()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setTaskState(I)V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mIsPause:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected startWithoutUpdateDB()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setTaskStateWithoutUpdateDB(I)V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mIsPause:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public taskNeedRun()Z
    .locals 2

    iget v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mCurrentState:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public taskRunning()Z
    .locals 2

    iget v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mCurrentState:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------- taskid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mTaskId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " filename:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mOffset:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " data1\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " data2\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mData2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
