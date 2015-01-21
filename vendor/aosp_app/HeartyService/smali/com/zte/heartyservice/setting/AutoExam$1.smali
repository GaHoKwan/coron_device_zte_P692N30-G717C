.class Lcom/zte/heartyservice/setting/AutoExam$1;
.super Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;
.source "AutoExam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/AutoExam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/AutoExam;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/AutoExam;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/zte/heartyservice/setting/AutoExam$1;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public UpdateAppCacheList(Ljava/util/List;)V
    .locals 3
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
    .line 108
    .local p1, appCacheList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoExam$1;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    #setter for: Lcom/zte/heartyservice/setting/AutoExam;->appCache:I
    invoke-static {v1, v0}, Lcom/zte/heartyservice/setting/AutoExam;->access$402(Lcom/zte/heartyservice/setting/AutoExam;I)I

    .line 109
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam$1;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoExam$1;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/AutoExam;->access$100(Lcom/zte/heartyservice/setting/AutoExam;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0560

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/zte/heartyservice/setting/AutoExam;->CheckResults(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/setting/AutoExam;->access$200(Lcom/zte/heartyservice/setting/AutoExam;Ljava/lang/String;)V

    .line 110
    const-string v0, "AutoExam"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liuji debug CheckResults AppCache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/setting/AutoExam$1;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->appCache:I
    invoke-static {v2}, Lcom/zte/heartyservice/setting/AutoExam;->access$400(Lcom/zte/heartyservice/setting/AutoExam;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 115
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
    .line 123
    .local p1, appFileList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    return-void
.end method

.method public UpdateAutoRunAppList(Ljava/util/List;)V
    .locals 5
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
    .line 95
    .local p1, autoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;

    .line 96
    .local v1, loaclAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    iget-object v2, p0, Lcom/zte/heartyservice/setting/AutoExam$1;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    iget v3, v1, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    invoke-static {v2, v3}, Lcom/zte/heartyservice/setting/AutoExam;->access$312(Lcom/zte/heartyservice/setting/AutoExam;I)I

    goto :goto_0

    .line 98
    .end local v1           #loaclAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/setting/AutoExam$1;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->autoRun:I
    invoke-static {v2}, Lcom/zte/heartyservice/setting/AutoExam;->access$300(Lcom/zte/heartyservice/setting/AutoExam;)I

    move-result v2

    if-lez v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/zte/heartyservice/setting/AutoExam$1;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    const/4 v3, 0x5

    #setter for: Lcom/zte/heartyservice/setting/AutoExam;->autoRun:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/setting/AutoExam;->access$302(Lcom/zte/heartyservice/setting/AutoExam;I)I

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/setting/AutoExam$1;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/AutoExam$1;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/heartyservice/setting/AutoExam;->access$100(Lcom/zte/heartyservice/setting/AutoExam;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a055f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/zte/heartyservice/setting/AutoExam;->CheckResults(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/zte/heartyservice/setting/AutoExam;->access$200(Lcom/zte/heartyservice/setting/AutoExam;Ljava/lang/String;)V

    .line 102
    const-string v2, "AutoExam"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "liuji debug CheckResults AutoRun:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/setting/AutoExam$1;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->autoRun:I
    invoke-static {v4}, Lcom/zte/heartyservice/setting/AutoExam;->access$300(Lcom/zte/heartyservice/setting/AutoExam;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
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
    .line 132
    .local p1, backgroundAutoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    return-void
.end method

.method public UpdateRunningProcessList(Ljava/util/List;J)V
    .locals 5
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
    .line 80
    .local p1, runningProcessList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
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

    .line 81
    .local v1, localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    iget v2, v1, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->is_checked:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 82
    iget-object v2, p0, Lcom/zte/heartyservice/setting/AutoExam$1;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    invoke-static {v2}, Lcom/zte/heartyservice/setting/AutoExam;->access$008(Lcom/zte/heartyservice/setting/AutoExam;)I

    goto :goto_0

    .line 85
    .end local v1           #localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/setting/AutoExam$1;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->runningProcess:I
    invoke-static {v2}, Lcom/zte/heartyservice/setting/AutoExam;->access$000(Lcom/zte/heartyservice/setting/AutoExam;)I

    move-result v2

    if-lez v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/zte/heartyservice/setting/AutoExam$1;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    const/4 v3, 0x5

    #setter for: Lcom/zte/heartyservice/setting/AutoExam;->runningProcess:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/setting/AutoExam;->access$002(Lcom/zte/heartyservice/setting/AutoExam;I)I

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/zte/heartyservice/setting/AutoExam$1;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/AutoExam$1;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/heartyservice/setting/AutoExam;->access$100(Lcom/zte/heartyservice/setting/AutoExam;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a055e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/zte/heartyservice/setting/AutoExam;->CheckResults(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/zte/heartyservice/setting/AutoExam;->access$200(Lcom/zte/heartyservice/setting/AutoExam;Ljava/lang/String;)V

    .line 89
    const-string v2, "AutoExam"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "liuji debug CheckResults RunningProcess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/setting/AutoExam$1;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->runningProcess:I
    invoke-static {v4}, Lcom/zte/heartyservice/setting/AutoExam;->access$000(Lcom/zte/heartyservice/setting/AutoExam;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method
