.class public Ltmsdkobf/jc;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/jc$a;
    }
.end annotation


# instance fields
.field private rc:J

.field private sU:Ltmsdkobf/jc$a;

.field private sV:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 0
    .parameter "group"
    .parameter "runnable"
    .parameter "threadName"
    .parameter "ident"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Ltmsdkobf/jc;->sV:Ljava/lang/Runnable;

    .line 17
    iput-wide p4, p0, Ltmsdkobf/jc;->rc:J

    .line 18
    return-void
.end method


# virtual methods
.method public a(Ltmsdkobf/jc$a;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 21
    iput-object p1, p0, Ltmsdkobf/jc;->sU:Ltmsdkobf/jc$a;

    .line 22
    return-void
.end method

.method public dY()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Ltmsdkobf/jc;->rc:J

    return-wide v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Ltmsdkobf/jc;->sU:Ltmsdkobf/jc$a;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Ltmsdkobf/jc;->sU:Ltmsdkobf/jc$a;

    iget-object v1, p0, Ltmsdkobf/jc;->sV:Ljava/lang/Runnable;

    invoke-interface {v0, p0, v1}, Ltmsdkobf/jc$a;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 39
    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 41
    iget-object v0, p0, Ltmsdkobf/jc;->sU:Ltmsdkobf/jc$a;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Ltmsdkobf/jc;->sU:Ltmsdkobf/jc$a;

    iget-object v1, p0, Ltmsdkobf/jc;->sV:Ljava/lang/Runnable;

    invoke-interface {v0, p0, v1}, Ltmsdkobf/jc$a;->b(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 44
    :cond_1
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/jc;->sU:Ltmsdkobf/jc$a;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Ltmsdkobf/jc;->sU:Ltmsdkobf/jc$a;

    iget-object v1, p0, Ltmsdkobf/jc;->sV:Ljava/lang/Runnable;

    invoke-interface {v0, p0, v1}, Ltmsdkobf/jc$a;->a(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 30
    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
