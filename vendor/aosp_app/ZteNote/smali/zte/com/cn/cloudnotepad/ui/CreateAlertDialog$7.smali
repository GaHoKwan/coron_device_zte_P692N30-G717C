.class Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;
.super Ljava/lang/Object;
.source "CreateAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateDeleteAlertDlg(Landroid/app/Activity;ILzte/com/cn/cloudnotepad/utils/ControlsUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

.field private final synthetic val$noteId:I


# direct methods
.method constructor <init>(Landroid/app/Activity;ILzte/com/cn/cloudnotepad/utils/ControlsUtils;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;->val$noteId:I

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;->val$mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 170
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;->val$activity:Landroid/app/Activity;

    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;->val$noteId:I

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;->val$mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-static {v2, v3, v4}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->deleteNote(Landroid/content/Context;ILzte/com/cn/cloudnotepad/utils/ControlsUtils;)V

    .line 171
    const-string v2, "ui.SearchActivity"

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;->val$activity:Landroid/app/Activity;

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;

    move-result-object v1

    .line 173
    .local v1, notesData:Lzte/com/cn/cloudnotepad/data/NotesData;
    sget-object v3, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    sget v4, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;->val$activity:Landroid/app/Activity;

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v2}, Lzte/com/cn/cloudnotepad/data/NotesData;->getSearchNoteDateGroupList(Ljava/lang/String;ILjava/lang/String;)V

    .line 174
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;->val$activity:Landroid/app/Activity;

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearchAdapter:Lzte/com/cn/cloudnotepad/ui/SearchAdapter;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->notifyDataSetChanged()V

    .line 184
    .end local v1           #notesData:Lzte/com/cn/cloudnotepad/data/NotesData;
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const-string v2, "ui.HomeActivity"

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;->val$activity:Landroid/app/Activity;

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;

    move-result-object v1

    .line 177
    .restart local v1       #notesData:Lzte/com/cn/cloudnotepad/data/NotesData;
    sget-object v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    sget v3, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    invoke-virtual {v1, v2, v3}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotebookGroupList(Ljava/lang/String;I)V

    .line 178
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;->val$activity:Landroid/app/Activity;

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->notifyDataSetChanged()V

    .line 180
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;->val$activity:Landroid/app/Activity;

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getNoteBookData()Lzte/com/cn/cloudnotepad/data/NotebookData;

    move-result-object v0

    .line 181
    .local v0, mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;
    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNotebookList()V

    .line 182
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;->val$activity:Landroid/app/Activity;

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteBooksAdapter:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
