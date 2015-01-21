.class public Ltmsdkobf/jd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/jc$a;
.implements Ltmsdkobf/je;


# instance fields
.field private sR:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Thread;",
            "Ltmsdkobf/ky$c;",
            ">;"
        }
    .end annotation
.end field

.field private sS:Ltmsdkobf/ky$a;

.field private final sw:Ljava/lang/ThreadGroup;

.field private final sx:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Ltmsdkobf/jd;->sx:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ltmsdkobf/jd;->sR:Ljava/util/HashMap;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TMS_FREE_POOL_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ltmsdkobf/jd;->sW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, groupName:Ljava/lang/String;
    new-instance v1, Ljava/lang/ThreadGroup;

    invoke-direct {v1, v0}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ltmsdkobf/jd;->sw:Ljava/lang/ThreadGroup;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/lang/Thread;
    .locals 7
    .parameter "task"
    .parameter "taskName"
    .parameter "ident"

    .prologue
    const/4 v6, 0x5

    .line 37
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 38
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 41
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FreeThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltmsdkobf/jd;->sx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 43
    new-instance v0, Ltmsdkobf/jc;

    iget-object v1, p0, Ltmsdkobf/jd;->sw:Ljava/lang/ThreadGroup;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Ltmsdkobf/jc;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 44
    .local v0, t:Ltmsdkobf/jc;
    invoke-virtual {v0, p0}, Ltmsdkobf/jc;->a(Ltmsdkobf/jc$a;)V

    .line 46
    invoke-virtual {v0}, Ltmsdkobf/jc;->isDaemon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltmsdkobf/jc;->setDaemon(Z)V

    .line 49
    :cond_2
    invoke-virtual {v0}, Ltmsdkobf/jc;->getPriority()I

    move-result v1

    if-eq v1, v6, :cond_3

    .line 50
    invoke-virtual {v0, v6}, Ltmsdkobf/jc;->setPriority(I)V

    .line 53
    :cond_3
    return-object v0
.end method

.method public a(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 5
    .parameter "t"
    .parameter "r"

    .prologue
    const-wide/16 v3, -0x1

    .line 62
    new-instance v0, Ltmsdkobf/ky$c;

    invoke-direct {v0}, Ltmsdkobf/ky$c;-><init>()V

    .line 63
    .local v0, taskInfo:Ltmsdkobf/ky$c;
    const/4 v1, 0x2

    iput v1, v0, Ltmsdkobf/ky$c;->Bn:I

    move-object v1, p1

    .line 64
    check-cast v1, Ltmsdkobf/jc;

    invoke-virtual {v1}, Ltmsdkobf/jc;->dY()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdkobf/ky$c;->Bo:J

    .line 65
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltmsdkobf/ky$c;->name:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    iput v1, v0, Ltmsdkobf/ky$c;->priority:I

    .line 67
    iput-wide v3, v0, Ltmsdkobf/ky$c;->usedTime:J

    .line 68
    iput-wide v3, v0, Ltmsdkobf/ky$c;->Bq:J

    .line 70
    iget-object v1, p0, Ltmsdkobf/jd;->sR:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Ltmsdkobf/jd;->sS:Ltmsdkobf/ky$a;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Ltmsdkobf/jd;->sS:Ltmsdkobf/ky$a;

    invoke-virtual {p0}, Ltmsdkobf/jd;->activeCount()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ltmsdkobf/ky$a;->a(Ltmsdkobf/ky$c;I)V

    .line 75
    :cond_0
    return-void
.end method

.method public a(Ltmsdkobf/ky$a;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 31
    iput-object p1, p0, Ltmsdkobf/jd;->sS:Ltmsdkobf/ky$a;

    .line 32
    return-void
.end method

.method public activeCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ltmsdkobf/jd;->sR:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 5
    .parameter "t"
    .parameter "r"

    .prologue
    .line 93
    iget-object v1, p0, Ltmsdkobf/jd;->sR:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/ky$c;

    .line 94
    .local v0, taskInfo:Ltmsdkobf/ky$c;
    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Ltmsdkobf/ky$c;->usedTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Ltmsdkobf/ky$c;->usedTime:J

    .line 96
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v1

    iget-wide v3, v0, Ltmsdkobf/ky$c;->Bq:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Ltmsdkobf/ky$c;->Bq:J

    .line 98
    iget-object v1, p0, Ltmsdkobf/jd;->sS:Ltmsdkobf/ky$a;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Ltmsdkobf/jd;->sS:Ltmsdkobf/ky$a;

    invoke-interface {v1, v0}, Ltmsdkobf/ky$a;->b(Ltmsdkobf/ky$c;)V

    .line 103
    :cond_0
    return-void
.end method

.method public beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "t"
    .parameter "r"

    .prologue
    .line 80
    iget-object v1, p0, Ltmsdkobf/jd;->sR:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/ky$c;

    .line 81
    .local v0, taskInfo:Ltmsdkobf/ky$c;
    if-eqz v0, :cond_1

    .line 82
    iget-object v1, p0, Ltmsdkobf/jd;->sS:Ltmsdkobf/ky$a;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Ltmsdkobf/jd;->sS:Ltmsdkobf/ky$a;

    invoke-interface {v1, v0}, Ltmsdkobf/ky$a;->a(Ltmsdkobf/ky$c;)V

    .line 85
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdkobf/ky$c;->usedTime:J

    .line 86
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdkobf/ky$c;->Bq:J

    .line 88
    :cond_1
    return-void
.end method
