.class Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$6;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$6;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mGrpDownloadDataBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$400(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$6;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$500(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$6;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->refreshDownloadScreen()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$600(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    return-void
.end method
