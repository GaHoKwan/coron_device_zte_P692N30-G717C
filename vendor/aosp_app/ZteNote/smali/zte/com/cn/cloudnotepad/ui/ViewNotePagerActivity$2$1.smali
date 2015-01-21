.class Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;
.super Landroid/os/AsyncTask;
.source "ViewNotePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

.field final synthetic this$1:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;->this$1:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;

    .line 412
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

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "args"

    .prologue
    .line 427
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;->this$1:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;

    #getter for: Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;->access$0(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;)Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    move-result-object v1

    iget v1, v1, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    sget-object v2, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 428
    sget-object v1, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mNotesSortList:Ljava/util/LinkedList;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;->this$1:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;

    #getter for: Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;->access$0(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;)Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    move-result-object v2

    iget v2, v2, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mCurNotesPosition:I

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget v0, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    .line 429
    .local v0, noteId:I
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;->this$1:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;

    #getter for: Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;->access$0(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;)Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;->this$1:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;

    #getter for: Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;->access$0(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;)Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    move-result-object v2

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mViewNote:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-static {v1, v0, v2}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->deleteNote(Landroid/content/Context;ILzte/com/cn/cloudnotepad/utils/ControlsUtils;)V

    .line 431
    .end local v0           #noteId:I
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 439
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 440
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;->this$1:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;

    #getter for: Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;->access$0(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;)Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    move-result-object v0

    #calls: Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->doDelete()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 417
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 418
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;->this$1:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;

    #getter for: Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;->access$0(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;)Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 419
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 420
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;->this$1:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;

    #getter for: Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;->access$0(Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2;)Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    move-result-object v1

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 422
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity$2$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 423
    return-void
.end method
