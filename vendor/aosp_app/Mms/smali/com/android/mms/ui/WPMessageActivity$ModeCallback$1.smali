.class Lcom/android/mms/ui/WPMessageActivity$ModeCallback$1;
.super Ljava/lang/Object;
.source "WPMessageActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/WPMessageActivity$ModeCallback;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/WPMessageActivity$ModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback$1;->this$1:Lcom/android/mms/ui/WPMessageActivity$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 1073
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback$1;->this$1:Lcom/android/mms/ui/WPMessageActivity$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/WPMessageListAdapter;->isAllSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback$1;->this$1:Lcom/android/mms/ui/WPMessageActivity$ModeCallback;

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback$1;->this$1:Lcom/android/mms/ui/WPMessageActivity$ModeCallback;

    iget-object v1, v1, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/android/mms/ui/WPMessageActivity;->access$300(Lcom/android/mms/ui/WPMessageActivity;)Landroid/view/ActionMode;

    move-result-object v1

    #calls: Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->setAllItemChecked(Landroid/view/ActionMode;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->access$1300(Lcom/android/mms/ui/WPMessageActivity$ModeCallback;Landroid/view/ActionMode;Z)V

    .line 1078
    :goto_0
    return v3

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback$1;->this$1:Lcom/android/mms/ui/WPMessageActivity$ModeCallback;

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback$1;->this$1:Lcom/android/mms/ui/WPMessageActivity$ModeCallback;

    iget-object v1, v1, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/android/mms/ui/WPMessageActivity;->access$300(Lcom/android/mms/ui/WPMessageActivity;)Landroid/view/ActionMode;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->setAllItemChecked(Landroid/view/ActionMode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->access$1300(Lcom/android/mms/ui/WPMessageActivity$ModeCallback;Landroid/view/ActionMode;Z)V

    goto :goto_0
.end method
