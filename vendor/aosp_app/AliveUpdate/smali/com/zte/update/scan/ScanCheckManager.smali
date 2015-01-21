.class public Lcom/zte/update/scan/ScanCheckManager;
.super Ljava/lang/Object;
.source "ScanCheckManager.java"


# static fields
.field private static instance:Lcom/zte/update/scan/ScanCheckManager;


# instance fields
.field private executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private scanTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/zte/update/scan/ScanCheckManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/zte/update/scan/ScanCheckManager;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/zte/update/scan/ScanCheckManager;->instance:Lcom/zte/update/scan/ScanCheckManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/zte/update/scan/ScanCheckManager;

    invoke-direct {v0}, Lcom/zte/update/scan/ScanCheckManager;-><init>()V

    sput-object v0, Lcom/zte/update/scan/ScanCheckManager;->instance:Lcom/zte/update/scan/ScanCheckManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/zte/update/scan/ScanCheckManager;->instance:Lcom/zte/update/scan/ScanCheckManager;

    return-object v0
.end method


# virtual methods
.method public initScanToRequestStorage()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/update/scan/ScanCheckManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/zte/update/scan/task/ScanRequestInfoTask;

    invoke-direct {v1}, Lcom/zte/update/scan/task/ScanRequestInfoTask;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/scan/ScanCheckManager;->scanTask:Ljava/util/concurrent/Future;

    .line 38
    return-void
.end method

.method public isCheckEnd()Z
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/zte/update/scan/ScanCheckManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    .line 84
    .local v0, num:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check ative task count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startCheckRequestTask()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "Enter to startCheckRequestTask"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/zte/update/ui/DownloadNotification;->getInstance()Lcom/zte/update/ui/DownloadNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/update/ui/DownloadNotification;->clearCompelect()V

    .line 44
    invoke-virtual {p0}, Lcom/zte/update/scan/ScanCheckManager;->initScanToRequestStorage()V

    .line 45
    iget-object v0, p0, Lcom/zte/update/scan/ScanCheckManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/zte/update/scan/task/CheckUpdateTask;

    invoke-direct {v1}, Lcom/zte/update/scan/task/CheckUpdateTask;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 47
    return-void
.end method

.method public startOtherCheckTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "packName"
    .parameter "desc"

    .prologue
    .line 55
    const-string v0, "Enter to startOtherCheckTask"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/zte/update/scan/ScanCheckManager;->initScanToRequestStorage()V

    .line 57
    iget-object v0, p0, Lcom/zte/update/scan/ScanCheckManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/zte/update/scan/task/SingleCheckUpdateTask;

    invoke-direct {v1, p1, p2}, Lcom/zte/update/scan/task/SingleCheckUpdateTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 58
    return-void
.end method

.method public startSelfCheckTask()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "Enter to startSelfCheckTask"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/zte/update/scan/ScanCheckManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/zte/update/scan/task/SelfCheckUpdateTask;

    invoke-direct {v1}, Lcom/zte/update/scan/task/SelfCheckUpdateTask;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 52
    return-void
.end method

.method public waitForScanTaskEnd()V
    .locals 2

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/zte/update/scan/ScanCheckManager;->scanTask:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 78
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0
.end method
