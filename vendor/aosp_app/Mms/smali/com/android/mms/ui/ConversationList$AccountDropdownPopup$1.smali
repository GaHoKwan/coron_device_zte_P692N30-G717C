.class Lcom/android/mms/ui/ConversationList$AccountDropdownPopup$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;-><init>(Lcom/android/mms/ui/ConversationList;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;

.field final synthetic val$this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2672
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$AccountDropdownPopup$1;->this$1:Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationList$AccountDropdownPopup$1;->val$this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 2674
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$AccountDropdownPopup$1;->this$1:Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;->this$0:Lcom/android/mms/ui/ConversationList;

    #calls: Lcom/android/mms/ui/ConversationList;->onAccountSpinnerItemClicked(I)V
    invoke-static {v0, p3}, Lcom/android/mms/ui/ConversationList;->access$5100(Lcom/android/mms/ui/ConversationList;I)V

    .line 2675
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$AccountDropdownPopup$1;->this$1:Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 2676
    return-void
.end method
