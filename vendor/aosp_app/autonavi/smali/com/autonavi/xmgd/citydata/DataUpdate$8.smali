.class Lcom/autonavi/xmgd/citydata/DataUpdate$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$8;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$8;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadSelectItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$1600(Lcom/autonavi/xmgd/citydata/DataUpdate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$8;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mGrpNoDownDataBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$1700(Lcom/autonavi/xmgd/citydata/DataUpdate;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$8;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->onTasksSelected()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$1800(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    return-void
.end method
