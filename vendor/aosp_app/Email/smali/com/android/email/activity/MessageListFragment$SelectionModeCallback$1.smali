.class Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->startSelectionMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

.field final synthetic val$actionMode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;Landroid/view/ActionMode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$1;->this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    iput-object p2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$1;->val$actionMode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$1;->this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$1;->val$actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1, p1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
