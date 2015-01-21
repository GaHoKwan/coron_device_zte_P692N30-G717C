.class Lcom/zte/heartyservice/examination/MainExamActivity$2;
.super Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;
.source "MainExamActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/examination/MainExamActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/examination/MainExamActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/examination/MainExamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity$2;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public UpdateAppCacheList(Ljava/util/List;)V
    .locals 1
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
    .line 788
    .local p1, appCacheList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity$2;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #setter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mCacheList:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2602(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/util/List;)Ljava/util/List;

    .line 789
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity$2;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->taskGo()V
    invoke-static {v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2500(Lcom/zte/heartyservice/examination/MainExamActivity;)V

    .line 790
    return-void
.end method

.method public UpdateAppDataList(Ljava/util/List;)V
    .locals 1
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
    .line 795
    .local p1, appCacheList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity$2;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1           #appCacheList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    #setter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mAppCacheInfoList:Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2702(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 797
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity$2;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->taskGo()V
    invoke-static {v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2500(Lcom/zte/heartyservice/examination/MainExamActivity;)V

    .line 798
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
    .line 805
    .local p1, appFileList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    return-void
.end method

.method public UpdateAutoRunAppList(Ljava/util/List;)V
    .locals 1
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
    .line 782
    .local p1, autoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity$2;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->taskGo()V
    invoke-static {v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2500(Lcom/zte/heartyservice/examination/MainExamActivity;)V

    .line 784
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
    .line 813
    .local p1, backgroundAutoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    return-void
.end method

.method public UpdateRunningProcessList(Ljava/util/List;J)V
    .locals 4
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
    .local p1, runningProcessList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    const/4 v3, 0x0

    .line 766
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity$2;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #setter for: Lcom/zte/heartyservice/examination/MainExamActivity;->total_run:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2402(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    .line 767
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity$2;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #setter for: Lcom/zte/heartyservice/examination/MainExamActivity;->can_close:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1702(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    .line 768
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 769
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity$2;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    #setter for: Lcom/zte/heartyservice/examination/MainExamActivity;->total_run:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2402(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    .line 770
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;

    .line 771
    .local v1, localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    iget v2, v1, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->is_checked:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 772
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity$2;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    invoke-static {v2}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1708(Lcom/zte/heartyservice/examination/MainExamActivity;)I

    goto :goto_0

    .line 776
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity$2;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->taskGo()V
    invoke-static {v2}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2500(Lcom/zte/heartyservice/examination/MainExamActivity;)V

    .line 778
    return-void
.end method
