.class Lcom/zte/heartyservice/speedup/SpeedUpService$2;
.super Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAppCache(Ljava/util/List;)V
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
    .local p1, clearList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 150
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppCacheInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppCacheInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->cancel(Z)Z

    .line 153
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppCacheInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;
    invoke-static {v0, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$002(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    new-instance v1, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {v1, v2, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppCacheInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$002(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;

    .line 156
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppCacheInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 157
    return-void
.end method

.method public clearAppFile(Ljava/util/List;)V
    .locals 5
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
    .local p1, clearList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 302
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppFileInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppFileInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->cancel(Z)Z

    .line 305
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppFileInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;
    invoke-static {v0, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2202(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    new-instance v1, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {v1, v2, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppFileInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2202(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;

    .line 308
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppFileInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 309
    return-void
.end method

.method public closeRunningProcess(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, closeList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 163
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCloseProcessInListTask:Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCloseProcessInListTask:Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->cancel(Z)Z

    .line 166
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCloseProcessInListTask:Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;
    invoke-static {v0, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$202(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    new-instance v1, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {v1, v2, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCloseProcessInListTask:Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$202(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;

    .line 169
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCloseProcessInListTask:Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 172
    return-void
.end method

.method public disableAutoRunApp(Ljava/util/List;)V
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
    .local p1, disableList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 177
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$400(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$400(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;->cancel(Z)Z

    .line 180
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;
    invoke-static {v0, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$402(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    new-instance v1, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {v1, v2, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$402(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;

    .line 183
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$400(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 184
    return-void
.end method

.method public disableBackgroundAutoRunApp(Ljava/util/List;)V
    .locals 5
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
    .local p1, disableList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 327
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2600(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2600(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;->cancel(Z)Z

    .line 330
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;
    invoke-static {v0, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2602(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    new-instance v1, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {v1, v2, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2602(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;

    .line 333
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2600(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 334
    return-void
.end method

.method public enableAutoRunApp(Ljava/util/List;)V
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
    .local p1, enableList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 189
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$600(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$600(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;->cancel(Z)Z

    .line 192
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;
    invoke-static {v0, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$602(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    new-instance v1, Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {v1, v2, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$602(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;

    .line 195
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$600(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    return-void
.end method

.method public enableBackgroundAutoRunApp(Ljava/util/List;)V
    .locals 5
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
    .local p1, enableList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 340
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;->cancel(Z)Z

    .line 343
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;
    invoke-static {v0, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2802(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    new-instance v1, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {v1, v2, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2802(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;

    .line 346
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 347
    return-void
.end method

.method public listAppCache()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 200
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppCacheTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppCacheTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->cancel(Z)Z

    .line 203
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppCacheTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;
    invoke-static {v0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$802(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    new-instance v1, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppCacheTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$802(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    .line 206
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppCacheTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    return-void
.end method

.method public listAppData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 226
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppDataTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppDataTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->cancel(Z)Z

    .line 229
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppDataTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;
    invoke-static {v0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1202(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    new-instance v1, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppDataTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1202(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    .line 232
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppDataTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 233
    return-void
.end method

.method public listAppFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 290
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppFileTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppFileTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->cancel(Z)Z

    .line 293
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppFileTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;
    invoke-static {v0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2002(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    new-instance v1, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppFileTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2002(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;

    .line 296
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppFileTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 297
    return-void
.end method

.method public listAutoRunApp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 238
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1400(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1400(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->cancel(Z)Z

    .line 241
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;
    invoke-static {v0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1402(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    new-instance v1, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1402(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;

    .line 244
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1400(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 245
    return-void
.end method

.method public listBackgroundAutoRunApp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 313
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2400(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2400(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->cancel(Z)Z

    .line 316
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;
    invoke-static {v0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2402(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    new-instance v1, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2402(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;

    .line 319
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2400(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 321
    return-void
.end method

.method public listRunningProcess()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 249
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListRunningProcessTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1600(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListRunningProcessTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1600(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->cancel(Z)Z

    .line 252
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListRunningProcessTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;
    invoke-static {v0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1602(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    new-instance v1, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListRunningProcessTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1602(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;

    .line 255
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListRunningProcessTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1600(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 256
    return-void
.end method

.method public listSysGarbage()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 213
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListSysGarbageTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListSysGarbageTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;->cancel(Z)Z

    .line 216
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListSysGarbageTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;
    invoke-static {v0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1002(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    new-instance v1, Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListSysGarbageTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1002(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;

    .line 219
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListSysGarbageTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 220
    return-void
.end method

.method public registerCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    if-eqz p1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 265
    :cond_0
    return-void
.end method

.method public setRunningProcessIsChecked(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->unCheckedPkgSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1900(Lcom/zte/heartyservice/speedup/SpeedUpService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 286
    return-void
.end method

.method public setRunningProcessIsUnChecked(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->unCheckedPkgSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1900(Lcom/zte/heartyservice/speedup/SpeedUpService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method

.method public unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 270
    if-eqz p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 274
    :cond_0
    return-void
.end method
