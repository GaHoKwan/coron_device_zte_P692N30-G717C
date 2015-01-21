.class public Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;
.super Landroid/os/AsyncTask;
.source "CreateAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiExportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field isSuccess:Z

.field private mActivity:Landroid/app/Activity;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderPath:Ljava/lang/String;

.field mMsgId:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mSuccessNumber:I

.field private mSuffix:Ljava/lang/String;

.field mToastMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "msgId"
    .parameter
    .parameter "suffix"
    .parameter "folderPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 442
    .local p3, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->isSuccess:Z

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mSuccessNumber:I

    .line 443
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mActivity:Landroid/app/Activity;

    .line 444
    iput-object p5, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mFolderPath:Ljava/lang/String;

    .line 445
    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mDataList:Ljava/util/ArrayList;

    .line 446
    iput-object p4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mSuffix:Ljava/lang/String;

    .line 447
    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mMsgId:I

    .line 448
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 481
    const/4 v3, 0x0

    .line 482
    .local v3, i:I
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/StringUtils;->getFileDate()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, fileDate:Ljava/lang/String;
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 504
    :cond_0
    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mSuccessNumber:I

    if-nez v4, :cond_5

    .line 505
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mActivity:Landroid/app/Activity;

    const v5, 0x7f090087

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mToastMsg:Ljava/lang/String;

    .line 509
    :goto_1
    const/4 v4, 0x0

    return-object v4

    .line 484
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mFolderPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mSuffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, filePath:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mSuffix:Ljava/lang/String;

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 487
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-static {v5, v4, v2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createExportImage(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->isSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :cond_2
    :goto_2
    iget-boolean v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->isSuccess:Z

    if-eqz v4, :cond_0

    .line 497
    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mSuccessNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mSuccessNumber:I

    .line 498
    new-array v4, v9, [Ljava/lang/Integer;

    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mSuccessNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->publishProgress([Ljava/lang/Object;)V

    .line 483
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 488
    :cond_3
    :try_start_1
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mSuffix:Ljava/lang/String;

    const-string v5, ".pdf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 489
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-static {v5, v4, v2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createExportPDF(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->isSuccess:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, e:Ljava/lang/Exception;
    iput-boolean v8, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->isSuccess:Z

    goto :goto_2

    .line 490
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_2
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mSuffix:Ljava/lang/String;

    const-string v5, ".rtf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 491
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-static {v5, v4, v2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createExportRTF(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->isSuccess:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 507
    .end local v2           #filePath:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mActivity:Landroid/app/Activity;

    const v5, 0x7f090086

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mSuccessNumber:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mFolderPath:Ljava/lang/String;

    invoke-static {v7}, Lzte/com/cn/cloudnotepad/utils/StringUtils;->getDescriptionPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mToastMsg:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 452
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mActivity:Landroid/app/Activity;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->exitSelectMode()V

    .line 455
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 456
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mToastMsg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 459
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 463
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 464
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 465
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 466
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mMsgId:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 467
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 468
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 469
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 473
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 474
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 475
    .local v0, vlaue:I
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 477
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
