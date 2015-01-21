.class Lcom/zte/retrieve/activity/PasswordCheckActivity$2;
.super Ljava/lang/Object;
.source "PasswordCheckActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/PasswordCheckActivity;->checkPasswordInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/PasswordCheckActivity;

.field private final synthetic val$btnNext:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/PasswordCheckActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/PasswordCheckActivity$2;->this$0:Lcom/zte/retrieve/activity/PasswordCheckActivity;

    iput-object p2, p0, Lcom/zte/retrieve/activity/PasswordCheckActivity$2;->val$btnNext:Landroid/widget/Button;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 124
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 129
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "password"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 133
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/zte/retrieve/activity/PasswordCheckActivity$2;->this$0:Lcom/zte/retrieve/activity/PasswordCheckActivity;

    iget-object v1, p0, Lcom/zte/retrieve/activity/PasswordCheckActivity$2;->val$btnNext:Landroid/widget/Button;

    const/4 v2, 0x0

    #calls: Lcom/zte/retrieve/activity/PasswordCheckActivity;->setButtonStatus(Landroid/widget/Button;Z)V
    invoke-static {v0, v1, v2}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->access$0(Lcom/zte/retrieve/activity/PasswordCheckActivity;Landroid/widget/Button;Z)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/PasswordCheckActivity$2;->this$0:Lcom/zte/retrieve/activity/PasswordCheckActivity;

    iget-object v1, p0, Lcom/zte/retrieve/activity/PasswordCheckActivity$2;->val$btnNext:Landroid/widget/Button;

    const/4 v2, 0x1

    #calls: Lcom/zte/retrieve/activity/PasswordCheckActivity;->setButtonStatus(Landroid/widget/Button;Z)V
    invoke-static {v0, v1, v2}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->access$0(Lcom/zte/retrieve/activity/PasswordCheckActivity;Landroid/widget/Button;Z)V

    goto :goto_0
.end method
