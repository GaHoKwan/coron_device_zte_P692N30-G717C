.class Lcom/android/mms/ui/ComposeMessageActivity$38;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onProtocolChanged(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$mms:Z

.field final synthetic val$needToast:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4738
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->val$mms:Z

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->val$needToast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 4745
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4746
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->val$mms:Z

    if-eqz v0, :cond_1

    .line 4750
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4758
    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->val$needToast:Z

    if-eqz v0, :cond_0

    .line 4759
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->val$mms:Z

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->toastConvertInfo(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9800(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 4761
    :cond_0
    return-void

    .line 4752
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/ui/EnhanceEditText;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/EnhanceEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 4753
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4755
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
