.class Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;
.super Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;
.source "WidgetAnimService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/appwidget/WidgetAnimService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public UpdateAppCacheList(Ljava/util/List;)V
    .locals 6
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
    .line 130
    .local p1, appCacheList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    const-string v0, "WidgetAnimService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hs debug widget cache clean:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #calls: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->currentTime()J
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$200(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->debugTime1:J
    invoke-static {v4}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1000(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$800(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
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
    .line 138
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
    .line 143
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
    .line 112
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
    .line 149
    .local p1, backgroundAutoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    return-void
.end method

.method public UpdateRunningProcessList(Ljava/util/List;J)V
    .locals 8
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
    .line 91
    .local p1, runningProcessList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->closeProcessStep:I
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$100(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I

    move-result v2

    if-nez v2, :cond_1

    .line 92
    const-string v2, "WidgetAnimService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hs debug widget mem list:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #calls: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->currentTime()J
    invoke-static {v4}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$200(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->debugTime2:J
    invoke-static {v6}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$300(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #calls: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->currentTime()J
    invoke-static {v3}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$200(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)J

    move-result-wide v3

    #setter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->debugTime3:J
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$402(Lcom/zte/heartyservice/appwidget/WidgetAnimService;J)J

    .line 94
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$500(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->closeRunningProcess(Ljava/util/List;)V

    .line 95
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$108(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->closeProcessStep:I
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$100(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I

    move-result v2

    if-lez v2, :cond_0

    .line 97
    const-string v2, "WidgetAnimService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hs debug widget mem clean:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #calls: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->currentTime()J
    invoke-static {v4}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$200(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->debugTime3:J
    invoke-static {v6}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$400(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->memOld:J
    invoke-static {v3}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$700(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)J

    move-result-wide v3

    sub-long v3, p2, v3

    #setter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->memDecrease:J
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$602(Lcom/zte/heartyservice/appwidget/WidgetAnimService;J)J

    .line 99
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$800(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 101
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getTotalMemory()J

    move-result-wide v0

    .line 102
    .local v0, total:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 103
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    sub-long v3, v0, p2

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    div-long/2addr v3, v0

    long-to-int v3, v3

    #setter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->percentNew:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$902(Lcom/zte/heartyservice/appwidget/WidgetAnimService;I)I

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$800(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
