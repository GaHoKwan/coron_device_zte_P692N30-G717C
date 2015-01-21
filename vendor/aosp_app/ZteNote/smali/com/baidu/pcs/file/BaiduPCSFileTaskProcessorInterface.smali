.class public interface abstract Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addTask(Lcom/baidu/pcs/BaiduPCSFileTransferTask;)J
.end method

.method public abstract destroy()V
.end method

.method public abstract firstStartTask(J)V
.end method

.method public abstract getFileTaskList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSFileTransferTask;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTask(J)Lcom/baidu/pcs/BaiduPCSFileTransferTask;
.end method

.method public abstract init()V
.end method

.method public abstract isTaskExistInProcessor(Lcom/baidu/pcs/BaiduPCSFileTransferTask;)Z
.end method

.method public abstract pauseAllTasks(Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;)V
.end method

.method public abstract pauseTask(J)V
.end method

.method public abstract pauseTaskWithoutUpdateDB(J)V
.end method

.method public abstract removeAllTask(Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;)V
.end method

.method public abstract removeTask(J)V
.end method

.method public abstract resumeAllTask(Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;)V
.end method

.method public abstract start()V
.end method

.method public abstract startAllTask(Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;)V
.end method

.method public abstract startTask(J)V
.end method

.method public abstract startTaskWithoutUpdateDB(J)V
.end method

.method public abstract stop()V
.end method
