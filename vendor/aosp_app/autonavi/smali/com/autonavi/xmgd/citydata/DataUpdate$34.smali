.class Lcom/autonavi/xmgd/citydata/DataUpdate$34;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mZipExceptionId:I
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$3400(Lcom/autonavi/xmgd/citydata/DataUpdate;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->removeDownloadTask(I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getDownloadTaskItemListSize()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->startDownloadTask()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mZipExceptionId:I
    invoke-static {v0, v2}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$3402(Lcom/autonavi/xmgd/citydata/DataUpdate;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadingAdapter:Lcom/autonavi/xmgd/citydata/DownloadingAdapter;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$3500(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DownloadingAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->setZipExceptionId(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshAllScreen()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$3100(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    return-void
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mZipExceptionId:I
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$3400(Lcom/autonavi/xmgd/citydata/DataUpdate;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->removeDownloadTask(I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mZipExceptionId:I
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$3400(Lcom/autonavi/xmgd/citydata/DataUpdate;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getDataItemBasiconId(I)Lcom/autonavi/xmgd/citydata/DataItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->addDownloadTask(Lcom/autonavi/xmgd/citydata/DataItem;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mZipExceptionId:I
    invoke-static {v0, v2}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$3402(Lcom/autonavi/xmgd/citydata/DataUpdate;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadingAdapter:Lcom/autonavi/xmgd/citydata/DownloadingAdapter;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$3500(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DownloadingAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->setZipExceptionId(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshAllScreen()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$3100(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mZipExceptionId:I
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$3400(Lcom/autonavi/xmgd/citydata/DataUpdate;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->sortDownloadTaskById(II)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->storeDownloadTask()Z

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getDownloadTaskItemListSize()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->startDownloadTask()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mZipExceptionId:I
    invoke-static {v0, v2}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$3402(Lcom/autonavi/xmgd/citydata/DataUpdate;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadingAdapter:Lcom/autonavi/xmgd/citydata/DownloadingAdapter;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$3500(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DownloadingAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->setZipExceptionId(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$34;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshAllScreen()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$3100(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    goto :goto_0
.end method
