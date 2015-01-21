.class Lcom/autonavi/xmgd/utility/CustomDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/utility/CustomDialog;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/utility/CustomDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog$1;->this$0:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog$1;->this$0:Lcom/autonavi/xmgd/utility/CustomDialog;

    #getter for: Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogType:I
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->access$000(Lcom/autonavi/xmgd/utility/CustomDialog;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog$1;->this$0:Lcom/autonavi/xmgd/utility/CustomDialog;

    #setter for: Lcom/autonavi/xmgd/utility/CustomDialog;->cancelable:Z
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->access$102(Lcom/autonavi/xmgd/utility/CustomDialog;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog$1;->this$0:Lcom/autonavi/xmgd/utility/CustomDialog;

    #getter for: Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->access$200(Lcom/autonavi/xmgd/utility/CustomDialog;)Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->initListView()V

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog$1;->this$0:Lcom/autonavi/xmgd/utility/CustomDialog;

    #getter for: Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->access$200(Lcom/autonavi/xmgd/utility/CustomDialog;)Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->initListArray()V

    :cond_0
    return-void
.end method
