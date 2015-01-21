.class Lcom/android/contacts/editor/SelectAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/SelectAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

.field final synthetic val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/SelectAccountDialogFragment;Lcom/android/contacts/util/AccountsListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 108
    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v1, p2}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v1

    #setter for: Lcom/android/contacts/editor/SelectAccountDialogFragment;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;
    invoke-static {v0, v1}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$002(Lcom/android/contacts/editor/SelectAccountDialogFragment;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 109
    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    #getter for: Lcom/android/contacts/editor/SelectAccountDialogFragment;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;
    invoke-static {v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$000(Lcom/android/contacts/editor/SelectAccountDialogFragment;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    instance-of v0, v0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    #setter for: Lcom/android/contacts/editor/SelectAccountDialogFragment;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;
    invoke-static {v1, v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$002(Lcom/android/contacts/editor/SelectAccountDialogFragment;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 111
    iget-object v1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    #getter for: Lcom/android/contacts/editor/SelectAccountDialogFragment;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;
    invoke-static {v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$000(Lcom/android/contacts/editor/SelectAccountDialogFragment;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-virtual {v0}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->getSlotId()I

    move-result v0

    #setter for: Lcom/android/contacts/editor/SelectAccountDialogFragment;->mSlotId:I
    invoke-static {v1, v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$102(Lcom/android/contacts/editor/SelectAccountDialogFragment;I)I

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    #getter for: Lcom/android/contacts/editor/SelectAccountDialogFragment;->mSlotId:I
    invoke-static {v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$100(Lcom/android/contacts/editor/SelectAccountDialogFragment;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    #getter for: Lcom/android/contacts/editor/SelectAccountDialogFragment;->mSlotId:I
    invoke-static {v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$100(Lcom/android/contacts/editor/SelectAccountDialogFragment;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    #getter for: Lcom/android/contacts/editor/SelectAccountDialogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$200(Lcom/android/contacts/editor/SelectAccountDialogFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    #getter for: Lcom/android/contacts/editor/SelectAccountDialogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$200(Lcom/android/contacts/editor/SelectAccountDialogFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 119
    :cond_1
    const-string v0, "SelectAccountDialogFragment"

    const-string v1, "[onClick]PhoneBook is not ready for use"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    #getter for: Lcom/android/contacts/editor/SelectAccountDialogFragment;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;
    invoke-static {v1}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$000(Lcom/android/contacts/editor/SelectAccountDialogFragment;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v1

    #calls: Lcom/android/contacts/editor/SelectAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    invoke-static {v0, v1}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$300(Lcom/android/contacts/editor/SelectAccountDialogFragment;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 125
    :cond_3
    const-string v0, "SelectAccountDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slotId is invalid: mSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    #getter for: Lcom/android/contacts/editor/SelectAccountDialogFragment;->mSlotId:I
    invoke-static {v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$100(Lcom/android/contacts/editor/SelectAccountDialogFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    #getter for: Lcom/android/contacts/editor/SelectAccountDialogFragment;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;
    invoke-static {v1}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$000(Lcom/android/contacts/editor/SelectAccountDialogFragment;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v1

    #calls: Lcom/android/contacts/editor/SelectAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    invoke-static {v0, v1}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$300(Lcom/android/contacts/editor/SelectAccountDialogFragment;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    goto :goto_0
.end method
