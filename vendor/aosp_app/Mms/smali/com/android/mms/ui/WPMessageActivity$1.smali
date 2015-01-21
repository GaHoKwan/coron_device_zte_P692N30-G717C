.class Lcom/android/mms/ui/WPMessageActivity$1;
.super Ljava/lang/Object;
.source "WPMessageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/WPMessageActivity;->initMessageList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/WPMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/WPMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageActivity$1;->this$0:Lcom/android/mms/ui/WPMessageActivity;

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

    .line 717
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$1;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity$1;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$1;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mActionModeListener:Lcom/android/mms/ui/WPMessageActivity$ModeCallback;
    invoke-static {v2}, Lcom/android/mms/ui/WPMessageActivity;->access$400(Lcom/android/mms/ui/WPMessageActivity;)Lcom/android/mms/ui/WPMessageActivity$ModeCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/WPMessageActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/mms/ui/WPMessageActivity;->access$302(Lcom/android/mms/ui/WPMessageActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 718
    const-string v0, "Mms/WapPush"

    const-string v1, "OnItemLongClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$1;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mActionModeListener:Lcom/android/mms/ui/WPMessageActivity$ModeCallback;
    invoke-static {v0}, Lcom/android/mms/ui/WPMessageActivity;->access$400(Lcom/android/mms/ui/WPMessageActivity;)Lcom/android/mms/ui/WPMessageActivity$ModeCallback;

    move-result-object v0

    invoke-virtual {v0, p3, v3}, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->setItemChecked(IZ)V

    .line 720
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$1;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$1;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/WPMessageListAdapter;->notifyDataSetChanged()V

    .line 723
    :cond_0
    return v3
.end method
