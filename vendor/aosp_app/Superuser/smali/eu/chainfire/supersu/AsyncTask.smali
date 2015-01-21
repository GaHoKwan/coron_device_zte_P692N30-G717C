.class public abstract Leu/chainfire/supersu/AsyncTask;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/supersu/AsyncTask$AsyncTaskResult;,
        Leu/chainfire/supersu/AsyncTask$InternalHandler;,
        Leu/chainfire/supersu/AsyncTask$Status;,
        Leu/chainfire/supersu/AsyncTask$WorkerRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:Ljava/lang/Object;Progress:Ljava/lang/Object;Result:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ą:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
        }
    .end annotation
.end field

.field private static final Ć:Leu/chainfire/supersu/AsyncTask$InternalHandler;

.field static volatile ȃ:Ljava/util/concurrent/Executor;

.field private static synthetic Ȋ:[I

.field public static final ˮ͈:Ljava/util/concurrent/Executor;

.field public static final 櫯:Ljava/util/concurrent/Executor;

.field private static final 鷭:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final Ą:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<TResult;>;"
        }
    .end annotation
.end field

.field private final ć:Leu/chainfire/supersu/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leu/chainfire/supersu/AsyncTask$WorkerRunnable<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private volatile ˮ͍:Leu/chainfire/supersu/AsyncTask$Status;

.field private final 岱:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static <clinit>()V
    .locals 8

    .line 0
    new-instance v0, Leu/chainfire/supersu/AsyncTask$1;

    invoke-direct {v0}, Leu/chainfire/supersu/AsyncTask$1;-><init>()V

    sput-object v0, Leu/chainfire/supersu/AsyncTask;->鷭:Ljava/util/concurrent/ThreadFactory;

    .line 58
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 57
    sput-object v0, Leu/chainfire/supersu/AsyncTask;->ą:Ljava/util/concurrent/BlockingQueue;

    .line 64
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 65
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Leu/chainfire/supersu/AsyncTask;->ą:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Leu/chainfire/supersu/AsyncTask;->鷭:Ljava/util/concurrent/ThreadFactory;

    .line 64
    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 63
    sput-object v0, Leu/chainfire/supersu/AsyncTask;->櫯:Ljava/util/concurrent/Executor;

    .line 72
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 73
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Leu/chainfire/supersu/AsyncTask;->ą:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Leu/chainfire/supersu/AsyncTask;->鷭:Ljava/util/concurrent/ThreadFactory;

    .line 72
    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 71
    sput-object v0, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    .line 78
    new-instance v0, Leu/chainfire/supersu/AsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leu/chainfire/supersu/AsyncTask$InternalHandler;-><init>(Leu/chainfire/supersu/AsyncTask$InternalHandler;)V

    sput-object v0, Leu/chainfire/supersu/AsyncTask;->Ć:Leu/chainfire/supersu/AsyncTask$InternalHandler;

    .line 80
    sget-object v0, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    sput-object v0, Leu/chainfire/supersu/AsyncTask;->ȃ:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Leu/chainfire/supersu/AsyncTask$Status;->鷭:Leu/chainfire/supersu/AsyncTask$Status;

    iput-object v0, p0, Leu/chainfire/supersu/AsyncTask;->ˮ͍:Leu/chainfire/supersu/AsyncTask$Status;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/AsyncTask;->岱:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 148
    new-instance v0, Leu/chainfire/supersu/AsyncTask$2;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/AsyncTask$2;-><init>(Leu/chainfire/supersu/AsyncTask;)V

    iput-object v0, p0, Leu/chainfire/supersu/AsyncTask;->ć:Leu/chainfire/supersu/AsyncTask$WorkerRunnable;

    .line 157
    new-instance v0, Leu/chainfire/supersu/AsyncTask$3;

    iget-object v1, p0, Leu/chainfire/supersu/AsyncTask;->ć:Leu/chainfire/supersu/AsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Leu/chainfire/supersu/AsyncTask$3;-><init>(Leu/chainfire/supersu/AsyncTask;Leu/chainfire/supersu/AsyncTask$WorkerRunnable;)V

    iput-object v0, p0, Leu/chainfire/supersu/AsyncTask;->Ą:Ljava/util/concurrent/FutureTask;

    .line 177
    return-void
.end method

