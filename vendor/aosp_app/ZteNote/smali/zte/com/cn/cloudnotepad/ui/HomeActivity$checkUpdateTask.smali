.class Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;
.super Landroid/os/AsyncTask;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "checkUpdateTask"
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
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 324
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    .line 322
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 323
    const v0, 0x7f090097

    #calls: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->setProgressDialog(Landroid/content/Context;I)V
    invoke-static {p1, p2, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$6(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "arg0"

    .prologue
    .line 330
    new-instance v0, Lzte/com/cn/cloudnotepad/update/UpdaterNew;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/update/UpdaterNew;-><init>()V

    .line 331
    .local v0, updaterNew:Lzte/com/cn/cloudnotepad/update/UpdaterNew;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/update/UpdaterNew;->getUpdateApkInfo()Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;

    move-result-object v2

    #setter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->apkInfo:Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;
    invoke-static {v1, v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$7(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;)V

    .line 332
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 338
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 341
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    const/4 v1, 0x0

    #setter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$1(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Landroid/app/ProgressDialog;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->apkInfo:Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$8(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;

    move-result-object v0

    iget v0, v0, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;->retState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 344
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #calls: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->showAboutDialog()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$9(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 345
    :cond_2
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->apkInfo:Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$8(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;

    move-result-object v0

    iget v0, v0, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;->retState:I

    if-nez v0, :cond_3

    .line 346
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 350
    :goto_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedUpdate:Z
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$3(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->finish()V

    goto :goto_0

    .line 348
    :cond_3
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
