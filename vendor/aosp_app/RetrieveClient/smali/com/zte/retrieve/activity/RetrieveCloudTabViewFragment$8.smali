.class Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$8;
.super Ljava/lang/Object;
.source "RetrieveCloudTabViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->activeButtonClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

.field private final synthetic val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogInput;

.field private final synthetic val$mEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;Landroid/widget/EditText;Lcom/zte/retrieve/utils/dialogcustom/DialogInput;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$8;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    iput-object p2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$8;->val$mEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$8;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogInput;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 182
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$8;->val$mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$8;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;
    invoke-static {v2}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$2(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->isPasswordCorrect(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$8;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$0(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)Landroid/app/Activity;

    move-result-object v2

    .line 185
    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 186
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$8;->val$mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 187
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$8;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    const-string v3, ""

    iget-object v4, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$8;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;
    invoke-static {v4}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$0(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f06009f

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$6(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$8;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    iget-object v3, v3, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->cloudServiceRun:Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 191
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$8;->val$dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogInput;

    invoke-virtual {v2}, Lcom/zte/retrieve/utils/dialogcustom/DialogInput;->dismiss()V

    .line 200
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 193
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$8;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$0(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f060002

    invoke-static {v2, v3}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$8;->val$mEditText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$8;->this$0:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    #getter for: Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->access$0(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f06003d

    invoke-static {v2, v3}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    goto :goto_0
.end method
