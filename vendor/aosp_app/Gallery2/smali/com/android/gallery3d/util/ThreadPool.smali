.class public Lcom/android/gallery3d/util/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/ThreadPool$1;,
        Lcom/android/gallery3d/util/ThreadPool$Worker;,
        Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;,
        Lcom/android/gallery3d/util/ThreadPool$CancelListener;,
        Lcom/android/gallery3d/util/ThreadPool$JobContextStub;,
        Lcom/android/gallery3d/util/ThreadPool$JobContext;,
        Lcom/android/gallery3d/util/ThreadPool$Job;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

#the value of this static final field might be set in the static constructor
.field public static final CPU_CORES_NUM:I = 0x0

.field public static final JOB_CONTEXT_STUB:Lcom/android/gallery3d/util/ThreadPool$JobContext; = null

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_POOL_SIZE:I = 0x8

.field public static final MODE_CPU:I = 0x1

.field public static final MODE_NETWORK:I = 0x2

.field public static final MODE_NONE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PARALLEL_THREAD_NUM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Gallery2/ThreadPool"


# instance fields
.field mCpuCounter:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mNetworkCounter:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/android/gallery3d/util/ThreadPool$JobContextStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContextStub;-><init>(Lcom/android/gallery3d/util/ThreadPool$1;)V

    sput-object v0, Lcom/android/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .line 41
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/ThreadPool;->CPU_CORES_NUM:I

    .line 42
    sget v0, Lcom/android/gallery3d/util/ThreadPool;->CPU_CORES_NUM:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    sget v0, Lcom/android/gallery3d/util/ThreadPool;->CPU_CORES_NUM:I

    :goto_0
    sput v0, Lcom/android/gallery3d/util/ThreadPool;->PARALLEL_THREAD_NUM:I

    return-void

    :cond_0
    sget v0, Lcom/android/gallery3d/util/ThreadPool;->CPU_CORES_NUM:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/util/ThreadPool;-><init>(II)V

    .line 90
    return-void
.end method

.method public constructor <init>(II)V
    .locals 8
    .parameter "initPoolSize"
    .parameter "maxPoolSize"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    sget v1, Lcom/android/gallery3d/util/ThreadPool;->PARALLEL_THREAD_NUM:I

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/util/ThreadPool;->mCpuCounter:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    .line 45
    new-instance v0, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    sget v1, Lcom/android/gallery3d/util/ThreadPool;->PARALLEL_THREAD_NUM:I

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/util/ThreadPool;->mNetworkCounter:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    .line 93
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/android/gallery3d/util/PriorityThreadFactory;

    const-string v1, "thread-pool"

    const/16 v2, 0xa

    invoke-direct {v7, v1, v2}, Lcom/android/gallery3d/util/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/android/gallery3d/util/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    .line 98
    return-void
.end method


# virtual methods
.method public submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<TT;>;)",
            "Lcom/android/gallery3d/util/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, job:Lcom/android/gallery3d/util/ThreadPool$Job;,"Lcom/android/gallery3d/util/ThreadPool$Job<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/android/gallery3d/util/FutureListener",
            "<TT;>;)",
            "Lcom/android/gallery3d/util/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, job:Lcom/android/gallery3d/util/ThreadPool$Job;,"Lcom/android/gallery3d/util/ThreadPool$Job<TT;>;"
    .local p2, listener:Lcom/android/gallery3d/util/FutureListener;,"Lcom/android/gallery3d/util/FutureListener<TT;>;"
    new-instance v0, Lcom/android/gallery3d/util/ThreadPool$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/gallery3d/util/ThreadPool$Worker;-><init>(Lcom/android/gallery3d/util/ThreadPool;Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)V

    .line 104
    .local v0, w:Lcom/android/gallery3d/util/ThreadPool$Worker;,"Lcom/android/gallery3d/util/ThreadPool$Worker<TT;>;"
    iget-object v1, p0, Lcom/android/gallery3d/util/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    return-object v0
.end method
