.class Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;
.super Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;
.source "ApksManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/ApksManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public backupApks(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "restorePoints"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    .local p1, backupApkList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mBackupApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1600(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mBackupApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1600(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;->cancel(Z)Z

    .line 194
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mBackupApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1602(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    new-instance v1, Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {v1, v2, p1, p2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Ljava/util/List;Ljava/lang/String;)V

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mBackupApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1602(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;

    .line 197
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mBackupApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1600(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    return-void
.end method

.method public clearDefaultSetting(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, clearList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 157
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mClearDefaultSettingTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mClearDefaultSettingTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->cancel(Z)Z

    .line 159
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mClearDefaultSettingTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;
    invoke-static {v0, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1002(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    new-instance v1, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {v1, v2, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mClearDefaultSettingTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1002(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;

    .line 162
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mClearDefaultSettingTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 164
    return-void
.end method

.method public listDefaultSettingApp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 168
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListDefaultSettingAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListDefaultSettingAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->cancel(Z)Z

    .line 170
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListDefaultSettingAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;
    invoke-static {v0, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1202(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    new-instance v1, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListDefaultSettingAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1202(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    .line 173
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListDefaultSettingAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 175
    return-void
.end method

.method public listMoveableApp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 82
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->cancel(Z)Z

    .line 84
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
    invoke-static {v0, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$002(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    new-instance v1, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$002(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    .line 87
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 89
    return-void
.end method

.method public listSDCardApks()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 179
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListSDCardApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1400(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListSDCardApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1400(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->cancel(Z)Z

    .line 181
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListSDCardApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;
    invoke-static {v0, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1402(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    new-instance v1, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {v1, v2, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListSDCardApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1402(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;

    .line 186
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListSDCardApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1400(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 187
    return-void
.end method

.method public listUninstallableApp(Z)V
    .locals 5
    .parameter "inData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 143
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListUninstallableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$800(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListUninstallableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$800(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->cancel(Z)Z

    .line 145
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListUninstallableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;
    invoke-static {v0, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$802(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    new-instance v1, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {v1, v2, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListUninstallableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$802(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    .line 148
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListUninstallableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$800(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    return-void
.end method

.method public moveApptoInternal(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, moveList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 95
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoInternalTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoInternalTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->cancel(Z)Z

    .line 97
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoInternalTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;
    invoke-static {v0, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$202(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    new-instance v1, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {v1, v2, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoInternalTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$202(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    .line 100
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoInternalTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    return-void
.end method

.method public moveApptoSD(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, moveList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 108
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoSDTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$400(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoSDTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$400(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->cancel(Z)Z

    .line 110
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoSDTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;
    invoke-static {v0, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$402(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    new-instance v1, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {v1, v2, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoSDTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$402(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;

    .line 113
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoSDTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$400(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    return-void
.end method

.method public registerCallBack(Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 206
    :cond_0
    return-void
.end method

.method public uninstallApp(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, uninstallList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 121
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mUninstallAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$600(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mUninstallAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$600(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->cancel(Z)Z

    .line 123
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mUninstallAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;
    invoke-static {v0, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$602(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    new-instance v1, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {v1, v2, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mUninstallAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$602(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    .line 126
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mUninstallAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$600(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    return-void
.end method

.method public unregisterCallBack(Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 214
    :cond_0
    return-void
.end method
