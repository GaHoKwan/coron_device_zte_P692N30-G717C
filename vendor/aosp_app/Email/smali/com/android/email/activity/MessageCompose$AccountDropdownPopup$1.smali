.class Lcom/android/email/activity/MessageCompose$AccountDropdownPopup$1;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;-><init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;

.field final synthetic val$this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3624
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$AccountDropdownPopup$1;->this$1:Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;

    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$AccountDropdownPopup$1;->val$this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3626
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AccountDropdownPopup$1;->this$1:Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->onAccountSpinnerItemClicked(I)V
    invoke-static {v0, p3}, Lcom/android/email/activity/MessageCompose;->access$4700(Lcom/android/email/activity/MessageCompose;I)V

    .line 3627
    const-string v0, "MessageCompose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountDropdownPopup click position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3628
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AccountDropdownPopup$1;->this$1:Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 3629
    return-void
.end method
