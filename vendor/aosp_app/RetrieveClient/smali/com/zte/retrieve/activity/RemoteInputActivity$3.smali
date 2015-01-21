.class Lcom/zte/retrieve/activity/RemoteInputActivity$3;
.super Ljava/lang/Object;
.source "RemoteInputActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/RemoteInputActivity;->checkSecurityPasswordInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RemoteInputActivity;

.field private final synthetic val$btnConfirm:Landroid/widget/Button;

.field private final synthetic val$pbContent:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RemoteInputActivity;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity$3;->this$0:Lcom/zte/retrieve/activity/RemoteInputActivity;

    iput-object p2, p0, Lcom/zte/retrieve/activity/RemoteInputActivity$3;->val$pbContent:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/zte/retrieve/activity/RemoteInputActivity$3;->val$btnConfirm:Landroid/widget/Button;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 172
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 167
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "password"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/zte/retrieve/activity/RemoteInputActivity$3;->this$0:Lcom/zte/retrieve/activity/RemoteInputActivity;

    #getter for: Lcom/zte/retrieve/activity/RemoteInputActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteInputPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RemoteInputActivity;->access$0(Lcom/zte/retrieve/activity/RemoteInputActivity;)Lcom/zte/retrieve/presenter/RemoteInputPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity$3;->val$pbContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->isCheckInputNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/zte/retrieve/activity/RemoteInputActivity$3;->this$0:Lcom/zte/retrieve/activity/RemoteInputActivity;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity$3;->val$btnConfirm:Landroid/widget/Button;

    const/4 v2, 0x0

    #calls: Lcom/zte/retrieve/activity/RemoteInputActivity;->setConfirmButtonStatus(Landroid/widget/Button;Z)V
    invoke-static {v0, v1, v2}, Lcom/zte/retrieve/activity/RemoteInputActivity;->access$3(Lcom/zte/retrieve/activity/RemoteInputActivity;Landroid/widget/Button;Z)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/RemoteInputActivity$3;->this$0:Lcom/zte/retrieve/activity/RemoteInputActivity;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity$3;->val$btnConfirm:Landroid/widget/Button;

    const/4 v2, 0x1

    #calls: Lcom/zte/retrieve/activity/RemoteInputActivity;->setConfirmButtonStatus(Landroid/widget/Button;Z)V
    invoke-static {v0, v1, v2}, Lcom/zte/retrieve/activity/RemoteInputActivity;->access$3(Lcom/zte/retrieve/activity/RemoteInputActivity;Landroid/widget/Button;Z)V

    goto :goto_0
.end method
