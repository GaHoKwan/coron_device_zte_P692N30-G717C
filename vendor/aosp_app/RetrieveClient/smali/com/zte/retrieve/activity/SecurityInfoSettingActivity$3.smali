.class Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$3;
.super Ljava/lang/Object;
.source "SecurityInfoSettingActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->checkHostnameEmpty()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;

.field private final synthetic val$btnNext:Landroid/widget/Button;

.field private final synthetic val$pbContent:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$3;->this$0:Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;

    iput-object p2, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$3;->val$pbContent:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$3;->val$btnNext:Landroid/widget/Button;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 221
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 226
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "hostname"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$3;->this$0:Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;

    #getter for: Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->access$0(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;)Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$3;->val$pbContent:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->checkEmptyInput(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$3;->this$0:Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;

    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$3;->val$btnNext:Landroid/widget/Button;

    const/4 v2, 0x1

    #calls: Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->setNextButtonStatus(Landroid/widget/Button;Z)V
    invoke-static {v0, v1, v2}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->access$1(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;Landroid/widget/Button;Z)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$3;->this$0:Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;

    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$3;->val$btnNext:Landroid/widget/Button;

    const/4 v2, 0x0

    #calls: Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->setNextButtonStatus(Landroid/widget/Button;Z)V
    invoke-static {v0, v1, v2}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->access$1(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;Landroid/widget/Button;Z)V

    goto :goto_0
.end method
