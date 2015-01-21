.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;
.super Landroid/os/AsyncTask;
.source "CreateNewNoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2498
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    .line 2489
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2490
    const v1, 0x7f090068

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->setProgressDialog(Landroid/content/Context;I)V
    invoke-static {p1, p2, v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$5(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/content/Context;I)V

    .line 2491
    iget-object v1, p1, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 2492
    iget-object v1, p1, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2493
    .local v0, et:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2494
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .end local v0           #et:Landroid/widget/EditText;
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2504
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2509
    :goto_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->saveNote()V
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$6(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    .line 2510
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->noteId:I
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$7(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)I

    move-result v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceData:Lzte/com/cn/cloudnotepad/data/ResourceData;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$8(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/data/ResourceData;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mDeleteResourceFileNameList:Ljava/util/LinkedList;

    invoke-static {v1, v2, v3}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->deleteFiles(ILzte/com/cn/cloudnotepad/data/ResourceData;Ljava/util/LinkedList;)V

    .line 2511
    const/4 v1, 0x0

    return-object v1

    .line 2505
    :catch_0
    move-exception v0

    .line 2507
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2517
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2519
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$9(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2524
    :goto_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$SaveTask;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->finish()V

    .line 2525
    return-void

    .line 2520
    :catch_0
    move-exception v0

    goto :goto_0
.end method
