.class public Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;
.super Landroid/os/AsyncTask;
.source "ZteAccountUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownLoadTask"
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
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "ctx"

    .prologue
    .line 218
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    .line 216
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 217
    iput-object p2, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$2(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;)Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;
    .locals 1
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .locals 3
    .parameter "params"

    .prologue
    .line 252
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->context:Landroid/content/Context;

    const-string v2, "http://cloud.ztedevices.com/zteappupgrade/pmd?ni=ZteAuthClient"

    #calls: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->downLoadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$5(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 256
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 261
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    const/4 v1, 0x0

    #setter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$2(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Landroid/app/ProgressDialog;)V

    .line 263
    :cond_1
    if-nez p1, :cond_2

    .line 264
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 266
    :cond_2
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->context:Landroid/content/Context;

    #calls: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->openApkFile(Landroid/content/Context;Ljava/io/File;)V
    invoke-static {v0, v1, p1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$6(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->onPostExecute(Ljava/io/File;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 222
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 223
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 225
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    const/4 v2, 0x0

    #setter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$2(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Landroid/app/ProgressDialog;)V

    .line 227
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$2(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Landroid/app/ProgressDialog;)V

    .line 228
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 230
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, -0x1

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->downloadApkCancelListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v4}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$4(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 231
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 232
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 235
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->onBackPressed()V

    .line 236
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v1

    new-instance v2, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask$1;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask$1;-><init>(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 249
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;->this$0:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    #getter for: Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 250
    return-void
.end method
