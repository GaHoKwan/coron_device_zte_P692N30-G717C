.class Lcom/android/providers/media/MediaScannerService$MediaScannerThreadPool;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaScannerThreadPool"
.end annotation


# instance fields
.field private mWaitTaskList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkTaskList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method public constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 687
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$MediaScannerThreadPool;->this$0:Lcom/android/providers/media/MediaScannerService;

    .line 688
    const-wide/16 v3, 0x2

    #getter for: Lcom/android/providers/media/MediaScannerService;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;
    invoke-static {p1}, Lcom/android/providers/media/MediaScannerService;->access$900(Lcom/android/providers/media/MediaScannerService;)Ljava/util/concurrent/TimeUnit;

    move-result-object v5

    #getter for: Lcom/android/providers/media/MediaScannerService;->mWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {p1}, Lcom/android/providers/media/MediaScannerService;->access$1000(Lcom/android/providers/media/MediaScannerService;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v6

    #getter for: Lcom/android/providers/media/MediaScannerService;->mThreadFactory:Ljava/util/concurrent/ThreadFactory;
    invoke-static {p1}, Lcom/android/providers/media/MediaScannerService;->access$1100(Lcom/android/providers/media/MediaScannerService;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 683
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaScannerService$MediaScannerThreadPool;->mWaitTaskList:Ljava/util/Vector;

    .line 685
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaScannerService$MediaScannerThreadPool;->mWorkTaskList:Ljava/util/Vector;

    .line 690
    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/media/MediaScannerService$MediaScannerThreadPool;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService$MediaScannerThreadPool;->mWaitTaskList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/providers/media/MediaScannerService$MediaScannerThreadPool;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService$MediaScannerThreadPool;->mWorkTaskList:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 9
    .parameter "r"
    .parameter "t"

    .prologue
    .line 704
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long v0, v5, v7

    .line 705
    .local v0, complete:J
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v3

    .line 706
    .local v3, total:J
    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 707
    iget-object v5, p0, Lcom/android/providers/media/MediaScannerService$MediaScannerThreadPool;->this$0:Lcom/android/providers/media/MediaScannerService;

    #getter for: Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;
    invoke-static {v5}, Lcom/android/providers/media/MediaScannerService;->access$1200(Lcom/android/providers/media/MediaScannerService;)Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    move-result-object v5

    const/4 v6, 0x2

    long-to-int v7, v3

    const/4 v8, -0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 708
    .local v2, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/providers/media/MediaScannerService$MediaScannerThreadPool;->this$0:Lcom/android/providers/media/MediaScannerService;

    #getter for: Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;
    invoke-static {v5}, Lcom/android/providers/media/MediaScannerService;->access$1200(Lcom/android/providers/media/MediaScannerService;)Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 711
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    iget-object v6, p0, Lcom/android/providers/media/MediaScannerService$MediaScannerThreadPool;->mWorkTaskList:Ljava/util/Vector;

    move-object v5, p1

    check-cast v5, Lcom/android/providers/media/MediaScannerService$ScanTask;

    invoke-virtual {v5}, Lcom/android/providers/media/MediaScannerService$ScanTask;->getScanPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 712
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 713
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "t"
    .parameter "r"

    .prologue
    .line 695
    move-object v1, p2

    check-cast v1, Lcom/android/providers/media/MediaScannerService$ScanTask;

    invoke-virtual {v1}, Lcom/android/providers/media/MediaScannerService$ScanTask;->getScanPath()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, nextScanPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/media/MediaScannerService$MediaScannerThreadPool;->mWaitTaskList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 697
    iget-object v1, p0, Lcom/android/providers/media/MediaScannerService$MediaScannerThreadPool;->mWorkTaskList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 698
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 699
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 718
    iget-object v1, p0, Lcom/android/providers/media/MediaScannerService$MediaScannerThreadPool;->mWaitTaskList:Ljava/util/Vector;

    move-object v0, p1

    check-cast v0, Lcom/android/providers/media/MediaScannerService$ScanTask;

    invoke-virtual {v0}, Lcom/android/providers/media/MediaScannerService$ScanTask;->getScanPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 719
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 720
    return-void
.end method

.method protected terminated()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService$MediaScannerThreadPool;->this$0:Lcom/android/providers/media/MediaScannerService;

    #getter for: Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;
    invoke-static {v0}, Lcom/android/providers/media/MediaScannerService;->access$1200(Lcom/android/providers/media/MediaScannerService;)Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 725
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V

    .line 726
    return-void
.end method
