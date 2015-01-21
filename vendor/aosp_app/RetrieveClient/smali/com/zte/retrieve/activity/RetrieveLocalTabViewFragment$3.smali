.class Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$3;
.super Ljava/lang/Object;
.source "RetrieveLocalTabViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->showCloseDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

.field private final synthetic val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogInput;

.field private final synthetic val$mEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;Landroid/widget/EditText;Lcom/zte/retrieve/utils/dialogcustom/DialogInput;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$3;->this$0:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

    iput-object p2, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$3;->val$mEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$3;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogInput;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 238
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$3;->val$mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$3;->this$0:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;
    invoke-static {v2}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->access$0(Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;)Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->isPasswordCorrect(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$3;->this$0:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->access$1(Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;)Landroid/app/Activity;

    move-result-object v2

    .line 241
    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 242
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$3;->val$mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 243
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$3;->this$0:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

    invoke-virtual {v2, v4}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->setActiveViewSwitch(Z)V

    .line 244
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/zte/retrieve/controller/Controller;->setLocalActiveStatus(I)Z

    .line 245
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$3;->this$0:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;
    invoke-static {v2}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->access$0(Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;)Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->disableRetrieve()V

    .line 246
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$3;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogInput;

    invoke-virtual {v2}, Lcom/zte/retrieve/utils/dialogcustom/DialogInput;->dismiss()V

    .line 255
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 248
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$3;->this$0:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->access$1(Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f060002

    invoke-static {v2, v3}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$3;->val$mEditText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment$3;->this$0:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;->access$1(Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f06003d

    invoke-static {v2, v3}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    goto :goto_0
.end method
