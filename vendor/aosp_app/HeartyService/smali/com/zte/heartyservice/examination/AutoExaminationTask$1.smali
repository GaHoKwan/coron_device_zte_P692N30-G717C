.class Lcom/zte/heartyservice/examination/AutoExaminationTask$1;
.super Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;
.source "AutoExaminationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/examination/AutoExaminationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/examination/AutoExaminationTask;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$1;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public UpdateAppCacheList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, appCacheList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    const/4 v3, 0x1

    .line 69
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$1;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    #getter for: Lcom/zte/heartyservice/examination/AutoExaminationTask;->task:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->access$000(Lcom/zte/heartyservice/examination/AutoExaminationTask;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$1;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    const/4 v2, 0x1

    #setter for: Lcom/zte/heartyservice/examination/AutoExaminationTask;->task2Ok:Z
    invoke-static {v0, v2}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->access$202(Lcom/zte/heartyservice/examination/AutoExaminationTask;Z)Z

    .line 71
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$1;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    #getter for: Lcom/zte/heartyservice/examination/AutoExaminationTask;->task1Ok:Z
    invoke-static {v0}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->access$100(Lcom/zte/heartyservice/examination/AutoExaminationTask;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$1;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    #calls: Lcom/zte/heartyservice/examination/AutoExaminationTask;->taskGo()V
    invoke-static {v0}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->access$300(Lcom/zte/heartyservice/examination/AutoExaminationTask;)V

    .line 74
    :cond_0
    monitor-exit v1

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public UpdateAppDataList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    .local p1, appCacheList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    return-void
.end method

.method public UpdateAppFileList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppFileInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    .local p1, appFileList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    return-void
.end method

.method public UpdateAutoRunAppList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, autoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    const/4 v3, 0x1

    .line 58
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$1;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    #getter for: Lcom/zte/heartyservice/examination/AutoExaminationTask;->task:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->access$000(Lcom/zte/heartyservice/examination/AutoExaminationTask;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$1;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    const/4 v2, 0x1

    #setter for: Lcom/zte/heartyservice/examination/AutoExaminationTask;->task1Ok:Z
    invoke-static {v0, v2}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->access$102(Lcom/zte/heartyservice/examination/AutoExaminationTask;Z)Z

    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$1;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    #getter for: Lcom/zte/heartyservice/examination/AutoExaminationTask;->task2Ok:Z
    invoke-static {v0}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->access$200(Lcom/zte/heartyservice/examination/AutoExaminationTask;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 61
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$1;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    #calls: Lcom/zte/heartyservice/examination/AutoExaminationTask;->taskGo()V
    invoke-static {v0}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->access$300(Lcom/zte/heartyservice/examination/AutoExaminationTask;)V

    .line 63
    :cond_0
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public UpdateBackgroundAutoRunAppList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    .local p1, backgroundAutoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    return-void
.end method

.method public UpdateRunningProcessList(Ljava/util/List;J)V
    .locals 0
    .parameter
    .parameter "freeMemory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    .local p1, runningProcessList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    return-void
.end method
