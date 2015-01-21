.class Lcom/android/mms/ui/ConversationList$ModeCallback$6;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$ModeCallback;->setAllItemChecked(Landroid/view/ActionMode;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

.field final synthetic val$checked:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$ModeCallback;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2237
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$6;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iput-boolean p2, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$6;->val$checked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$6;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    #calls: Lcom/android/mms/ui/ConversationList$ModeCallback;->updateActionMode()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$ModeCallback;->access$1100(Lcom/android/mms/ui/ConversationList$ModeCallback;)V

    .line 2244
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$6;->val$checked:Z

    if-eqz v0, :cond_1

    .line 2245
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$6;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    #getter for: Lcom/android/mms/ui/ConversationList$ModeCallback;->mDeleteItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$ModeCallback;->access$4700(Lcom/android/mms/ui/ConversationList$ModeCallback;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2251
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$6;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$800(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2252
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$6;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$800(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    .line 2254
    :cond_0
    return-void

    .line 2247
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$6;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    #getter for: Lcom/android/mms/ui/ConversationList$ModeCallback;->mDeleteItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$ModeCallback;->access$4700(Lcom/android/mms/ui/ConversationList$ModeCallback;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
