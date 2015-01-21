.class Lcom/autonavi/xmgd/citydata/DataUpdate$27;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$27;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$27;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    const/4 v1, 0x0

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->isNeedStartDownloadWhenHaveWifi:Z
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$502(Lcom/autonavi/xmgd/citydata/DataUpdate;Z)Z

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

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$27;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    const/4 v1, 0x0

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->isNeedStartDownloadWhenHaveWifi:Z
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$502(Lcom/autonavi/xmgd/citydata/DataUpdate;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$27;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->startDownloadTask()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$700(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    return-void
.end method
