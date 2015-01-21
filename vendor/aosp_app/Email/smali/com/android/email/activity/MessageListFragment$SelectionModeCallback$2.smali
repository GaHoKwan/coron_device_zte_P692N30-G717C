.class Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$2;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$2;->this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$2;->this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    #getter for: Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mSelectionMenu:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->access$3700(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 1920
    return-void
.end method
