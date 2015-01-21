.class Lcom/autonavi/xmgd/citydata/DataUpdate$32;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$32;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

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

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$32;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mRemoveDownloadItemPosition:I
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$2400(Lcom/autonavi/xmgd/citydata/DataUpdate;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$32;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$32;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mRemoveDownloadItemPosition:I
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$2400(Lcom/autonavi/xmgd/citydata/DataUpdate;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->removeDownloadTask(I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$32;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshNoDownloadScreen()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$1300(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$32;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshDownloadingScreen()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$1400(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    :cond_0
    return-void
.end method
