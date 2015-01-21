.class public Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;
.super Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;
.source "CreateAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotebookDeleteTask"
.end annotation


# instance fields
.field private mNotebook_Data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;)V
    .locals 0
    .parameter "activity"
    .parameter "msgId"
    .parameter "failTips"
    .parameter "notebookData"

    .prologue
    .line 546
    invoke-direct {p0, p1, p2, p3}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    .line 547
    iput-object p4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;->mNotebook_Data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    .line 548
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 552
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;->mNotebook_Data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v1, v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    .line 553
    .local v1, notebookTitle:Ljava/lang/String;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;->mActivity:Landroid/app/Activity;

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getNoteBookData()Lzte/com/cn/cloudnotepad/data/NotebookData;

    move-result-object v0

    .line 554
    .local v0, mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;->mNotebook_Data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget v2, v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->id:I

    invoke-virtual {v0, v2}, Lzte/com/cn/cloudnotepad/data/NotebookData;->deleteNotebookData(I)V

    .line 555
    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNotebookList()V

    .line 556
    sget-object v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 557
    sget-object v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 558
    :cond_0
    sput-object v7, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    .line 559
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;->mActivity:Landroid/app/Activity;

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;

    move-result-object v2

    sget-object v3, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    sget v4, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    invoke-virtual {v2, v3, v4}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotebookGroupList(Ljava/lang/String;I)V

    .line 561
    :cond_1
    iput-boolean v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;->isSuccess:Z

    .line 562
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09008e

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;->mNotebook_Data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v6, v6, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;->mSuccessToastMsg:Ljava/lang/String;

    .line 563
    return-object v7
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 569
    invoke-super {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->onPostExecute(Ljava/lang/Void;)V

    .line 570
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;->mActivity:Landroid/app/Activity;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteBooksAdapter:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->notifyDataSetChanged()V

    .line 572
    sget-object v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;->mActivity:Landroid/app/Activity;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->notifyDataSetChanged()V

    .line 574
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;->mActivity:Landroid/app/Activity;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mAppName:Landroid/widget/TextView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    :cond_0
    return-void
.end method
