.class Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$StartTask;
.super Landroid/os/AsyncTask;
.source "FirstEnterHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartTask"
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
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 189
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$StartTask;->this$0:Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;

    .line 187
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 188
    const v0, 0x7f090101

    #calls: Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->setProgressDialog(I)V
    invoke-static {p1, v0}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;I)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$StartTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "arg0"

    .prologue
    .line 194
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$StartTask;->this$0:Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$StartTask;->this$0:Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;

    const-class v3, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$StartTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 203
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$StartTask;->this$0:Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->access$1(Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$StartTask;->this$0:Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->finish()V

    .line 208
    return-void

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0
.end method
