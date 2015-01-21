.class Lcom/autonavi/xmgd/utility/CustomDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/utility/CustomDialog;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/utility/CustomDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog$2;->this$0:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog$2;->this$0:Lcom/autonavi/xmgd/utility/CustomDialog;

    #getter for: Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->access$200(Lcom/autonavi/xmgd/utility/CustomDialog;)Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->setIsCheck(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog$2;->this$0:Lcom/autonavi/xmgd/utility/CustomDialog;

    #getter for: Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomDialogInterface:Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->access$400(Lcom/autonavi/xmgd/utility/CustomDialog;)Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog$2;->this$0:Lcom/autonavi/xmgd/utility/CustomDialog;

    #calls: Lcom/autonavi/xmgd/utility/CustomDialog;->getSelected(I)Ljava/util/List;
    invoke-static {v1, p3}, Lcom/autonavi/xmgd/utility/CustomDialog;->access$300(Lcom/autonavi/xmgd/utility/CustomDialog;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;->onListViewItemSelected(ILjava/util/List;)V

    return-void
.end method
