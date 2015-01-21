.class Lcom/zte/retrieve/activity/SecurityPasswordActivity$1;
.super Ljava/lang/Object;
.source "SecurityPasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/SecurityPasswordActivity;->checkEmptyInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/SecurityPasswordActivity;

.field private final synthetic val$btnNext:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/SecurityPasswordActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity$1;->this$0:Lcom/zte/retrieve/activity/SecurityPasswordActivity;

    iput-object p2, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity$1;->val$btnNext:Landroid/widget/Button;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 101
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 96
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 84
    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity$1;->this$0:Lcom/zte/retrieve/activity/SecurityPasswordActivity;

    #getter for: Lcom/zte/retrieve/activity/SecurityPasswordActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;
    invoke-static {v2}, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->access$0(Lcom/zte/retrieve/activity/SecurityPasswordActivity;)Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity$1;->this$0:Lcom/zte/retrieve/activity/SecurityPasswordActivity;

    #getter for: Lcom/zte/retrieve/activity/SecurityPasswordActivity;->passwordContent:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->access$1(Lcom/zte/retrieve/activity/SecurityPasswordActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;->isPasswordEmpty(Ljava/lang/String;)Z

    move-result v1

    .line 85
    .local v1, isPwdEmpty:Z
    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity$1;->this$0:Lcom/zte/retrieve/activity/SecurityPasswordActivity;

    #getter for: Lcom/zte/retrieve/activity/SecurityPasswordActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;
    invoke-static {v2}, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->access$0(Lcom/zte/retrieve/activity/SecurityPasswordActivity;)Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity$1;->this$0:Lcom/zte/retrieve/activity/SecurityPasswordActivity;

    #getter for: Lcom/zte/retrieve/activity/SecurityPasswordActivity;->affirmPwdContent:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->access$2(Lcom/zte/retrieve/activity/SecurityPasswordActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;->isPasswordEmpty(Ljava/lang/String;)Z

    move-result v0

    .line 86
    .local v0, isAffirmPwdEmpty:Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity$1;->this$0:Lcom/zte/retrieve/activity/SecurityPasswordActivity;

    iget-object v3, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity$1;->val$btnNext:Landroid/widget/Button;

    const/4 v4, 0x0

    #calls: Lcom/zte/retrieve/activity/SecurityPasswordActivity;->setButtonStatus(Landroid/widget/Button;Z)V
    invoke-static {v2, v3, v4}, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->access$3(Lcom/zte/retrieve/activity/SecurityPasswordActivity;Landroid/widget/Button;Z)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity$1;->this$0:Lcom/zte/retrieve/activity/SecurityPasswordActivity;

    iget-object v3, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity$1;->val$btnNext:Landroid/widget/Button;

    const/4 v4, 0x1

    #calls: Lcom/zte/retrieve/activity/SecurityPasswordActivity;->setButtonStatus(Landroid/widget/Button;Z)V
    invoke-static {v2, v3, v4}, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->access$3(Lcom/zte/retrieve/activity/SecurityPasswordActivity;Landroid/widget/Button;Z)V

    goto :goto_0
.end method
