.class Lcom/zte/retrieve/activity/SecurityPasswordFragment$1;
.super Ljava/lang/Object;
.source "SecurityPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/activity/SecurityPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field emptyCheck:Z

.field final synthetic this$0:Lcom/zte/retrieve/activity/SecurityPasswordFragment;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/SecurityPasswordFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment$1;->this$0:Lcom/zte/retrieve/activity/SecurityPasswordFragment;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment$1;->emptyCheck:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 63
    :pswitch_1
    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment$1;->this$0:Lcom/zte/retrieve/activity/SecurityPasswordFragment;

    iget-object v2, v2, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mView:Landroid/view/View;

    .line 64
    const v3, 0x7f090004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/EditText;

    .line 65
    .local v0, passwordContent:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment$1;->this$0:Lcom/zte/retrieve/activity/SecurityPasswordFragment;

    iget-object v2, v2, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mView:Landroid/view/View;

    .line 66
    const v3, 0x7f09007a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 65
    check-cast v1, Landroid/widget/EditText;

    .line 67
    .local v1, passwordNext:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment$1;->this$0:Lcom/zte/retrieve/activity/SecurityPasswordFragment;

    iget-object v2, v2, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mPresenter:Lcom/zte/retrieve/presenter/PasswordResetPresenter;

    .line 68
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 69
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Lcom/zte/retrieve/presenter/PasswordResetPresenter;->isPasswordEmpty(Ljava/lang/String;)Z

    move-result v2

    .line 67
    iput-boolean v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment$1;->emptyCheck:Z

    .line 70
    iget-boolean v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment$1;->emptyCheck:Z

    if-nez v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment$1;->this$0:Lcom/zte/retrieve/activity/SecurityPasswordFragment;

    iget-object v2, v2, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mPresenter:Lcom/zte/retrieve/presenter/PasswordResetPresenter;

    .line 72
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-virtual {v2, v3, v4}, Lcom/zte/retrieve/presenter/PasswordResetPresenter;->resetPassword(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    .end local v0           #passwordContent:Landroid/widget/EditText;
    .end local v1           #passwordNext:Landroid/widget/EditText;
    :pswitch_2
    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordFragment$1;->this$0:Lcom/zte/retrieve/activity/SecurityPasswordFragment;

    iget-object v2, v2, Lcom/zte/retrieve/activity/SecurityPasswordFragment;->mPresenter:Lcom/zte/retrieve/presenter/PasswordResetPresenter;

    invoke-virtual {v2}, Lcom/zte/retrieve/presenter/PasswordResetPresenter;->cancelButtonHandle()V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x7f09001d
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
