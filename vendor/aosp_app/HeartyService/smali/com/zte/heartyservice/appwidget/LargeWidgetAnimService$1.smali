.class Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;
.super Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;
.source "LargeWidgetAnimService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public UpdateAppCacheList(Ljava/util/List;)V
    .locals 5
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
    .line 104
    .local p1, appCacheList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->cleanCacheStep:I
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$700(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    move-result v2

    if-nez v2, :cond_2

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;

    .line 106
    .local v1, info:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    iget-wide v3, v1, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->cache:J

    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$814(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;J)J

    goto :goto_0

    .line 108
    .end local v1           #info:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$200(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->clearAppCache(Ljava/util/List;)V

    .line 115
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$708(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    .line 116
    return-void

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->cleanCacheStep:I
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$700(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;

    .line 111
    .restart local v1       #info:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    iget-wide v3, v1, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->cache:J

    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$914(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;J)J

    goto :goto_2

    .line 113
    .end local v1           #info:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    :cond_3
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$500(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
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
    .line 122
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
    .line 127
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
    .line 99
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
    .line 133
    .local p1, backgroundAutoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    return-void
.end method

.method public UpdateRunningProcessList(Ljava/util/List;J)V
    .locals 7
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
    .line 81
    .local p1, runningProcessList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->closeProcessStep:I
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$100(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    move-result v2

    if-nez v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$200(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->closeRunningProcess(Ljava/util/List;)V

    .line 83
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$108(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->closeProcessStep:I
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$100(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    move-result v2

    if-lez v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->memOld:J
    invoke-static {v3}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$400(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)J

    move-result-wide v3

    sub-long v3, p2, v3

    #setter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->memDecrease:J
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$302(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;J)J

    .line 86
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$500(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 88
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getTotalMemory()J

    move-result-wide v0

    .line 89
    .local v0, total:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    sub-long v3, v0, p2

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    div-long/2addr v3, v0

    long-to-int v3, v3

    #setter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->percentNew:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$602(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;I)I

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$500(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
