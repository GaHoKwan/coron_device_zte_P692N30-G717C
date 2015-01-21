.class Lcom/android/mms/ui/ConversationList$ModeCallback$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$ModeCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$ModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 1887
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$1;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 1889
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$1;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    #getter for: Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectionTitle:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$ModeCallback;->access$3600(Lcom/android/mms/ui/ConversationList$ModeCallback;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$1;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    #getter for: Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectionTitle:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$ModeCallback;->access$3600(Lcom/android/mms/ui/ConversationList$ModeCallback;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1892
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$1;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$800(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->isAllSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1893
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$1;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$1;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$2500(Lcom/android/mms/ui/ConversationList;)Landroid/view/ActionMode;

    move-result-object v1

    #calls: Lcom/android/mms/ui/ConversationList$ModeCallback;->setAllItemChecked(Landroid/view/ActionMode;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/mms/ui/ConversationList$ModeCallback;->access$3700(Lcom/android/mms/ui/ConversationList$ModeCallback;Landroid/view/ActionMode;Z)V

    .line 1897
    :goto_0
    return v3

    .line 1895
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$1;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$1;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$2500(Lcom/android/mms/ui/ConversationList;)Landroid/view/ActionMode;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/mms/ui/ConversationList$ModeCallback;->setAllItemChecked(Landroid/view/ActionMode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationList$ModeCallback;->access$3700(Lcom/android/mms/ui/ConversationList$ModeCallback;Landroid/view/ActionMode;Z)V

    goto :goto_0
.end method
