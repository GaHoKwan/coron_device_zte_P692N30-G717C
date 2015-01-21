.class public Lcom/mediatek/contacts/simservice/SIMProcessorService;
.super Landroid/app/Service;
.source "SIMProcessorService.java"


# static fields
.field private static final CORE_POOL_SIZE:I = 0x2

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SIMProcessorService"


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorManagerListener;

.field private mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mProcessorManager:Lcom/mediatek/contacts/simservice/SIMProcessorManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorService;->mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/simservice/SIMProcessorService;->createThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 68
    new-instance v0, Lcom/mediatek/contacts/simservice/SIMProcessorService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/simservice/SIMProcessorService$1;-><init>(Lcom/mediatek/contacts/simservice/SIMProcessorService;)V

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorService;->mListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorManagerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/simservice/SIMProcessorService;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/simservice/SIMProcessorService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorService;->mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private createThreadPool(I)Ljava/util/concurrent/ExecutorService;
    .locals 8
    .parameter "initPoolSize"

    .prologue
    .line 90
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v2, 0xa

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/mediatek/contacts/simservice/SIMProcessorService$2;

    invoke-direct {v7, p0}, Lcom/mediatek/contacts/simservice/SIMProcessorService$2;-><init>(Lcom/mediatek/contacts/simservice/SIMProcessorService;)V

    move v1, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 41
    const-string v0, "SIMProcessorService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/mediatek/contacts/simservice/SIMProcessorManager;

    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMProcessorService;->mListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorManagerListener;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/contacts/simservice/SIMProcessorManager;-><init>(Landroid/content/Context;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorManagerListener;)V

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorService;->mProcessorManager:Lcom/mediatek/contacts/simservice/SIMProcessorManager;

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 54
    const-string v0, "SIMProcessorService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/simservice/SIMProcessorService;->processIntent(Landroid/content/Intent;)V

    .line 49
    return-void
.end method

.method public processIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    const-string v2, "SIMProcessorService"

    const-string v3, "[processIntent] intent is null."

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v2, "which_slot"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 63
    .local v0, slotId:I
    const-string v2, "work_type"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 65
    .local v1, workType:I
    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMProcessorService;->mProcessorManager:Lcom/mediatek/contacts/simservice/SIMProcessorManager;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1, p1}, Lcom/mediatek/contacts/simservice/SIMProcessorManager;->handleProcessor(Landroid/content/Context;IILandroid/content/Intent;)V

    goto :goto_0
.end method
