.class Lcom/autonavi/xmgd/citydata/DataUpdate$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$11;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$11;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    iget v0, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->id:I

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mRemoveDownloadItemPosition:I
    invoke-static {v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$2402(Lcom/autonavi/xmgd/citydata/DataUpdate;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$11;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    return-void
.end method
