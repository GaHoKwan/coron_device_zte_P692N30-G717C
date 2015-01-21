.class Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$7;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$7;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$7;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadList:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$800(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadItemPosition:I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$702(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;I)I

    :cond_0
    return-void
.end method
