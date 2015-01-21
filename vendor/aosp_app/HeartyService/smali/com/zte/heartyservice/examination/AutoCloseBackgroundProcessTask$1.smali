.class Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$1;
.super Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;
.source "AutoCloseBackgroundProcessTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$1;->this$0:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;

    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public UpdateAppCacheList(Ljava/util/List;)V
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
    .line 87
    .local p1, appCacheList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    return-void
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
    .line 92
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
    .line 99
    .local p1, appFileList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    return-void
.end method

.method public UpdateAutoRunAppList(Ljava/util/List;)V
    .locals 0
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
    .line 81
    .local p1, autoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    return-void
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
    .line 107
    .local p1, backgroundAutoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    return-void
.end method

.method public UpdateRunningProcessList(Ljava/util/List;J)V
    .locals 2
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
    .line 65
    .local p1, runningProcessList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$1;->this$0:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;

    #getter for: Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->first:Z
    invoke-static {v0}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->access$000(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$1;->this$0:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;

    #getter for: Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v0}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->access$100(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$1;->this$0:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;

    #getter for: Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v0}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->access$100(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->closeRunningProcess(Ljava/util/List;)V

    .line 68
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$1;->this$0:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;

    const/4 v1, 0x1

    #setter for: Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->first:Z
    invoke-static {v0, v1}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->access$002(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;Z)Z

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$1;->this$0:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;

    #calls: Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->taskGo()V
    invoke-static {v0}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->access$200(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;)V

    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$1;->this$0:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;

    #calls: Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->showToast()V
    invoke-static {v0}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->access$300(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;)V

    goto :goto_0
.end method
