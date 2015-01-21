.class Lcom/zte/retrieve/presenter/CloudBindingPresenter$3;
.super Ljava/lang/Object;
.source "CloudBindingPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/presenter/CloudBindingPresenter;->showNetErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

.field private final synthetic val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/presenter/CloudBindingPresenter;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$3;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    iput-object p2, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$3;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$3;->this$0:Lcom/zte/retrieve/presenter/CloudBindingPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->displayBindingResultView()V

    .line 216
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$3;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->dismiss()V

    .line 217
    return-void
.end method
