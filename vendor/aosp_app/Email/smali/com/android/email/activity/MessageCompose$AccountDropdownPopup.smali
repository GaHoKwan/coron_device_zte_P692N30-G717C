.class Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountDropdownPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 3619
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;->this$0:Lcom/android/email/activity/MessageCompose;

    .line 3620
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 3621
    #getter for: Lcom/android/email/activity/MessageCompose;->mFromView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$4600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 3622
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 3623
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 3624
    new-instance v0, Lcom/android/email/activity/MessageCompose$AccountDropdownPopup$1;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/MessageCompose$AccountDropdownPopup$1;-><init>(Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3631
    return-void
.end method


# virtual methods
.method public show()V
    .locals 2

    .prologue
    .line 3635
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 3637
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 3638
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 3640
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 3641
    return-void
.end method