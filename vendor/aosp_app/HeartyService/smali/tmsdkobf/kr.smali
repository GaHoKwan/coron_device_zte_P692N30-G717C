.class public Ltmsdkobf/kr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/kn;


# instance fields
.field private yH:Z

.field private yI:Ljava/util/concurrent/atomic/AtomicLong;

.field private yJ:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Ltmsdkobf/kr;->yI:Ljava/util/concurrent/atomic/AtomicLong;

    .line 29
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Ltmsdkobf/kr;->yJ:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public a(Ltmsdkobf/kp;)V
    .locals 9
    .parameter "loop"

    .prologue
    .line 56
    const/4 v6, 0x0

    iput-boolean v6, p0, Ltmsdkobf/kr;->yH:Z

    .line 59
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ltmsdkobf/kp;->fo()Z

    move-result v2

    .line 60
    .local v2, did_work:Z
    const-string v6, "MessageLoop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltmsdkobf/kp;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|doWork finish...|did_work="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    iget-boolean v6, p0, Ltmsdkobf/kr;->yH:Z

    if-eqz v6, :cond_2

    .line 99
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Ltmsdkobf/kr;->yH:Z

    .line 100
    return-void

    .line 65
    :cond_2
    iget-object v6, p0, Ltmsdkobf/kr;->yI:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v6}, Ltmsdkobf/kp;->a(Ljava/util/concurrent/atomic/AtomicLong;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 66
    iget-boolean v6, p0, Ltmsdkobf/kr;->yH:Z

    if-nez v6, :cond_1

    .line 69
    const-string v6, "MessageLoop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltmsdkobf/kp;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|doDelayWork finish...|did_work="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    if-nez v2, :cond_0

    .line 75
    invoke-virtual {p1}, Ltmsdkobf/kp;->fp()Z

    move-result v2

    .line 77
    if-nez v2, :cond_3

    invoke-virtual {p1}, Ltmsdkobf/kp;->fq()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 78
    :cond_3
    const-string v6, "MessageLoop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltmsdkobf/kp;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|doIdleWork hasTask..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 83
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 84
    .local v4, nowTime:J
    iget-object v6, p0, Ltmsdkobf/kr;->yI:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 86
    .local v0, deltaTime:J
    :try_start_0
    const-string v6, "MessageLoop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltmsdkobf/kp;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|now wait..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_5

    .line 89
    iget-object v6, p0, Ltmsdkobf/kr;->yJ:Ljava/util/concurrent/Semaphore;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1, v7}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    .line 93
    :goto_1
    const-string v6, "MessageLoop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltmsdkobf/kp;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|wait end"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 94
    :catch_0
    move-exception v3

    .line 96
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 91
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_5
    :try_start_1
    iget-object v6, p0, Ltmsdkobf/kr;->yJ:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public fm()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ltmsdkobf/kr;->yJ:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 35
    return-void
.end method

.method public fn()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Ltmsdkobf/kr;->yH:Z

    return v0
.end method

.method public s(J)V
    .locals 1
    .parameter "delayTime"

    .prologue
    .line 39
    iget-object v0, p0, Ltmsdkobf/kr;->yI:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 40
    return-void
.end method
