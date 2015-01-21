.class Lcom/zte/retrieve/presenter/CloudBindingPresenter$4;
.super Ljava/lang/Object;
.source "CloudBindingPresenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/presenter/CloudBindingPresenter;->showLoginFailedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

.field private final synthetic val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogListView;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/presenter/CloudBindingPresenter;Lcom/zte/retrieve/utils/dialogcustom/DialogListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$4;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    iput-object p2, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$4;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogListView;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$4;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    #getter for: Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mView:Lcom/zte/retrieve/iview/ICloudBindingControlView;
    invoke-static {v0}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->access$7(Lcom/zte/retrieve/presenter/CloudBindingPresenter;)Lcom/zte/retrieve/iview/ICloudBindingControlView;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/retrieve/iview/ICloudBindingControlView;->startAccountManagerView()V

    .line 240
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$4;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogListView;

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->dismiss()V

    .line 241
    return-void

    .line 236
    :cond_1
    const-wide/16 v0, 0x1

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$4;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->handleNetErrorDialogClick()V

    goto :goto_0
.end method
