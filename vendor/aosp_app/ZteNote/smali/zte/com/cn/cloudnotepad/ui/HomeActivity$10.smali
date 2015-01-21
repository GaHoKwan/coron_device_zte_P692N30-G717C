.class Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;
.super Landroid/os/AsyncTask;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/HomeActivity;->downloadApk()V
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
        "Ljava/lang/Integer;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    .line 721
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .locals 3
    .parameter "params"

    .prologue
    .line 728
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->apkInfo:Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$8(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;

    move-result-object v2

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;->url:Ljava/lang/String;

    #calls: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->downLoadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$17(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 732
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 747
    :goto_0
    return-void

    .line 735
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 737
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    const/4 v1, 0x0

    #setter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$1(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Landroid/app/ProgressDialog;)V

    .line 738
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedUpdate:Z
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$3(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->finish()V

    .line 742
    :cond_1
    if-nez p1, :cond_2

    .line 743
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 745
    :cond_2
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #calls: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->openApkFile(Landroid/content/Context;Ljava/io/File;)V
    invoke-static {v0, v1, p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$18(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->onPostExecute(Ljava/io/File;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 724
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 725
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #calls: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->initDownloadUI()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$16(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    .line 726
    return-void
.end method
