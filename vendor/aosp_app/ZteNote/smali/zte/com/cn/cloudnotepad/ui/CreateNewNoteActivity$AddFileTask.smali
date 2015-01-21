.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$AddFileTask;
.super Landroid/os/AsyncTask;
.source "CreateNewNoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddFileTask"
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
.field mData:Landroid/content/Intent;

.field mRequestCode:I

.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "requestCode"
    .parameter "data"

    .prologue
    .line 2560
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$AddFileTask;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    .line 2552
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2553
    iput p3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$AddFileTask;->mRequestCode:I

    .line 2554
    iput-object p4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$AddFileTask;->mData:Landroid/content/Intent;

    .line 2555
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$AddFileTask;->mRequestCode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2556
    const v0, 0x7f09009d

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->setProgressDialog(Landroid/content/Context;I)V
    invoke-static {p1, p2, v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$5(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/content/Context;I)V

    .line 2558
    :goto_0
    return-void

    :cond_0
    const v0, 0x7f09009c

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->setProgressDialog(Landroid/content/Context;I)V
    invoke-static {p1, p2, v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$5(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$AddFileTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "arg0"

    .prologue
    .line 2565
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$AddFileTask;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$AddFileTask;->mRequestCode:I

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$AddFileTask;->mData:Landroid/content/Intent;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->saveFile(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$10(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;ILandroid/content/Intent;)V

    .line 2566
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$AddFileTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2572
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2574
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$AddFileTask;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$9(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2579
    :goto_0
    return-void

    .line 2575
    :catch_0
    move-exception v0

    goto :goto_0
.end method
