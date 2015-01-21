.class Lcom/android/mms/ui/ConversationList$ModeCallback$3;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$ModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

.field final synthetic val$mode:Landroid/view/ActionMode;

.field final synthetic val$threadIds2:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$ModeCallback;Ljava/util/HashSet;Landroid/view/ActionMode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1980
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$3;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$3;->val$threadIds2:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$3;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1982
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ConversationList$ModeCallback$3$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$ModeCallback$3$1;-><init>(Lcom/android/mms/ui/ConversationList$ModeCallback$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2001
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$3;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2002
    return-void
.end method
