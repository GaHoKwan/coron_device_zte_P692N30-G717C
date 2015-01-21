.class public abstract Lcom/mediatek/contacts/simservice/SIMProcessorBase;
.super Lcom/android/contacts/vcard/ProcessorBase;
.source "SIMProcessorBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SIMProcessorBase"


# instance fields
.field private volatile mCanceled:Z

.field private volatile mDone:Z

.field protected mIntent:Landroid/content/Intent;

.field private volatile mIsRunning:Z

.field protected mListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;)V
    .locals 0
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/contacts/vcard/ProcessorBase;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mIntent:Landroid/content/Intent;

    .line 25
    iput-object p2, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;

    .line 26
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .parameter "mayInterruptIfRunning"

    .prologue
    const/4 v0, 0x1

    .line 52
    iget-boolean v1, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mDone:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mCanceled:Z

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    .line 55
    :cond_1
    iput-boolean v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mCanceled:Z

    goto :goto_0
.end method

.method public abstract doWork()V
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mCanceled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mDone:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 36
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mIsRunning:Z

    .line 37
    invoke-virtual {p0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->doWork()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    const-string v0, "SIMProcessorBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[run]finish: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",thread id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-boolean v5, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mDone:Z

    .line 42
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mCanceled:Z

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;

    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;->onProcessorCompleted(Landroid/content/Intent;)V

    .line 46
    :cond_0
    return-void

    .line 39
    :catchall_0
    move-exception v0

    const-string v1, "SIMProcessorBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[run]finish: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mDone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mDone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",thread id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-boolean v5, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mDone:Z

    .line 42
    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mCanceled:Z

    if-nez v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mListener:Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->mIntent:Landroid/content/Intent;

    invoke-interface {v1, v2}, Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;->onProcessorCompleted(Landroid/content/Intent;)V

    :cond_1
    throw v0
.end method
