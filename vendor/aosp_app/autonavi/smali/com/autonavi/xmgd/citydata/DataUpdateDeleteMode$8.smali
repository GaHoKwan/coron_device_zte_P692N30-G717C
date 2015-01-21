.class Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$8;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$8;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 0

    return-void
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$8;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$500(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$8;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mGrpDownloadDataBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$400(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$8;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->addTaskToRemove()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$900(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$8;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->storeRemoveTasks()Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$8;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$8;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->stopDownloadTask()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$8;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->startRemoveDataTask()Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$8;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->showDialog(I)V

    return-void
.end method
