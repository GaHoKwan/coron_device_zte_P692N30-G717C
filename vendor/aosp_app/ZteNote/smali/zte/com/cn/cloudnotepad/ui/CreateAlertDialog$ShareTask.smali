.class public Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;
.super Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;
.source "CreateAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareTask"
.end annotation


# instance fields
.field private mNotes_Data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

.field private mSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "msgId"
    .parameter "notes_data"
    .parameter "suffix"

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    .line 372
    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->mNotes_Data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    .line 373
    iput-object p4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->mSuffix:Ljava/lang/String;

    .line 374
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 379
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->mSuffix:Ljava/lang/String;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->mNotes_Data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-static {v1, v2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createShareImage(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Z

    move-result v1

    iput-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->isSuccess:Z

    .line 391
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 381
    :cond_1
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->mSuffix:Ljava/lang/String;

    const-string v2, ".pdf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 382
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->mNotes_Data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-static {v1, v2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createSharePDF(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Z

    move-result v1

    iput-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->isSuccess:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 388
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 389
    const/4 v1, 0x0

    iput-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->isSuccess:Z

    goto :goto_0

    .line 383
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->mSuffix:Ljava/lang/String;

    const-string v2, ".rtf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->mNotes_Data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-static {v1, v2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createShareRTF(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Z

    move-result v1

    iput-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->isSuccess:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 396
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 398
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->isSuccess:Z

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090072

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 402
    :cond_0
    return-void
.end method
