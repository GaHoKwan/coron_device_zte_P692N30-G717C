.class Lcom/autonavi/xmgd/citydata/DataUpdate$16;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$16;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$16;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->setIsDownloadBaseData(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$16;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->finish()V

    return-void
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$16;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->restartNavigation()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$2900(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    return-void
.end method
