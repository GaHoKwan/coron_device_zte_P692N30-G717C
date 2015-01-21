.class public Ltmsdkobf/kp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/km;


# instance fields
.field private mStarted:Z

.field private final yA:Ljava/lang/Object;

.field private yB:I

.field private yC:Ljava/lang/String;

.field private yD:J

.field private yE:Ljava/lang/Thread;

.field private yu:Ltmsdkobf/kn;

.field private yv:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ltmsdkobf/ko;",
            ">;"
        }
    .end annotation
.end field

.field private yw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ltmsdkobf/ko;",
            ">;"
        }
    .end annotation
.end field

.field private yx:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ltmsdkobf/ko;",
            ">;"
        }
    .end annotation
.end field

.field private yy:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ltmsdkobf/ko;",
            ">;"
        }
    .end annotation
.end field

.field private yz:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ltmsdkobf/ko;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ltmsdkobf/kn;)V
    .locals 1
    .parameter "threadName"
    .parameter "pump"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltmsdkobf/kp;->yv:Ljava/util/LinkedList;

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltmsdkobf/kp;->yw:Ljava/util/LinkedList;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltmsdkobf/kp;->yx:Ljava/util/LinkedList;

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltmsdkobf/kp;->yy:Ljava/util/LinkedList;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltmsdkobf/kp;->yz:Ljava/util/LinkedList;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltmsdkobf/kp;->yA:Ljava/lang/Object;

    .line 60
    const v0, 0xea60

    iput v0, p0, Ltmsdkobf/kp;->yB:I

    .line 77
    iput-object p1, p0, Ltmsdkobf/kp;->yC:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Ltmsdkobf/kp;->yC:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    const-string v0, "unknown_message_loop"

    iput-object v0, p0, Ltmsdkobf/kp;->yC:Ljava/lang/String;

    .line 81
    :cond_0
    iput-object p2, p0, Ltmsdkobf/kp;->yu:Ltmsdkobf/kn;

    .line 82
    return-void
.end method

