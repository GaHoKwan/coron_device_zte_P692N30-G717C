.class public Ltmsdkobf/ja;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/iz$a;
.implements Ltmsdkobf/ky;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/ja$a;,
        Ltmsdkobf/ja$b;
    }
.end annotation


# static fields
.field private static sB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ky$a;",
            ">;"
        }
    .end annotation
.end field

.field private static sK:J

.field private static sL:J

.field private static sO:Ltmsdkobf/ky$a;


# instance fields
.field private isActive:Z

.field private mLock:Ljava/lang/Object;

.field private sA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ky$b;",
            ">;"
        }
    .end annotation
.end field

.field protected sC:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected sD:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ltmsdkobf/ja$a;",
            ">;"
        }
    .end annotation
.end field

.field protected sE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ja$a;",
            ">;"
        }
    .end annotation
.end field

.field protected sF:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ltmsdkobf/ja$a;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private sG:I

.field protected sH:Ltmsdkobf/iz;

.field private sI:Landroid/os/HandlerThread;

.field private sJ:Ltmsdkobf/ja$b;

.field private volatile sM:Z

.field private sN:Ltmsdkobf/jd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltmsdkobf/ja;->sB:Ljava/util/ArrayList;

    .line 666
    sput-wide v1, Ltmsdkobf/ja;->sK:J

    .line 667
    sput-wide v1, Ltmsdkobf/ja;->sL:J

    .line 834
    new-instance v0, Ltmsdkobf/ja$2;

    invoke-direct {v0}, Ltmsdkobf/ja$2;-><init>()V

    sput-object v0, Ltmsdkobf/ja;->sO:Ltmsdkobf/ky$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdkobf/ja;->sA:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v0, p0, Ltmsdkobf/ja;->sC:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltmsdkobf/ja;->sD:Ljava/util/LinkedList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdkobf/ja;->sE:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltmsdkobf/ja;->sF:Ljava/util/HashMap;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    .line 62
    iput-boolean v2, p0, Ltmsdkobf/ja;->isActive:Z

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltmsdkobf/ja;->mLock:Ljava/lang/Object;

    .line 668
    iput-boolean v2, p0, Ltmsdkobf/ja;->sM:Z

    .line 706
    return-void
.end method

