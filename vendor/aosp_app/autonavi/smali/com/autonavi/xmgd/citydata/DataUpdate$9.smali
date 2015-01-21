.class Lcom/autonavi/xmgd/citydata/DataUpdate$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$9;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$9;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadSelectItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$1600(Lcom/autonavi/xmgd/citydata/DataUpdate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$9;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$9;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$1900(Lcom/autonavi/xmgd/citydata/DataUpdate;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->clearDataSelection(Ljava/util/ArrayList;)Z
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$2000(Lcom/autonavi/xmgd/citydata/DataUpdate;Ljava/util/ArrayList;)Z

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$9;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mGrpNoDownDataBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$1700(Lcom/autonavi/xmgd/citydata/DataUpdate;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$9;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshNoDownloadScreen()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$1300(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$9;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$9;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$9;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    const v3, 0x7f07022e

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$2102(Lcom/autonavi/xmgd/citydata/DataUpdate;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$9;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$2100(Lcom/autonavi/xmgd/citydata/DataUpdate;)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$9;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$2100(Lcom/autonavi/xmgd/citydata/DataUpdate;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
