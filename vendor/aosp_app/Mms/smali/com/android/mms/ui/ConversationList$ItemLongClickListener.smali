.class Lcom/android/mms/ui/ConversationList$ItemLongClickListener;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 2334
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ItemLongClickListener;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 2337
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ItemLongClickListener;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ItemLongClickListener;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ItemLongClickListener;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mActionModeListener:Lcom/android/mms/ui/ConversationList$ModeCallback;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$2600(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ModeCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/ConversationList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationList;->access$2502(Lcom/android/mms/ui/ConversationList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 2338
    const-string v0, "ConversationList"

    const-string v1, "OnItemLongClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ItemLongClickListener;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mActionModeListener:Lcom/android/mms/ui/ConversationList$ModeCallback;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$2600(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ModeCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v3, v1}, Lcom/android/mms/ui/ConversationList$ModeCallback;->setItemChecked(IZLandroid/database/Cursor;)V

    .line 2340
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ItemLongClickListener;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mActionModeListener:Lcom/android/mms/ui/ConversationList$ModeCallback;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$2600(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ModeCallback;

    move-result-object v0

    #calls: Lcom/android/mms/ui/ConversationList$ModeCallback;->updateActionMode()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$ModeCallback;->access$1100(Lcom/android/mms/ui/ConversationList$ModeCallback;)V

    .line 2341
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ItemLongClickListener;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$800(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2342
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ItemLongClickListener;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$800(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    .line 2344
    :cond_0
    return v3
.end method