.method static synthetic a(Ltmsdkobf/ja;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Ltmsdkobf/ja;->dM()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ltmsdkobf/ja;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Ltmsdkobf/ja;->dJ()V

    return-void
.end method

.method private dH()I
    .locals 7

    .prologue
    .line 98
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 99
    .local v0, cpuNums:I
    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v1, v2, 0x2

    .line 100
    .local v1, poolSize:I
    const/16 v2, 0xc

    if-le v1, v2, :cond_0

    .line 101
    const/16 v1, 0xc

    .line 103
    :cond_0
    const v2, 0x10002

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ThreadPoolSizeInfo-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ltmsdkobf/lu;->a(I[Ljava/lang/Object;)V

    .line 104
    return v1
.end method

.method private dI()I
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Ltmsdkobf/ja;->dH()I

    move-result v0

    .line 113
    .local v0, poolSize:I
    mul-int/lit8 v1, v0, 0x2

    return v1
.end method

.method private dJ()V
    .locals 7

    .prologue
    .line 370
    iget-object v5, p0, Ltmsdkobf/ja;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 371
    :try_start_0
    iget-object v4, p0, Ltmsdkobf/ja;->sD:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 373
    iget-object v4, p0, Ltmsdkobf/ja;->sD:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 374
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ja$a;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 375
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/ja$a;

    .line 376
    .local v1, innerTask:Ltmsdkobf/ja$a;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 378
    invoke-direct {p0}, Ltmsdkobf/ja;->dK()V

    .line 380
    iget-object v4, p0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    invoke-virtual {v4, v1}, Ltmsdkobf/iz;->execute(Ljava/lang/Runnable;)V

    .line 386
    sget-object v4, Ltmsdkobf/ja;->sB:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltmsdkobf/ky$a;

    .line 387
    .local v3, observer:Ltmsdkobf/ky$a;
    invoke-virtual {v1}, Ltmsdkobf/ja$a;->dS()Ltmsdkobf/ky$c;

    move-result-object v4

    iget-object v6, p0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    invoke-virtual {v6}, Ltmsdkobf/iz;->getActiveCount()I

    move-result v6

    invoke-interface {v3, v4, v6}, Ltmsdkobf/ky$a;->a(Ltmsdkobf/ky$c;I)V

    goto :goto_0

    .line 397
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #innerTask:Ltmsdkobf/ja$a;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ja$a;>;"
    .end local v3           #observer:Ltmsdkobf/ky$a;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 394
    :cond_0
    :try_start_1
    iget-object v4, p0, Ltmsdkobf/ja;->sD:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 395
    iget-object v4, p0, Ltmsdkobf/ja;->sJ:Ltmsdkobf/ja$b;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ltmsdkobf/ja$b;->sendEmptyMessage(I)Z

    .line 397
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    return-void
.end method

.method private dK()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    invoke-virtual {v0}, Ltmsdkobf/iz;->getCorePoolSize()I

    move-result v0

    iget v1, p0, Ltmsdkobf/ja;->sG:I

    if-ge v0, v1, :cond_0

    .line 405
    iget-object v0, p0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    iget v1, p0, Ltmsdkobf/ja;->sG:I

    invoke-virtual {v0, v1}, Ltmsdkobf/iz;->setCorePoolSize(I)V

    .line 406
    iget-object v0, p0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    iget v1, p0, Ltmsdkobf/ja;->sG:I

    invoke-virtual {v0, v1}, Ltmsdkobf/iz;->setMaximumPoolSize(I)V

    .line 412
    :cond_0
    return-void
.end method

.method private dM()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Ltmsdkobf/ja;->sM:Z

    return v0
.end method

.method private dN()V
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Ltmsdkobf/ja;->sN:Ltmsdkobf/jd;

    if-nez v0, :cond_0

    .line 785
    new-instance v0, Ltmsdkobf/jd;

    invoke-direct {v0}, Ltmsdkobf/jd;-><init>()V

    iput-object v0, p0, Ltmsdkobf/ja;->sN:Ltmsdkobf/jd;

    .line 787
    iget-object v0, p0, Ltmsdkobf/ja;->sN:Ltmsdkobf/jd;

    new-instance v1, Ltmsdkobf/ja$1;

    invoke-direct {v1, p0}, Ltmsdkobf/ja$1;-><init>(Ltmsdkobf/ja;)V

    invoke-virtual {v0, v1}, Ltmsdkobf/jd;->a(Ltmsdkobf/ky$a;)V

    .line 808
    :cond_0
    return-void
.end method

.method public static dO()Ltmsdkobf/ky$a;
    .locals 1

    .prologue
    .line 831
    sget-object v0, Ltmsdkobf/ja;->sO:Ltmsdkobf/ky$a;

    return-object v0
.end method

.method static synthetic dP()J
    .locals 2

    .prologue
    .line 30
    sget-wide v0, Ltmsdkobf/ja;->sK:J

    return-wide v0
.end method

.method static synthetic dQ()J
    .locals 2

    .prologue
    .line 30
    sget-wide v0, Ltmsdkobf/ja;->sL:J

    return-wide v0
.end method

.method static synthetic dR()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Ltmsdkobf/ja;->sB:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;IJ)Landroid/os/HandlerThread;
    .locals 1
    .parameter "name"
    .parameter "priority"
    .parameter "ident"

    .prologue
    .line 826
    invoke-static {p1, p2, p3, p4}, Ltmsdkobf/jb;->a(Ljava/lang/String;IJ)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/lang/Thread;
    .locals 1
    .parameter "task"
    .parameter "taskName"
    .parameter "ident"

    .prologue
    .line 776
    invoke-direct {p0}, Ltmsdkobf/ja;->dN()V

    .line 777
    iget-object v0, p0, Ltmsdkobf/ja;->sN:Ltmsdkobf/jd;

    invoke-virtual {v0, p1, p2, p3, p4}, Ltmsdkobf/jd;->a(Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V
    .locals 10
    .parameter "priority"
    .parameter "task"
    .parameter "taskName"
    .parameter "ident"
    .parameter "isWeak"
    .parameter "owner"

    .prologue
    .line 305
    iget-object v9, p0, Ltmsdkobf/ja;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 312
    :try_start_0
    new-instance v0, Ltmsdkobf/ja$a;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ltmsdkobf/ja$a;-><init>(Ltmsdkobf/ja;ILjava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V

    .line 315
    .local v0, innerTask:Ltmsdkobf/ja$a;
    iget-object v1, p0, Ltmsdkobf/ja;->sD:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v1, p0, Ltmsdkobf/ja;->sE:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v1, p0, Ltmsdkobf/ja;->sJ:Ltmsdkobf/ja$b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ltmsdkobf/ja$b;->sendEmptyMessage(I)Z

    .line 322
    monitor-exit v9

    .line 323
    return-void

    .line 322
    .end local v0           #innerTask:Ltmsdkobf/ja$a;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V
    .locals 8
    .parameter "task"
    .parameter "taskName"
    .parameter "ident"
    .parameter "isWeak"
    .parameter "owner"

    .prologue
    .line 284
    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Ltmsdkobf/ja;->a(ILjava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V

    .line 285
    return-void
.end method

.method public afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 21
    .parameter "task"
    .parameter "t"

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/ja;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 171
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Ltmsdkobf/ja$a;

    move-object v8, v0

    .line 173
    .local v8, innerTask:Ltmsdkobf/ja$a;
    move-object/from16 v0, p0

    iget-object v15, v0, Ltmsdkobf/ja;->sF:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 174
    .local v9, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ja$a;>;"
    if-eqz v9, :cond_2

    .line 175
    const/4 v6, 0x0

    .line 176
    .local v6, found:Z
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 177
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ltmsdkobf/ja$a;

    .line 178
    .local v12, temp:Ltmsdkobf/ja$a;
    if-eqz v12, :cond_0

    invoke-virtual {v12, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 179
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 180
    const/4 v6, 0x1

    .line 185
    .end local v12           #temp:Ltmsdkobf/ja$a;
    :cond_1
    if-eqz v6, :cond_2

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-virtual {v8}, Ltmsdkobf/ja$a;->dS()Ltmsdkobf/ky$c;

    move-result-object v15

    iget-wide v0, v15, Ltmsdkobf/ky$c;->usedTime:J

    move-wide/from16 v19, v0

    sub-long v13, v17, v19

    .line 187
    .local v13, usedTime:J
    invoke-virtual {v8}, Ltmsdkobf/ja$a;->dS()Ltmsdkobf/ky$c;

    move-result-object v15

    iput-wide v13, v15, Ltmsdkobf/ky$c;->usedTime:J

    .line 188
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v17

    invoke-virtual {v8}, Ltmsdkobf/ja$a;->dS()Ltmsdkobf/ky$c;

    move-result-object v15

    iget-wide v0, v15, Ltmsdkobf/ky$c;->Bq:J

    move-wide/from16 v19, v0

    sub-long v4, v17, v19

    .line 189
    .local v4, cpuTime:J
    invoke-virtual {v8}, Ltmsdkobf/ja$a;->dS()Ltmsdkobf/ky$c;

    move-result-object v15

    iput-wide v4, v15, Ltmsdkobf/ky$c;->Bq:J

    .line 196
    sget-object v15, Ltmsdkobf/ja;->sB:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ltmsdkobf/ky$a;

    .line 197
    .local v10, observer:Ltmsdkobf/ky$a;
    invoke-virtual {v8}, Ltmsdkobf/ja$a;->dS()Ltmsdkobf/ky$c;

    move-result-object v15

    invoke-interface {v10, v15}, Ltmsdkobf/ky$a;->b(Ltmsdkobf/ky$c;)V

    goto :goto_0

    .line 229
    .end local v4           #cpuTime:J
    .end local v6           #found:Z
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #innerTask:Ltmsdkobf/ja$a;
    .end local v9           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ja$a;>;"
    .end local v10           #observer:Ltmsdkobf/ky$a;
    .end local v13           #usedTime:J
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 203
    .restart local v8       #innerTask:Ltmsdkobf/ja$a;
    .restart local v9       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ja$a;>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    invoke-virtual {v15}, Ltmsdkobf/iz;->getActiveCount()I

    move-result v2

    .line 204
    .local v2, activeCount:I
    move-object/from16 v0, p0

    iget-object v15, v0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    invoke-virtual {v15}, Ltmsdkobf/iz;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v11

    .line 205
    .local v11, queueSize:I
    move-object/from16 v0, p0

    iget-object v15, v0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    invoke-virtual {v15}, Ltmsdkobf/iz;->getCorePoolSize()I

    move-result v3

    .line 212
    .local v3, coreSize:I
    const/4 v15, 0x1

    if-ne v2, v15, :cond_5

    if-nez v11, :cond_5

    .line 215
    const/4 v15, 0x1

    if-le v3, v15, :cond_3

    .line 216
    invoke-direct/range {p0 .. p0}, Ltmsdkobf/ja;->dH()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Ltmsdkobf/ja;->sG:I

    .line 217
    move-object/from16 v0, p0

    iget-object v15, v0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ltmsdkobf/iz;->setCorePoolSize(I)V

    .line 218
    move-object/from16 v0, p0

    iget-object v15, v0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    move-object/from16 v0, p0

    iget v0, v0, Ltmsdkobf/ja;->sG:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ltmsdkobf/iz;->setMaximumPoolSize(I)V

    .line 220
    const-string v15, "ThreadPool"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "shrink core pool size: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ltmsdkobf/iz;->getCorePoolSize()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Ltmsdkobf/ja;->sA:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ltmsdkobf/ky$b;

    .line 224
    .local v10, observer:Ltmsdkobf/ky$b;
    invoke-interface {v10}, Ltmsdkobf/ky$b;->fU()V

    goto :goto_1

    .line 227
    .end local v10           #observer:Ltmsdkobf/ky$b;
    :cond_4
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Ltmsdkobf/ja;->isActive:Z

    .line 229
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_5
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    return-void
.end method

.method public b(Ljava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V
    .locals 12
    .parameter "task"
    .parameter "taskName"
    .parameter "ident"
    .parameter "isWeak"
    .parameter "owner"

    .prologue
    .line 337
    iget-object v11, p0, Ltmsdkobf/ja;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 345
    :try_start_0
    new-instance v0, Ltmsdkobf/ja$a;

    const v2, 0x7fffffff

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Ltmsdkobf/ja$a;-><init>(Ltmsdkobf/ja;ILjava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V

    .line 347
    .local v0, innerTask:Ltmsdkobf/ja$a;
    iget-object v1, p0, Ltmsdkobf/ja;->sE:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v1, p0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    invoke-virtual {v1, v0}, Ltmsdkobf/iz;->execute(Ljava/lang/Runnable;)V

    .line 353
    iget-object v1, p0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    invoke-virtual {v1}, Ltmsdkobf/iz;->getActiveCount()I

    move-result v1

    iget v2, p0, Ltmsdkobf/ja;->sG:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Ltmsdkobf/ja;->sG:I

    invoke-direct {p0}, Ltmsdkobf/ja;->dI()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 354
    iget v1, p0, Ltmsdkobf/ja;->sG:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ltmsdkobf/ja;->sG:I

    .line 355
    iget-object v1, p0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    iget v2, p0, Ltmsdkobf/ja;->sG:I

    invoke-virtual {v1, v2}, Ltmsdkobf/iz;->setCorePoolSize(I)V

    .line 356
    iget-object v1, p0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    iget v2, p0, Ltmsdkobf/ja;->sG:I

    invoke-virtual {v1, v2}, Ltmsdkobf/iz;->setMaximumPoolSize(I)V

    .line 358
    const-string v1, "ThreadPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expand urgent core pool size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ltmsdkobf/ja;->sG:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    :goto_0
    sget-object v1, Ltmsdkobf/ja;->sB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ltmsdkobf/ky$a;

    .line 364
    .local v10, observer:Ltmsdkobf/ky$a;
    invoke-virtual {v0}, Ltmsdkobf/ja$a;->dS()Ltmsdkobf/ky$c;

    move-result-object v1

    iget-object v2, p0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    invoke-virtual {v2}, Ltmsdkobf/iz;->getActiveCount()I

    move-result v2

    invoke-interface {v10, v1, v2}, Ltmsdkobf/ky$a;->a(Ltmsdkobf/ky$c;I)V

    goto :goto_1

    .line 366
    .end local v0           #innerTask:Ltmsdkobf/ja$a;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #observer:Ltmsdkobf/ky$a;
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 360
    .restart local v0       #innerTask:Ltmsdkobf/ja$a;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ltmsdkobf/ja;->dK()V

    goto :goto_0

    .line 366
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    return-void
.end method

.method public beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 12
    .parameter "thread"
    .parameter "task"

    .prologue
    const/4 v10, 0x1

    .line 118
    iget-object v9, p0, Ltmsdkobf/ja;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 120
    :try_start_0
    iget-object v8, p0, Ltmsdkobf/ja;->sE:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 121
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ja$a;>;"
    if-eqz v4, :cond_6

    .line 122
    move-object v0, p2

    check-cast v0, Ltmsdkobf/ja$a;

    move-object v3, v0

    .line 124
    .local v3, innerTask:Ltmsdkobf/ja$a;
    invoke-virtual {v3}, Ltmsdkobf/ja$a;->dS()Ltmsdkobf/ky$c;

    move-result-object v8

    iget v6, v8, Ltmsdkobf/ky$c;->priority:I

    .line 125
    .local v6, priority:I
    if-ge v6, v10, :cond_3

    .line 126
    const/4 v6, 0x1

    .line 130
    :cond_0
    :goto_0
    invoke-virtual {p1, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, found:Z
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 134
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltmsdkobf/ja$a;

    .line 135
    .local v7, temp:Ltmsdkobf/ja$a;
    if-eqz v7, :cond_1

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 136
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 137
    const/4 v1, 0x1

    .line 141
    .end local v7           #temp:Ltmsdkobf/ja$a;
    :cond_2
    if-eqz v1, :cond_6

    .line 142
    iget-boolean v8, p0, Ltmsdkobf/ja;->isActive:Z

    if-nez v8, :cond_4

    .line 143
    iget-object v8, p0, Ltmsdkobf/ja;->sA:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltmsdkobf/ky$b;

    .line 144
    .local v5, observer:Ltmsdkobf/ky$b;
    invoke-interface {v5}, Ltmsdkobf/ky$b;->fT()V

    goto :goto_1

    .line 165
    .end local v1           #found:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #innerTask:Ltmsdkobf/ja$a;
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ja$a;>;"
    .end local v5           #observer:Ltmsdkobf/ky$b;
    .end local v6           #priority:I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 127
    .restart local v3       #innerTask:Ltmsdkobf/ja$a;
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ja$a;>;"
    .restart local v6       #priority:I
    :cond_3
    const/16 v8, 0xa

    if-le v6, v8, :cond_0

    .line 128
    const/16 v6, 0xa

    goto :goto_0

    .line 148
    .restart local v1       #found:Z
    :cond_4
    :try_start_1
    sget-object v8, Ltmsdkobf/ja;->sB:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltmsdkobf/ky$a;

    .line 149
    .local v5, observer:Ltmsdkobf/ky$a;
    invoke-virtual {v3}, Ltmsdkobf/ja$a;->dS()Ltmsdkobf/ky$c;

    move-result-object v8

    invoke-interface {v5, v8}, Ltmsdkobf/ky$a;->a(Ltmsdkobf/ky$c;)V

    goto :goto_2

    .line 152
    .end local v5           #observer:Ltmsdkobf/ky$a;
    :cond_5
    invoke-virtual {v3}, Ltmsdkobf/ja$a;->dS()Ltmsdkobf/ky$c;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v8, Ltmsdkobf/ky$c;->usedTime:J

    .line 153
    invoke-virtual {v3}, Ltmsdkobf/ja$a;->dS()Ltmsdkobf/ky$c;

    move-result-object v8

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v10

    iput-wide v10, v8, Ltmsdkobf/ky$c;->Bq:J

    .line 154
    iget-object v8, p0, Ltmsdkobf/ja;->sF:Ljava/util/HashMap;

    invoke-virtual {v8, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/4 v8, 0x1

    iput-boolean v8, p0, Ltmsdkobf/ja;->isActive:Z

    .line 165
    .end local v1           #found:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #innerTask:Ltmsdkobf/ja$a;
    .end local v6           #priority:I
    :cond_6
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    return-void
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 453
    iget-object v2, p0, Ltmsdkobf/ja;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 454
    :try_start_0
    invoke-virtual {p0, p1}, Ltmsdkobf/ja;->e(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 455
    .local v0, t:Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 460
    :goto_0
    monitor-exit v2

    .line 461
    return-void

    .line 458
    :cond_0
    invoke-virtual {p0, p1}, Ltmsdkobf/ja;->d(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 460
    .end local v0           #t:Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(Ljava/lang/Runnable;)Z
    .locals 6
    .parameter "task"

    .prologue
    const/4 v3, 0x0

    .line 420
    if-nez p1, :cond_0

    .line 442
    :goto_0
    return v3

    .line 424
    :cond_0
    iget-object v4, p0, Ltmsdkobf/ja;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 425
    :try_start_0
    iget-object v5, p0, Ltmsdkobf/ja;->sE:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 426
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ja$a;>;"
    if-eqz v1, :cond_3

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, innerTask:Ltmsdkobf/ja$a;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 429
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdkobf/ja$a;

    .line 430
    .local v2, temp:Ltmsdkobf/ja$a;
    invoke-virtual {v2}, Ltmsdkobf/ja$a;->dS()Ltmsdkobf/ky$c;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ltmsdkobf/ja$a;->dS()Ltmsdkobf/ky$c;

    move-result-object v5

    iget-object v5, v5, Ltmsdkobf/ky$c;->Bs:Ljava/lang/Runnable;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 431
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 432
    move-object v0, v2

    .line 437
    .end local v2           #temp:Ltmsdkobf/ja$a;
    :cond_2
    if-eqz v0, :cond_3

    .line 438
    iget-object v3, p0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    invoke-virtual {v3, v0}, Ltmsdkobf/iz;->remove(Ljava/lang/Runnable;)Z

    .line 439
    const/4 v3, 0x1

    monitor-exit v4

    goto :goto_0

    .line 443
    .end local v0           #innerTask:Ltmsdkobf/ja$a;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ja$a;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 442
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ja$a;>;"
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public dL()V
    .locals 4

    .prologue
    .line 688
    iget-object v1, p0, Ltmsdkobf/ja;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 689
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ltmsdkobf/ja;->sM:Z

    .line 690
    const-wide/16 v2, 0x0

    sput-wide v2, Ltmsdkobf/ja;->sL:J

    .line 691
    const-wide/16 v2, 0x0

    sput-wide v2, Ltmsdkobf/ja;->sK:J

    .line 693
    const-string v0, "ThreadPool"

    const-string v2, "wake up threa pool"

    invoke-static {v0, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 694
    monitor-exit v1

    .line 695
    return-void

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 6
    .parameter "task"

    .prologue
    const/4 v3, 0x0

    .line 515
    if-nez p1, :cond_0

    .line 535
    :goto_0
    return-object v3

    .line 519
    :cond_0
    iget-object v4, p0, Ltmsdkobf/ja;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 520
    :try_start_0
    iget-object v5, p0, Ltmsdkobf/ja;->sF:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 521
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ja$a;>;"
    if-eqz v1, :cond_3

    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, innerTask:Ltmsdkobf/ja$a;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 524
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdkobf/ja$a;

    .line 525
    .local v2, temp:Ltmsdkobf/ja$a;
    invoke-virtual {v2}, Ltmsdkobf/ja$a;->dS()Ltmsdkobf/ky$c;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ltmsdkobf/ja$a;->dS()Ltmsdkobf/ky$c;

    move-result-object v5

    iget-object v5, v5, Ltmsdkobf/ky$c;->Bs:Ljava/lang/Runnable;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 526
    move-object v0, v2

    .line 531
    .end local v2           #temp:Ltmsdkobf/ja$a;
    :cond_2
    if-eqz v0, :cond_3

    .line 532
    iget-object v3, p0, Ltmsdkobf/ja;->sF:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    monitor-exit v4

    goto :goto_0

    .line 536
    .end local v0           #innerTask:Ltmsdkobf/ja$a;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ja$a;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 535
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdkobf/ja$a;>;"
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0}, Ltmsdkobf/ja;->dH()I

    move-result v0

    iput v0, p0, Ltmsdkobf/ja;->sG:I

    .line 74
    new-instance v0, Ltmsdkobf/iz;

    const/4 v1, 0x0

    iget v2, p0, Ltmsdkobf/ja;->sG:I

    add-int/lit8 v2, v2, 0x2

    const-wide/16 v3, 0x3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Ltmsdkobf/ja;->sC:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-direct/range {v0 .. v7}, Ltmsdkobf/iz;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    .line 81
    iget-object v0, p0, Ltmsdkobf/ja;->sH:Ltmsdkobf/iz;

    invoke-virtual {v0, p0}, Ltmsdkobf/iz;->a(Ltmsdkobf/iz$a;)V

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TMS_THREAD_POOL_HANDLER"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltmsdkobf/ja;->sI:Landroid/os/HandlerThread;

    .line 84
    iget-object v0, p0, Ltmsdkobf/ja;->sI:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v0, Ltmsdkobf/ja$b;

    iget-object v1, p0, Ltmsdkobf/ja;->sI:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltmsdkobf/ja$b;-><init>(Ltmsdkobf/ja;Landroid/os/Looper;)V

    iput-object v0, p0, Ltmsdkobf/ja;->sJ:Ltmsdkobf/ja$b;

    .line 86
    return-void
.end method