.method static synthetic ˮ͈(Leu/chainfire/supersu/AsyncTask;Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AsyncTask;->岱:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Leu/chainfire/supersu/AsyncTask;->Ć:Leu/chainfire/supersu/AsyncTask$InternalHandler;

    new-instance v1, Leu/chainfire/supersu/AsyncTask$AsyncTaskResult;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Leu/chainfire/supersu/AsyncTask$AsyncTaskResult;-><init>(Leu/chainfire/supersu/AsyncTask;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Leu/chainfire/supersu/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method static synthetic 櫯(Leu/chainfire/supersu/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    sget-object v0, Leu/chainfire/supersu/AsyncTask;->Ć:Leu/chainfire/supersu/AsyncTask$InternalHandler;

    new-instance v1, Leu/chainfire/supersu/AsyncTask$AsyncTaskResult;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Leu/chainfire/supersu/AsyncTask$AsyncTaskResult;-><init>(Leu/chainfire/supersu/AsyncTask;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Leu/chainfire/supersu/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private static synthetic 櫯()[I
    .locals 3

    .line 0
    sget-object v0, Leu/chainfire/supersu/AsyncTask;->Ȋ:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Leu/chainfire/supersu/AsyncTask$Status;->values()[Leu/chainfire/supersu/AsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v2, v0, [I

    :try_start_0
    sget-object v0, Leu/chainfire/supersu/AsyncTask$Status;->ˮ͈:Leu/chainfire/supersu/AsyncTask$Status;

    invoke-virtual {v0}, Leu/chainfire/supersu/AsyncTask$Status;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    aput v1, v2, v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :try_start_1
    sget-object v0, Leu/chainfire/supersu/AsyncTask$Status;->鷭:Leu/chainfire/supersu/AsyncTask$Status;

    invoke-virtual {v0}, Leu/chainfire/supersu/AsyncTask$Status;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    aput v1, v2, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    nop

    :catch_1
    :try_start_2
    sget-object v0, Leu/chainfire/supersu/AsyncTask$Status;->櫯:Leu/chainfire/supersu/AsyncTask$Status;

    invoke-virtual {v0}, Leu/chainfire/supersu/AsyncTask$Status;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    aput v1, v2, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    nop

    :catch_2
    sput-object v2, Leu/chainfire/supersu/AsyncTask;->Ȋ:[I

    return-object v2
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AsyncTask;->岱:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/AsyncTask;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AsyncTask;->Ą:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/AsyncTask;->鷭(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Leu/chainfire/supersu/AsyncTask$Status;->ˮ͈:Leu/chainfire/supersu/AsyncTask$Status;

    iput-object v0, p0, Leu/chainfire/supersu/AsyncTask;->ˮ͍:Leu/chainfire/supersu/AsyncTask$Status;

    return-void
.end method


# virtual methods
.method public final varargs 鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/concurrent/Executor;[TParams;)Leu/chainfire/supersu/AsyncTask<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AsyncTask;->ˮ͍:Leu/chainfire/supersu/AsyncTask$Status;

    sget-object v1, Leu/chainfire/supersu/AsyncTask$Status;->鷭:Leu/chainfire/supersu/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 437
    invoke-static {}, Leu/chainfire/supersu/AsyncTask;->櫯()[I

    move-result-object v0

    .line 437
    iget-object v1, p0, Leu/chainfire/supersu/AsyncTask;->ˮ͍:Leu/chainfire/supersu/AsyncTask$Status;

    invoke-virtual {v1}, Leu/chainfire/supersu/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 439
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_0
    :goto_0
    sget-object v0, Leu/chainfire/supersu/AsyncTask$Status;->櫯:Leu/chainfire/supersu/AsyncTask$Status;

    iput-object v0, p0, Leu/chainfire/supersu/AsyncTask;->ˮ͍:Leu/chainfire/supersu/AsyncTask$Status;

    .line 450
    invoke-virtual {p0}, Leu/chainfire/supersu/AsyncTask;->鷭()V

    .line 452
    iget-object v0, p0, Leu/chainfire/supersu/AsyncTask;->ć:Leu/chainfire/supersu/AsyncTask$WorkerRunnable;

    iput-object p2, v0, Leu/chainfire/supersu/AsyncTask$WorkerRunnable;->櫯:[Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Leu/chainfire/supersu/AsyncTask;->Ą:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 455
    return-object p0
.end method

.method protected varargs abstract 鷭([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected 鷭()V
    .locals 0

    .line 0
    return-void
.end method

.method protected 鷭(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 0
    return-void
.end method
