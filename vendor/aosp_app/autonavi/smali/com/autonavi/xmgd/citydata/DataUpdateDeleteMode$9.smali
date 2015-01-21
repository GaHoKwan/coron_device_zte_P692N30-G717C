.class Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$9;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$9;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$9;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->exitNavigation()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$1100(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

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

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$9;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->restartNavigation()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$1000(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    return-void
.end method
