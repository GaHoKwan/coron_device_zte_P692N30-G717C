.class Lzte/com/cn/cloudnotepad/ui/HomeActivity$6;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/HomeActivity;->initViewOnConnect(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

.field private final synthetic val$accountChange:Z


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$6;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iput-boolean p2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$6;->val$accountChange:Z

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 478
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$6;->val$accountChange:Z

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$6;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$6;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    const v2, 0x7f0900d7

    invoke-virtual {v1, v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 481
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$6;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$13(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Lzte/com/cn/cloudnotepad/data/NotesData;

    move-result-object v0

    sget-object v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    sget v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotebookGroupList(Ljava/lang/String;I)V

    .line 482
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$6;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->notifyDataSetChanged()V

    .line 484
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$6;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$14(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Lzte/com/cn/cloudnotepad/data/NotebookData;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNotebookList()V

    .line 485
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$6;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteBooksAdapter:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->notifyDataSetChanged()V

    .line 486
    return-void
.end method
