.class final Ltmsdkobf/jb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/jc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 5
    .parameter "t"
    .parameter "r"

    .prologue
    const-wide/16 v3, -0x1

    .line 46
    new-instance v0, Ltmsdkobf/ky$c;

    invoke-direct {v0}, Ltmsdkobf/ky$c;-><init>()V

    .line 47
    .local v0, taskInfo:Ltmsdkobf/ky$c;
    const/4 v1, 0x3

    iput v1, v0, Ltmsdkobf/ky$c;->Bn:I

    move-object v1, p1

    .line 48
    check-cast v1, Ltmsdkobf/kx;

    invoke-virtual {v1}, Ltmsdkobf/kx;->dY()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdkobf/ky$c;->Bo:J

    .line 49
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltmsdkobf/ky$c;->name:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    iput v1, v0, Ltmsdkobf/ky$c;->priority:I

    .line 51
    iput-wide v3, v0, Ltmsdkobf/ky$c;->usedTime:J

    .line 52
    iput-wide v3, v0, Ltmsdkobf/ky$c;->Bq:J

    .line 54
    invoke-static {}, Ltmsdkobf/jb;->dV()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {}, Ltmsdkobf/jb;->dW()V

    .line 57
    invoke-static {}, Ltmsdkobf/jb;->dX()Ltmsdkobf/ky$a;

    move-result-object v1

    invoke-static {}, Ltmsdkobf/jb;->activeCount()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ltmsdkobf/ky$a;->a(Ltmsdkobf/ky$c;I)V

    .line 58
    return-void
.end method

.method public b(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 5
    .parameter "t"
    .parameter "r"

    .prologue
    .line 74
    invoke-static {}, Ltmsdkobf/jb;->dV()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/ky$c;

    .line 75
    .local v0, taskInfo:Ltmsdkobf/ky$c;
    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Ltmsdkobf/ky$c;->usedTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Ltmsdkobf/ky$c;->usedTime:J

    .line 77
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v1

    iget-wide v3, v0, Ltmsdkobf/ky$c;->Bq:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Ltmsdkobf/ky$c;->Bq:J

    .line 79
    invoke-static {}, Ltmsdkobf/jb;->dW()V

    .line 80
    invoke-static {}, Ltmsdkobf/jb;->dX()Ltmsdkobf/ky$a;

    move-result-object v1

    invoke-interface {v1, v0}, Ltmsdkobf/ky$a;->b(Ltmsdkobf/ky$c;)V

    .line 82
    :cond_0
    return-void
.end method

.method public beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "t"
    .parameter "r"

    .prologue
    .line 62
    invoke-static {}, Ltmsdkobf/jb;->dV()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/ky$c;

    .line 63
    .local v0, taskInfo:Ltmsdkobf/ky$c;
    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Ltmsdkobf/jb;->dW()V

    .line 65
    invoke-static {}, Ltmsdkobf/jb;->dX()Ltmsdkobf/ky$a;

    move-result-object v1

    invoke-interface {v1, v0}, Ltmsdkobf/ky$a;->a(Ltmsdkobf/ky$c;)V

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdkobf/ky$c;->usedTime:J

    .line 68
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdkobf/ky$c;->Bq:J

    .line 70
    :cond_0
    return-void
.end method
