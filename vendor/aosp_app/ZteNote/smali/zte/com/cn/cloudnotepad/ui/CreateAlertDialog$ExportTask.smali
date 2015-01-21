.class public Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;
.super Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;
.source "CreateAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportTask"
.end annotation


# instance fields
.field private mNotes_Data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

.field private mSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "msgId"
    .parameter "failTips"
    .parameter "notes_data"
    .parameter "suffix"

    .prologue
    .line 312
    invoke-direct {p0, p1, p2, p3}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    .line 313
    iput-object p4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->mNotes_Data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    .line 314
    iput-object p5, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->mSuffix:Ljava/lang/String;

    .line 315
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    .line 321
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->mSuffix:Ljava/lang/String;

    invoke-static {v2, v3}, Lzte/com/cn/cloudnotepad/utils/StringUtils;->getFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, filePath:Ljava/lang/String;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090085

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/StringUtils;->getDescriptionPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->mSuccessToastMsg:Ljava/lang/String;

    .line 323
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->mSuffix:Ljava/lang/String;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->mNotes_Data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-static {v2, v3, v0}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createExportImage(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->isSuccess:Z

    .line 335
    .end local v0           #filePath:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 325
    .restart local v0       #filePath:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->mSuffix:Ljava/lang/String;

    const-string v3, ".pdf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->mNotes_Data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-static {v2, v3, v0}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createExportPDF(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->isSuccess:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    .end local v0           #filePath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 332
    .local v1, tr:Ljava/lang/Throwable;
    iput-boolean v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->isSuccess:Z

    .line 333
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 327
    .end local v1           #tr:Ljava/lang/Throwable;
    .restart local v0       #filePath:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->mSuffix:Ljava/lang/String;

    const-string v3, ".rtf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->mNotes_Data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-static {v2, v3, v0}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createExportRTF(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;->isSuccess:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
