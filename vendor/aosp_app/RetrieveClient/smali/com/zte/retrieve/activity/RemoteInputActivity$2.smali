.class Lcom/zte/retrieve/activity/RemoteInputActivity$2;
.super Ljava/lang/Object;
.source "RemoteInputActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/RemoteInputActivity;->checkPhoneNumberInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RemoteInputActivity;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RemoteInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity$2;->this$0:Lcom/zte/retrieve/activity/RemoteInputActivity;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 139
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 134
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "phoneNumber"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zte/retrieve/activity/RemoteInputActivity$2;->this$0:Lcom/zte/retrieve/activity/RemoteInputActivity;

    #getter for: Lcom/zte/retrieve/activity/RemoteInputActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteInputPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RemoteInputActivity;->access$0(Lcom/zte/retrieve/activity/RemoteInputActivity;)Lcom/zte/retrieve/presenter/RemoteInputPresenter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/retrieve/activity/RemoteInputActivity$2;->this$0:Lcom/zte/retrieve/activity/RemoteInputActivity;

    #getter for: Lcom/zte/retrieve/activity/RemoteInputActivity;->passwordContent:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/zte/retrieve/activity/RemoteInputActivity;->access$1(Lcom/zte/retrieve/activity/RemoteInputActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->isCheckInputNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/zte/retrieve/activity/RemoteInputActivity$2;->this$0:Lcom/zte/retrieve/activity/RemoteInputActivity;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity$2;->this$0:Lcom/zte/retrieve/activity/RemoteInputActivity;

    #getter for: Lcom/zte/retrieve/activity/RemoteInputActivity;->btnConfirm:Landroid/widget/Button;
    invoke-static {v1}, Lcom/zte/retrieve/activity/RemoteInputActivity;->access$2(Lcom/zte/retrieve/activity/RemoteInputActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/zte/retrieve/activity/RemoteInputActivity;->setConfirmButtonStatus(Landroid/widget/Button;Z)V
    invoke-static {v0, v1, v2}, Lcom/zte/retrieve/activity/RemoteInputActivity;->access$3(Lcom/zte/retrieve/activity/RemoteInputActivity;Landroid/widget/Button;Z)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/RemoteInputActivity$2;->this$0:Lcom/zte/retrieve/activity/RemoteInputActivity;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity$2;->this$0:Lcom/zte/retrieve/activity/RemoteInputActivity;

    #getter for: Lcom/zte/retrieve/activity/RemoteInputActivity;->btnConfirm:Landroid/widget/Button;
    invoke-static {v1}, Lcom/zte/retrieve/activity/RemoteInputActivity;->access$2(Lcom/zte/retrieve/activity/RemoteInputActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/zte/retrieve/activity/RemoteInputActivity;->setConfirmButtonStatus(Landroid/widget/Button;Z)V
    invoke-static {v0, v1, v2}, Lcom/zte/retrieve/activity/RemoteInputActivity;->access$3(Lcom/zte/retrieve/activity/RemoteInputActivity;Landroid/widget/Button;Z)V

    goto :goto_0
.end method
