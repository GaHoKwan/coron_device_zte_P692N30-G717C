.class Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;
.super Ljava/lang/Object;
.source "CreateAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateMoveAlertDlg(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

.field private final synthetic val$mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Lzte/com/cn/cloudnotepad/data/NotebookData;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 219
    const-string v0, "zhangxue"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "context.getApplicationInfo().className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v0, "ui.ViewNotePagerActivity"

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$activity:Landroid/app/Activity;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mViewNote:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-virtual {v0, p2, v1}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->moveNotebook(ILzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    .line 233
    :cond_0
    :goto_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$activity:Landroid/app/Activity;

    const v2, 0x7f0900a1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 234
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 235
    return-void

    .line 222
    :cond_1
    const-string v0, "ui.CreateNewNoteActivity"

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$activity:Landroid/app/Activity;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-virtual {v0, p2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->onMoveItemSelected(I)V

    goto :goto_0

    .line 224
    :cond_2
    const-string v0, "ui.HomeActivity"

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$activity:Landroid/app/Activity;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-virtual {v0, p2, v1}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->onMoveItemSelected(ILzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    .line 228
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNotebookList()V

    .line 229
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$activity:Landroid/app/Activity;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteBooksAdapter:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 230
    :cond_3
    const-string v0, "ui.SearchActivity"

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$activity:Landroid/app/Activity;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearchAdapter:Lzte/com/cn/cloudnotepad/ui/SearchAdapter;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;->val$mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-virtual {v0, p2, v1}, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->onMoveItemSelected(ILzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    goto :goto_0
.end method
