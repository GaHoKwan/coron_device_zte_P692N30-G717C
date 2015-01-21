.class Lcom/autonavi/xmgd/citydata/DataUpdate$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$10;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

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

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$10;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$10;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadList:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$2300(Lcom/autonavi/xmgd/citydata/DataUpdate;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadItemPosition:I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$2202(Lcom/autonavi/xmgd/citydata/DataUpdate;I)I

    :cond_0
    return-void
.end method
