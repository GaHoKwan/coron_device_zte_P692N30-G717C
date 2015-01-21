.class Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;
.super Landroid/os/AsyncTask;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/SearchActivity;->startSearch()V
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

.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/SearchActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    .line 101
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

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "args"

    .prologue
    .line 116
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->getSearchData()V

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 127
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->doneSearch()V

    .line 128
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 107
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 108
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 109
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearchingString:Ljava/lang/String;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 111
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchActivity$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 112
    return-void
.end method
