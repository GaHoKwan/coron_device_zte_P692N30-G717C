.class public Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;
.super Ljava/lang/Object;
.source "CreateAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$AbstractExportTask;,
        Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ExportTask;,
        Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$MultiExportTask;,
        Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$NotebookDeleteTask;,
        Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$ShareTask;
    }
.end annotation


# static fields
.field private static final NOTE_RENAME_EDITTEXT_MAX_LENGHT:I = 0x14

.field private static final START_WALLPAPER_PICK_RESULT:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateDeleteAlertDlg(Landroid/app/Activity;ILzte/com/cn/cloudnotepad/utils/ControlsUtils;)V
    .locals 4
    .parameter "activity"
    .parameter "noteId"
    .parameter "mControlsUtils"

    .prologue
    .line 165
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 168
    const v2, 0x104000a

    new-instance v3, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;

    invoke-direct {v3, p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$7;-><init>(Landroid/app/Activity;ILzte/com/cn/cloudnotepad/utils/ControlsUtils;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 186
    const/high16 v2, 0x104

    new-instance v3, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$8;

    invoke-direct {v3}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$8;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static CreateEmptyAlertDlg(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Lzte/com/cn/cloudnotepad/data/ResourceData;Ljava/util/LinkedList;Z)V
    .locals 9
    .parameter "createNewNoteActivity"
    .parameter "mNotesData"
    .parameter "mResourceData"
    .parameter
    .parameter "isNew"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            "Lzte/com/cn/cloudnotepad/data/ResourceData;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p3, mAddResourceFileNameList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 105
    const v8, 0x104000a

    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$3;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Lzte/com/cn/cloudnotepad/data/ResourceData;Ljava/util/LinkedList;ZLzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 116
    const/high16 v1, 0x104

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$4;

    invoke-direct {v2}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v6

    .line 122
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static CreateExportDlg(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V
    .locals 8
    .parameter "activity"
    .parameter "noteData"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 340
    new-array v0, v7, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 341
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 343
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 344
    .local v0, items:[Ljava/lang/CharSequence;
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, ".jpg"

    aput-object v2, v1, v4

    const-string v2, ".pdf"

    aput-object v2, v1, v5

    const-string v2, ".rtf"

    aput-object v2, v1, v6

    .line 346
    .local v1, suffixs:[Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 347
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 348
    new-instance v3, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$12;

    invoke-direct {v3, p0, p1, v1}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$12;-><init>(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;[Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 356
    const/high16 v3, 0x104

    new-instance v4, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$13;

    invoke-direct {v4}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$13;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 360
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static CreateInfoAlertDlg(Landroid/content/Context;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V
    .locals 4
    .parameter "mContext"
    .parameter "mNotesData"

    .prologue
    .line 249
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 251
    invoke-static {p0, p1}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->getNoteInfo(Landroid/content/Context;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 252
    const v2, 0x104000a

    new-instance v3, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$11;

    invoke-direct {v3}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$11;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static CreateMoveAlertDlg(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)V
    .locals 6
    .parameter "activity"
    .parameter "mNotesData"
    .parameter "notebook"

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, index:I
    new-instance v2, Lzte/com/cn/cloudnotepad/data/NotebookData;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/data/NotebookData;-><init>(Landroid/content/Context;)V

    .line 200
    .local v2, mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;
    const-string v3, "ui.CreateNewNoteActivity"

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-virtual {v2, p2}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNotebookIndex(Ljava/lang/String;)I

    move-result v1

    .line 212
    :cond_0
    :goto_0
    :try_start_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 214
    invoke-static {p0}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->getNotebookItems(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;

    invoke-direct {v5, p0, p1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$9;-><init>(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Lzte/com/cn/cloudnotepad/data/NotebookData;)V

    invoke-virtual {v3, v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 237
    const/high16 v4, 0x104

    new-instance v5, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$10;

    invoke-direct {v5}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$10;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 241
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_1
    return-void

    .line 203
    :cond_1
    if-eqz p1, :cond_2

    .line 204
    iget-object v3, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNotebookIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 206
    :cond_2
    sget-object v3, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 207
    sget-object v3, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNotebookIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static CreateMutiExportDlg(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .parameter "activity"
    .parameter
    .parameter "folderPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 518
    new-array v1, v8, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 519
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 521
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    .line 522
    .local v1, items:[Ljava/lang/CharSequence;
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, ".jpg"

    aput-object v3, v2, v5

    const-string v3, ".pdf"

    aput-object v3, v2, v6

    const-string v3, ".rtf"

    aput-object v3, v2, v7

    .line 524
    .local v2, suffixs:[Ljava/lang/String;
    :try_start_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 525
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 526
    new-instance v4, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$16;

    invoke-direct {v4, p0, p1, v2, p2}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$16;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 533
    const/high16 v4, 0x104

    new-instance v5, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$17;

    invoke-direct {v5}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$17;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 537
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static CreateNotebookDeleteAlertDlg(Landroid/content/Context;Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;)V
    .locals 4
    .parameter "context"
    .parameter "notebookData"

    .prologue
    .line 582
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 583
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 584
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 585
    const v2, 0x104000a

    new-instance v3, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$18;

    invoke-direct {v3, p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$18;-><init>(Landroid/content/Context;Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 591
    const/high16 v2, 0x104

    new-instance v3, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$19;

    invoke-direct {v3}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$19;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 595
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_0
    return-void

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static CreateRenameObjectAlertDlg(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V
    .locals 10
    .parameter "context"
    .parameter "controlData"
    .parameter "pos"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 128
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 129
    .local v2, renameEditText:Landroid/widget/EditText;
    iget-object v3, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    .line 130
    .local v3, title:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    new-array v5, v9, [Landroid/text/InputFilter;

    .line 132
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v8

    .line 131
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 133
    iget-object v5, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 134
    iget-object v5, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v8, v5}, Landroid/widget/EditText;->setSelection(II)V

    .line 138
    :goto_0
    const/4 v0, 0x0

    .line 140
    .local v0, dialog:Landroid/app/AlertDialog;
    :try_start_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09001d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 142
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 143
    const v6, 0x104000a

    new-instance v7, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$5;

    invoke-direct {v7, p0, p1, v2, p2}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$5;-><init>(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Landroid/widget/EditText;I)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 148
    const/high16 v6, 0x104

    new-instance v7, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$6;

    invoke-direct {v7}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$6;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 152
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    :goto_1
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 158
    .local v4, window:Landroid/view/Window;
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 160
    .end local v4           #window:Landroid/view/Window;
    :cond_0
    return-void

    .line 136
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_1
    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    goto :goto_0

    .line 153
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static CreateShareDlg(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V
    .locals 9
    .parameter "activity"
    .parameter "noteData"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 407
    new-array v1, v8, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 408
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 410
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    .line 411
    .local v1, items:[Ljava/lang/CharSequence;
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, ".jpg"

    aput-object v3, v2, v5

    const-string v3, ".pdf"

    aput-object v3, v2, v6

    const-string v3, ".rtf"

    aput-object v3, v2, v7

    .line 413
    .local v2, suffixs:[Ljava/lang/String;
    :try_start_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 414
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 415
    new-instance v4, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$14;

    invoke-direct {v4, p0, p1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$14;-><init>(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;[Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 421
    const/high16 v4, 0x104

    new-instance v5, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$15;

    invoke-direct {v5}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$15;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 425
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static CreateWallpaperAlertDlg(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;[Ljava/lang/String;)V
    .locals 8
    .parameter "createNewNoteActivity"
    .parameter "wPFileName"

    .prologue
    .line 66
    new-instance v4, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;

    invoke-direct {v4, p0}, Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;-><init>(Landroid/content/Context;)V

    .line 67
    .local v4, wallpaperListAdapter:Lzte/com/cn/cloudnotepad/ui/WallpaperListAdapter;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030033

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 68
    .local v3, wallpaperLinearLayout:Landroid/widget/LinearLayout;
    const v5, 0x7f0600d5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 69
    .local v2, wallpaperGridView:Landroid/widget/GridView;
    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, dialog:Landroid/app/AlertDialog;
    :try_start_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 74
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 91
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    :goto_0
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->setWallPaperDialog(Landroid/app/AlertDialog;)V

    .line 98
    :cond_0
    return-void

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static showAboutDialog(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 603
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v4

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/NoteApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 604
    .local v1, mPm:Landroid/content/pm/PackageManager;
    const-string v3, "1.0.0"

    .line 607
    .local v3, versionName:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v4

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/NoteApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4000

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 608
    .local v2, pinfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    .end local v2           #pinfo:Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 615
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09009b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 616
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09009a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 617
    const v5, 0x7f090039

    new-instance v6, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$20;

    invoke-direct {v6}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$20;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 624
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 625
    return-void

    .line 609
    :catch_0
    move-exception v0

    .line 612
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sortDialog(Lzte/com/cn/cloudnotepad/ui/HomeActivity;[Ljava/lang/CharSequence;I)V
    .locals 4
    .parameter "homeActivity"
    .parameter "menuItems"
    .parameter "sortOrder"

    .prologue
    .line 45
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090028

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 46
    const/high16 v2, 0x104

    new-instance v3, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$1;

    invoke-direct {v3}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$1;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 51
    new-instance v2, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$2;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$2;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    .line 50
    invoke-virtual {v1, p1, p2, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
