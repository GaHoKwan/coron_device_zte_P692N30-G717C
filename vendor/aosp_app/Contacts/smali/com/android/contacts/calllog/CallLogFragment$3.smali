.class Lcom/android/contacts/calllog/CallLogFragment$3;
.super Landroid/os/Handler;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const v4, 0x7f0c029d

    const/4 v1, 0x0

    .line 1010
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsFinished:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mIsFinished:Z
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogFragment;->access$700(Lcom/android/contacts/calllog/CallLogFragment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$800(Lcom/android/contacts/calllog/CallLogFragment;Ljava/lang/String;)V

    .line 1012
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1014
    :sswitch_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$300(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$300(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1020
    :sswitch_1
    const-string v2, "CallLogFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start WAIT_CURSOR_START !isFinished : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mIsFinished:Z
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$700(Lcom/android/contacts/calllog/CallLogFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mIsFinished:Z
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$700(Lcom/android/contacts/calllog/CallLogFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mEmptyTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$900(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContact:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$1000(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1024
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$1100(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1025
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContact:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$1000(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1026
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$1200(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1020
    goto :goto_1

    .line 1032
    :sswitch_2
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mIsFinished:Z
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$700(Lcom/android/contacts/calllog/CallLogFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mEmptyTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$900(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContact:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$1000(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c0279

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1039
    :sswitch_3
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mIsFinished:Z
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$700(Lcom/android/contacts/calllog/CallLogFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mEmptyTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$900(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContact:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$1000(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1012
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x4ce -> :sswitch_1
        0x4e2 -> :sswitch_2
        0x4e3 -> :sswitch_3
    .end sparse-switch
.end method
