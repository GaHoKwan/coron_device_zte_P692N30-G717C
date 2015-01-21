.class public Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;
.super Landroid/os/AsyncTask;
.source "NoteListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiDeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "args"

    .prologue
    .line 259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v2, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->getNotesSortList()Ljava/util/ArrayList;

    .line 261
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget v3, v3, Lzte/com/cn/cloudnotepad/data/NotesData;->mTotalNumber:I

    if-lt v1, v3, :cond_0

    .line 267
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 273
    const/4 v3, 0x0

    return-object v3

    .line 262
    :cond_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    #getter for: Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->access$0(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    #getter for: Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesSortList:Ljava/util/ArrayList;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->access$2(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_2
    new-instance v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;-><init>()V

    .line 269
    .local v0, controlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControls(Ljava/lang/String;)V

    .line 270
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    iget-object v4, v3, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget v3, v3, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    invoke-static {v4, v3, v0}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->deleteNote(Landroid/content/Context;ILzte/com/cn/cloudnotepad/utils/ControlsUtils;)V

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 283
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;

    move-result-object v0

    sget-object v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    sget v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotebookGroupList(Ljava/lang/String;I)V

    .line 284
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->exitSelectMode()V

    .line 285
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getNoteBookData()Lzte/com/cn/cloudnotepad/data/NotebookData;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNotebookList()V

    .line 286
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteBooksAdapter:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->notifyDataSetChanged()V

    .line 288
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 251
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 252
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 253
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 255
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
