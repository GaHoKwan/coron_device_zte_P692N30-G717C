.class Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "ConversationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountDropdownPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationList;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 2667
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 2668
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 2669
    #getter for: Lcom/android/mms/ui/ConversationList;->mConversationSpinner:Landroid/view/View;
    invoke-static {p1}, Lcom/android/mms/ui/ConversationList;->access$5000(Lcom/android/mms/ui/ConversationList;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 2670
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 2671
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 2672
    new-instance v0, Lcom/android/mms/ui/ConversationList$AccountDropdownPopup$1;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/ConversationList$AccountDropdownPopup$1;-><init>(Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2678
    return-void
.end method


# virtual methods
.method public show()V
    .locals 2

    .prologue
    .line 2682
    const/16 v0, 0xf0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 2683
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 2684
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 2686
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 2687
    return-void
.end method
