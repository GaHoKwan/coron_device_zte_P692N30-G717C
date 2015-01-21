.class public final Lcom/zte/filexplorer/AsyncTaskManager;
.super Ljava/lang/Object;
.source "AsyncTaskManager.java"

# interfaces
.implements Lcom/zte/filexplorer/ProgressTracker;
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private mAsyncTask:Lcom/zte/filexplorer/AsyncCopier;

.field private final mProgressDialog:Landroid/app/ProgressDialog;

.field private final mTaskCompleteListener:Lcom/zte/filexplorer/OnTaskCompleteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zte/filexplorer/OnTaskCompleteListener;)V
    .locals 2
    .parameter "context"
    .parameter "taskCompleteListener"

    .prologue
    const/4 v1, 0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mTaskCompleteListener:Lcom/zte/filexplorer/OnTaskCompleteListener;

    .line 18
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 19
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 20
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 21
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 22
    return-void
.end method


# virtual methods
.method public handleRetainedTask(Ljava/lang/Object;)V
    .locals 1
    .parameter "instance"

    .prologue
    .line 71
    instance-of v0, p1, Lcom/zte/filexplorer/AsyncCopier;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lcom/zte/filexplorer/AsyncCopier;

    .end local p1
    iput-object p1, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mAsyncTask:Lcom/zte/filexplorer/AsyncCopier;

    .line 73
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mAsyncTask:Lcom/zte/filexplorer/AsyncCopier;

    invoke-virtual {v0, p0}, Lcom/zte/filexplorer/AsyncCopier;->setProgressTracker(Lcom/zte/filexplorer/ProgressTracker;)V

    .line 75
    :cond_0
    return-void
.end method

.method public isWorking()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mAsyncTask:Lcom/zte/filexplorer/AsyncCopier;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mAsyncTask:Lcom/zte/filexplorer/AsyncCopier;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/filexplorer/AsyncCopier;->cancel(Z)Z

    .line 46
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mTaskCompleteListener:Lcom/zte/filexplorer/OnTaskCompleteListener;

    iget-object v1, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mAsyncTask:Lcom/zte/filexplorer/AsyncCopier;

    invoke-interface {v0, v1}, Lcom/zte/filexplorer/OnTaskCompleteListener;->onTaskComplete(Lcom/zte/filexplorer/AsyncCopier;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mAsyncTask:Lcom/zte/filexplorer/AsyncCopier;

    .line 49
    return-void
.end method

.method public onComplete()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 55
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mTaskCompleteListener:Lcom/zte/filexplorer/OnTaskCompleteListener;

    iget-object v1, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mAsyncTask:Lcom/zte/filexplorer/AsyncCopier;

    invoke-interface {v0, v1}, Lcom/zte/filexplorer/OnTaskCompleteListener;->onTaskComplete(Lcom/zte/filexplorer/AsyncCopier;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mAsyncTask:Lcom/zte/filexplorer/AsyncCopier;

    .line 58
    return-void
.end method

.method public onProgress(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method public retainTask()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mAsyncTask:Lcom/zte/filexplorer/AsyncCopier;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mAsyncTask:Lcom/zte/filexplorer/AsyncCopier;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/filexplorer/AsyncCopier;->setProgressTracker(Lcom/zte/filexplorer/ProgressTracker;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mAsyncTask:Lcom/zte/filexplorer/AsyncCopier;

    return-object v0
.end method

.method public setupTask(Lcom/zte/filexplorer/AsyncCopier;)V
    .locals 2
    .parameter "asyncTask"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mAsyncTask:Lcom/zte/filexplorer/AsyncCopier;

    .line 28
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mAsyncTask:Lcom/zte/filexplorer/AsyncCopier;

    invoke-virtual {v0, p0}, Lcom/zte/filexplorer/AsyncCopier;->setProgressTracker(Lcom/zte/filexplorer/ProgressTracker;)V

    .line 30
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncTaskManager;->mAsyncTask:Lcom/zte/filexplorer/AsyncCopier;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zte/filexplorer/AsyncCopier;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    return-void
.end method
