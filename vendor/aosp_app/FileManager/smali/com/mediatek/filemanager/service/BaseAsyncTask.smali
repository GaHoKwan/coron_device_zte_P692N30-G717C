.class abstract Lcom/mediatek/filemanager/service/BaseAsyncTask;
.super Landroid/os/AsyncTask;
.source "BaseAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/mediatek/filemanager/service/ProgressInfo;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseAsyncTask"


# instance fields
.field protected mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

.field protected mIsTaskFinished:Z

.field protected mListener:Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;


# direct methods
.method public constructor <init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V
    .locals 1
    .parameter "fileInfoManager"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mListener:Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;

    .line 51
    iput-object v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mIsTaskFinished:Z

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    .line 67
    iput-object p2, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mListener:Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;

    .line 68
    return-void
.end method


# virtual methods
.method public isTaskBusy()Z
    .locals 3

    .prologue
    .line 127
    const-string v0, "BaseAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTaskBusy,task status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-boolean v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mIsTaskFinished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 129
    :cond_0
    const-string v0, "BaseAsyncTask"

    const-string v1, "isTaskBusy,retuen false."

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    .line 132
    :cond_1
    const-string v0, "BaseAsyncTask"

    const-string v1, "isTaskBusy,retuen true."

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mListener:Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "BaseAsyncTask"

    const-string v1, "onCancelled()"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mListener:Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;

    const/4 v1, -0x7

    invoke-interface {v0, v1}, Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;->onTaskResult(I)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mListener:Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;

    .line 96
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mIsTaskFinished:Z

    .line 97
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mListener:Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "BaseAsyncTask"

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mListener:Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;->onTaskResult(I)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mListener:Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mIsTaskFinished:Z

    .line 87
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/BaseAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mIsTaskFinished:Z

    .line 73
    iget-object v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mListener:Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "BaseAsyncTask"

    const-string v1, "onPreExecute"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mListener:Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;

    invoke-interface {v0}, Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;->onTaskPrepare()V

    .line 77
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/mediatek/filemanager/service/ProgressInfo;)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mListener:Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    aget-object v0, p1, v2

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "BaseAsyncTask"

    const-string v1, "onProgressUpdate"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mListener:Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;

    aget-object v1, p1, v2

    invoke-interface {v0, v1}, Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;->onTaskProgress(Lcom/mediatek/filemanager/service/ProgressInfo;)V

    .line 105
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, [Lcom/mediatek/filemanager/service/ProgressInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/BaseAsyncTask;->onProgressUpdate([Lcom/mediatek/filemanager/service/ProgressInfo;)V

    return-void
.end method

.method protected removeListener()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mListener:Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "BaseAsyncTask"

    const-string v1, "removeListener"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mListener:Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;

    .line 115
    :cond_0
    return-void
.end method

.method public setListener(Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mListener:Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;

    .line 124
    return-void
.end method
