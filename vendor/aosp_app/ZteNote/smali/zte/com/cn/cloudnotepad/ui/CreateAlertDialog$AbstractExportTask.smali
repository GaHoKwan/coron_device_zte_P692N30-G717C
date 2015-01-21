.class public abstract Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;
.super Landroid/os/AsyncTask;
.source "CreateAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractExportTask"
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
.field protected isSuccess:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mFailToastMsg:Ljava/lang/String;

.field protected mMsgId:I

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field protected mSuccessToastMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "msgId"
    .parameter "failTips"

    .prologue
    .line 271
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mSuccessToastMsg:Ljava/lang/String;

    .line 268
    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mFailToastMsg:Ljava/lang/String;

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->isSuccess:Z

    .line 272
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mActivity:Landroid/app/Activity;

    .line 273
    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mMsgId:I

    .line 274
    if-eqz p3, :cond_0

    .line 275
    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mFailToastMsg:Ljava/lang/String;

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090087

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mFailToastMsg:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 295
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 298
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->isSuccess:Z

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mSuccessToastMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mFailToastMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 284
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 285
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 286
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 287
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mMsgId:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 289
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 290
    return-void
.end method