.method static synthetic a(Ltmsdkobf/kp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Ltmsdkobf/kp;->mStarted:Z

    return p1
.end method

.method static synthetic b(Ltmsdkobf/kp;)Ltmsdkobf/kn;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Ltmsdkobf/kp;->yu:Ltmsdkobf/kn;

    return-object v0
.end method

.method private b(Ltmsdkobf/ko;)V
    .locals 12
    .parameter "task"

    .prologue
    .line 248
    const-string v8, "MessageLoop"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Ltmsdkobf/kp;->yC:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|addToInComingQueue|task="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Ltmsdkobf/ko;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    iget-object v9, p0, Ltmsdkobf/kp;->yA:Ljava/lang/Object;

    monitor-enter v9

    .line 252
    :try_start_0
    invoke-interface {p1}, Ltmsdkobf/ko;->getPriority()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2

    .line 254
    iget-object v8, p0, Ltmsdkobf/kp;->yv:Ljava/util/LinkedList;

    invoke-virtual {v8, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 263
    :goto_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    iget-boolean v8, p0, Ltmsdkobf/kp;->mStarted:Z

    if-nez v8, :cond_3

    .line 266
    invoke-virtual {p0}, Ltmsdkobf/kp;->run()V

    .line 288
    :cond_0
    :goto_1
    iget-object v8, p0, Ltmsdkobf/kp;->yu:Ltmsdkobf/kn;

    invoke-interface {v8}, Ltmsdkobf/kn;->fn()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 289
    const/4 v8, 0x0

    iput-boolean v8, p0, Ltmsdkobf/kp;->mStarted:Z

    .line 290
    invoke-virtual {p0}, Ltmsdkobf/kp;->run()V

    .line 292
    :cond_1
    iget-object v8, p0, Ltmsdkobf/kp;->yu:Ltmsdkobf/kn;

    invoke-interface {v8}, Ltmsdkobf/kn;->fm()V

    .line 293
    return-void

    .line 257
    :cond_2
    :try_start_1
    iget-object v8, p0, Ltmsdkobf/kp;->yw:Ljava/util/LinkedList;

    invoke-virtual {v8, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 267
    :cond_3
    iget-wide v8, p0, Ltmsdkobf/kp;->yD:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 271
    .local v4, nowTime:J
    iget-wide v8, p0, Ltmsdkobf/kp;->yD:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    iget-wide v8, p0, Ltmsdkobf/kp;->yD:J

    sub-long v8, v4, v8

    iget v10, p0, Ltmsdkobf/kp;->yB:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 273
    iget-object v8, p0, Ltmsdkobf/kp;->yE:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 275
    .local v7, stackTraceElements:[Ljava/lang/StackTraceElement;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v6, sb:Ljava/lang/StringBuilder;
    if-eqz v7, :cond_4

    .line 277
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 278
    .local v1, element:Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 282
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v1           #element:Ljava/lang/StackTraceElement;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    const-string v8, "MessageLoop"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "eventloop timeout"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    iget-object v8, p0, Ltmsdkobf/kp;->yE:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method private c(Ltmsdkobf/ko;)Z
    .locals 4
    .parameter "task"

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-interface {p1}, Ltmsdkobf/ko;->fl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    const-string v1, "MessageLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runPendingTask|Task Cancel|name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ltmsdkobf/ko;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    :goto_0
    return v0

    .line 301
    :cond_0
    invoke-interface {p1}, Ltmsdkobf/ko;->getPriority()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 302
    const-string v1, "MessageLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runPendingTask|addToIdleTask|name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ltmsdkobf/ko;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    iget-object v1, p0, Ltmsdkobf/kp;->yz:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_1
    invoke-direct {p0, p1}, Ltmsdkobf/kp;->d(Ltmsdkobf/ko;)Z

    .line 309
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Ltmsdkobf/ko;)Z
    .locals 6
    .parameter "task"

    .prologue
    .line 313
    invoke-interface {p1}, Ltmsdkobf/ko;->fl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    const-string v2, "MessageLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ltmsdkobf/kp;->yC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|runTask|Task Cancel|name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ltmsdkobf/ko;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    const/4 v2, 0x0

    .line 333
    :goto_0
    return v2

    .line 319
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ltmsdkobf/kp;->yD:J

    .line 320
    invoke-interface {p1}, Ltmsdkobf/ko;->run()V

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ltmsdkobf/kp;->yD:J

    sub-long v0, v2, v4

    .line 322
    .local v0, cost:J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ltmsdkobf/kp;->yD:J

    .line 323
    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 324
    const-string v2, "messageLoop_performance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ltmsdkobf/kp;->yC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "runTask|taskName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ltmsdkobf/ko;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cost="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 328
    :cond_1
    const-string v2, "messageLoop_performance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ltmsdkobf/kp;->yC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "runTask|taskName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ltmsdkobf/ko;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cost="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private e(Ltmsdkobf/ko;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 370
    iget-object v0, p0, Ltmsdkobf/kp;->yy:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 371
    return-void
.end method

.method private fr()V
    .locals 4

    .prologue
    .line 345
    iget-object v1, p0, Ltmsdkobf/kp;->yx:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    const-string v1, "MessageLoop"

    const-string v2, "reloadWorkQueue|Working"

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v2, p0, Ltmsdkobf/kp;->yA:Ljava/lang/Object;

    monitor-enter v2

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, tmp:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ltmsdkobf/ko;>;"
    :try_start_0
    iget-object v1, p0, Ltmsdkobf/kp;->yv:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    iget-object v0, p0, Ltmsdkobf/kp;->yv:Ljava/util/LinkedList;

    .line 354
    iget-object v1, p0, Ltmsdkobf/kp;->yx:Ljava/util/LinkedList;

    iput-object v1, p0, Ltmsdkobf/kp;->yv:Ljava/util/LinkedList;

    .line 365
    :goto_1
    iput-object v0, p0, Ltmsdkobf/kp;->yx:Ljava/util/LinkedList;

    .line 366
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 355
    :cond_1
    :try_start_1
    iget-object v1, p0, Ltmsdkobf/kp;->yw:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 357
    iget-object v0, p0, Ltmsdkobf/kp;->yw:Ljava/util/LinkedList;

    .line 358
    iget-object v1, p0, Ltmsdkobf/kp;->yx:Ljava/util/LinkedList;

    iput-object v1, p0, Ltmsdkobf/kp;->yw:Ljava/util/LinkedList;

    goto :goto_1

    .line 360
    :cond_2
    const-string v1, "MessageLoop"

    const-string v3, "reloadWorkQueue|no task..."

    invoke-static {v1, v3}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a(Ltmsdkobf/ko;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-direct {p0, p1}, Ltmsdkobf/kp;->b(Ltmsdkobf/ko;)V

    goto :goto_0
.end method

.method a(Ljava/util/concurrent/atomic/AtomicLong;)Z
    .locals 8
    .parameter "nextDelayTime"

    .prologue
    const/4 v3, 0x0

    .line 125
    iget-object v4, p0, Ltmsdkobf/kp;->yy:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 153
    :goto_0
    return v3

    .line 129
    :cond_0
    iget-object v4, p0, Ltmsdkobf/kp;->yy:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdkobf/ko;

    .line 130
    .local v2, task:Ltmsdkobf/ko;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 131
    .local v0, nowTime:J
    if-eqz v2, :cond_3

    .line 132
    invoke-interface {v2}, Ltmsdkobf/ko;->fk()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    .line 134
    invoke-interface {v2}, Ltmsdkobf/ko;->fk()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 135
    const-string v4, "MessageLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ltmsdkobf/kp;->yC:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|doDelayWork|> nowTime|nextDelayTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v3, p0, Ltmsdkobf/kp;->yy:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 144
    iget-object v3, p0, Ltmsdkobf/kp;->yy:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 145
    iget-object v3, p0, Ltmsdkobf/kp;->yy:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltmsdkobf/ko;

    invoke-interface {v3}, Ltmsdkobf/ko;->fk()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 146
    const-string v3, "MessageLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ltmsdkobf/kp;->yC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|doDelayWork|!mDelayWorkQueue.isEmpty()|nextDelayTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    :cond_2
    invoke-direct {p0, v2}, Ltmsdkobf/kp;->c(Ltmsdkobf/ko;)Z

    .line 153
    :cond_3
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method fo()Z
    .locals 6

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, hasWork:Z
    :cond_0
    invoke-direct {p0}, Ltmsdkobf/kp;->fr()V

    .line 106
    iget-object v2, p0, Ltmsdkobf/kp;->yx:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    return v0

    .line 110
    :cond_1
    const/4 v0, 0x1

    .line 112
    :goto_0
    iget-object v2, p0, Ltmsdkobf/kp;->yx:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/ko;

    .local v1, task:Ltmsdkobf/ko;
    if-eqz v1, :cond_0

    .line 113
    invoke-interface {v1}, Ltmsdkobf/ko;->fk()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 114
    invoke-direct {p0, v1}, Ltmsdkobf/kp;->e(Ltmsdkobf/ko;)V

    .line 115
    iget-object v2, p0, Ltmsdkobf/kp;->yu:Ltmsdkobf/kn;

    invoke-interface {v1}, Ltmsdkobf/ko;->fk()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Ltmsdkobf/kn;->s(J)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-direct {p0, v1}, Ltmsdkobf/kp;->c(Ltmsdkobf/ko;)Z

    goto :goto_0
.end method

.method fp()Z
    .locals 4

    .prologue
    .line 157
    iget-object v1, p0, Ltmsdkobf/kp;->yz:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/ko;

    .line 158
    .local v0, task:Ltmsdkobf/ko;
    if-nez v0, :cond_0

    .line 159
    const/4 v1, 0x0

    .line 163
    :goto_0
    return v1

    .line 161
    :cond_0
    const-string v1, "MessageLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doIdleWork|tak="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ltmsdkobf/ko;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    invoke-direct {p0, v0}, Ltmsdkobf/kp;->d(Ltmsdkobf/ko;)Z

    .line 163
    const/4 v1, 0x1

    goto :goto_0
.end method

.method fq()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    const/4 v0, 0x1

    .line 232
    .local v0, isEmpty:Z
    iget-object v3, p0, Ltmsdkobf/kp;->yA:Ljava/lang/Object;

    monitor-enter v3

    .line 233
    :try_start_0
    iget-object v4, p0, Ltmsdkobf/kp;->yw:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Ltmsdkobf/kp;->yv:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    .line 234
    :goto_0
    monitor-exit v3

    .line 235
    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 233
    goto :goto_0

    .line 234
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v1, v2

    .line 235
    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Ltmsdkobf/kp;->yC:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 168
    iget-boolean v0, p0, Ltmsdkobf/kp;->mStarted:Z

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 171
    :cond_0
    const-class v1, Ltmsdkobf/kp;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-boolean v0, p0, Ltmsdkobf/kp;->mStarted:Z

    if-eqz v0, :cond_1

    .line 173
    monitor-exit v1

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 176
    :cond_1
    :try_start_1
    new-instance v0, Ltmsdkobf/kp$1;

    iget-object v2, p0, Ltmsdkobf/kp;->yC:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Ltmsdkobf/kp$1;-><init>(Ltmsdkobf/kp;Ljava/lang/String;)V

    iput-object v0, p0, Ltmsdkobf/kp;->yE:Ljava/lang/Thread;

    .line 185
    iget-object v0, p0, Ltmsdkobf/kp;->yE:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdkobf/kp;->mStarted:Z

    .line 188
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
