.class Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
.super Landroid/os/Binder;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadTask(Lcom/autonavi/xmgd/citydata/DataItem;)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->addDownloadTask(Lcom/autonavi/xmgd/citydata/DataItem;)I
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$4200(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataItem;)I

    move-result v0

    return v0
.end method

.method public addTaskToRemove(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->addTaskToRemove(I)V
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$4400(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)V

    return-void
.end method

.method public addTaskToRemove(Lcom/autonavi/xmgd/citydata/DataItem;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->addTaskToRemove(Lcom/autonavi/xmgd/citydata/DataItem;)V
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$4300(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataItem;)V

    return-void
.end method

.method public clearDownloadTasks()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->clearDownloadTasks()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$4500(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    return-void
.end method

.method public clearRemoveTasks()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->clearRemoveTasks()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$4600(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    return-void
.end method

.method public getDataItemBasiconId(I)Lcom/autonavi/xmgd/citydata/DataItem;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDataItemBasiconId(I)Lcom/autonavi/xmgd/citydata/DataItem;
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$4900(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)Lcom/autonavi/xmgd/citydata/DataItem;

    move-result-object v0

    return-object v0
.end method

.method public getDataList()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDataList()Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$4700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    return v0
.end method

.method public getDownloadTaskDownloadedSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskDownloadedSize(I)I
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$5000(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)I

    move-result v0

    return v0
.end method

.method public getDownloadTaskItem(I)Lcom/autonavi/xmgd/citydata/DownloadItem;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskItem(I)Lcom/autonavi/xmgd/citydata/DownloadItem;
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2800(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadTaskItemList()[Lcom/autonavi/xmgd/citydata/DownloadItem;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskItemList()[Lcom/autonavi/xmgd/citydata/DownloadItem;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$5100(Lcom/autonavi/xmgd/citydata/DataUpdateService;)[Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadTaskItemListSize()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskItemListSize()I
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$5200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)I

    move-result v0

    return v0
.end method

.method public getDownloadTaskTotalSize(I)J
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskTotalSize(I)J
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$5300(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadedDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadedDataList()Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$4800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadedDataListFromLocal()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadedDataListFromLocal()Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$8500(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIsDownloadBaseData()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsDownloadBaseData:Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    return v0
.end method

.method public getIsInBackground()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getIsInBackground()Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$5500(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    return v0
.end method

.method public getIsInitService()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->isInitService:Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$8200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    return v0
.end method

.method public getIsMapRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsMapRunning:Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$8100(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    return v0
.end method

.method public getIsUseLazyProgressNotify()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getIsUseLazyProgressNotify()Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$5700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    return v0
.end method

.method public getMapVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getMapVersion()Ljava/lang/String;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$5900(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinNotifyDownloadSize()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getMinNotifyDownloadSize()I
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$6100(Lcom/autonavi/xmgd/citydata/DataUpdateService;)I

    move-result v0

    return v0
.end method

.method public getNoDownloadDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getNoDownloadDataList()Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$6200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getRemoveListSize()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getRemoveListSize()I
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$6300(Lcom/autonavi/xmgd/citydata/DataUpdateService;)I

    move-result v0

    return v0
.end method

.method public getRequestMapVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->getRequestMapVersion()Ljava/lang/String;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$5800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResVersion(ILjava/lang/String;)I
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getResVersion(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasTaskToRun()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->hasTaskToRun()Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$6400(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    return v0
.end method

.method public insertDownloadTask(Lcom/autonavi/xmgd/citydata/DataItem;I)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->insertDownloadTask(Lcom/autonavi/xmgd/citydata/DataItem;I)I
    invoke-static {v0, p1, p2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$6500(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataItem;I)I

    move-result v0

    return v0
.end method

.method public isBaseResourceFilesExists()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->isBaseResourceFilesExists()Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$6600(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    return v0
.end method

.method public isCityDataDownloaded(I)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isCityDataDownloaded(I)Z

    move-result v0

    return v0
.end method

.method public isDownloadTaskStarted(I)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isDownloadTaskStarted(I)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsRunning:Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    return v0
.end method

.method public removeDownloadTask(I)Lcom/autonavi/xmgd/citydata/DownloadItem;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->removeDownloadTask(I)Lcom/autonavi/xmgd/citydata/DownloadItem;
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$6700(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public removeFileDownloadListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->removeFileDownloadListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;)V
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$6900(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;)V

    return-void
.end method

.method public removeOnAllCompletionListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->removeOnAllCompletionListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;)V
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$7100(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;)V

    return-void
.end method

.method public removeOnFileRemovedListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->removeOnFileRemovedListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;)V
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$7300(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;)V

    return-void
.end method

.method public removeOnGetDataListListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->removeOnGetDataListListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;)V
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$7500(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;)V

    return-void
.end method

.method public setFileDownloadListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->setFileDownloadListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;)V
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$6800(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;)V

    return-void
.end method

.method public setInBackground(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->setInBackground(Z)V
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$5400(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)V

    return-void
.end method

.method public setIsDownloadBaseData(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsDownloadBaseData:Z
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$802(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z

    return-void
.end method

.method public setIsUseLazyProgressNotify(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->setIsUseLazyProgressNotify(Z)V
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$5600(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)V

    return-void
.end method

.method public setMinNotifyDownloadSize(I)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->setMinNotifyDownloadSize(I)Z
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$6000(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)Z

    move-result v0

    return v0
.end method

.method public setOnAllCompletionListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->setOnAllCompletionListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;)V
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$7000(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;)V

    return-void
.end method

.method public setOnFileRemovedListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->setOnFileRemovedListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;)V
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$7200(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;)V

    return-void
.end method

.method public setOnGetDataListListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->setOnGetDataListListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;)V
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$7400(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;)V

    return-void
.end method

.method public sortDownloadTaskById(II)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->sortDownloadTaskById(II)Z
    invoke-static {v0, p1, p2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$7600(Lcom/autonavi/xmgd/citydata/DataUpdateService;II)Z

    move-result v0

    return v0
.end method

.method public startDownloadTask()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->startDownloadTask()Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$600(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    return v0
.end method

.method public startRemoveDataTask()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->startRemoveDataTask()Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$7700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    return v0
.end method

.method public stopDownloadTask()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->stopDownloadTask()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$400(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    return-void
.end method

.method public stopRemoveTask()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->stopRemoveTask()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$7800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    return-void
.end method

.method public storeDownloadTask()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->storeDownloadTask()Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$7900(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    return v0
.end method

.method public storeRemoveTasks()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->storeRemoveTasks()Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$8000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z

    move-result v0

    return v0
.end method

.method public wantToUpdateMapdata(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->wantToUpdateMapdata(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$8300(Lcom/autonavi/xmgd/citydata/DataUpdateService;Ljava/lang/String;)V

    return-void
.end method

.method public wantToUpdateResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->wantToUpdateResource(I)V
    invoke-static {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$8400(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)V

    return-void
.end method
