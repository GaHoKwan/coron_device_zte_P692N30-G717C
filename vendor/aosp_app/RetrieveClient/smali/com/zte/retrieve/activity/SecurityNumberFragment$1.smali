.class Lcom/zte/retrieve/activity/SecurityNumberFragment$1;
.super Ljava/lang/Object;
.source "SecurityNumberFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/activity/SecurityNumberFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/SecurityNumberFragment;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/SecurityNumberFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment$1;->this$0:Lcom/zte/retrieve/activity/SecurityNumberFragment;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 78
    :sswitch_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment$1;->this$0:Lcom/zte/retrieve/activity/SecurityNumberFragment;

    #getter for: Lcom/zte/retrieve/activity/SecurityNumberFragment;->mPresenter:Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/SecurityNumberFragment;->access$0(Lcom/zte/retrieve/activity/SecurityNumberFragment;)Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment$1;->this$0:Lcom/zte/retrieve/activity/SecurityNumberFragment;

    #getter for: Lcom/zte/retrieve/activity/SecurityNumberFragment;->etSecurityNumber:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/zte/retrieve/activity/SecurityNumberFragment;->access$1(Lcom/zte/retrieve/activity/SecurityNumberFragment;)Landroid/widget/EditText;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment$1;->this$0:Lcom/zte/retrieve/activity/SecurityNumberFragment;

    #getter for: Lcom/zte/retrieve/activity/SecurityNumberFragment;->etHostName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/zte/retrieve/activity/SecurityNumberFragment;->access$2(Lcom/zte/retrieve/activity/SecurityNumberFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 80
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->handleSaveBtnClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :sswitch_1
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment$1;->this$0:Lcom/zte/retrieve/activity/SecurityNumberFragment;

    #getter for: Lcom/zte/retrieve/activity/SecurityNumberFragment;->mPresenter:Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/SecurityNumberFragment;->access$0(Lcom/zte/retrieve/activity/SecurityNumberFragment;)Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->handleCancleBtnClick()V

    goto :goto_0

    .line 87
    :sswitch_2
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment$1;->this$0:Lcom/zte/retrieve/activity/SecurityNumberFragment;

    #getter for: Lcom/zte/retrieve/activity/SecurityNumberFragment;->mPresenter:Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;
    invoke-static {v0}, Lcom/zte/retrieve/activity/SecurityNumberFragment;->access$0(Lcom/zte/retrieve/activity/SecurityNumberFragment;)Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->handleChooseContactBtnClick()V

    goto :goto_0

    .line 76
    :sswitch_data_0
    .sparse-switch
        0x7f09001d -> :sswitch_1
        0x7f09001f -> :sswitch_0
        0x7f090071 -> :sswitch_2
    .end sparse-switch
.end method
