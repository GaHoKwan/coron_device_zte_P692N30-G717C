.class final Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;
.super Landroid/content/CursorLoader;
.source "ShortcutPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ShortcutPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MailboxPickerLoader"
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mAllowUnread:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "accountId"
    .parameter "allowUnread"

    .prologue
    .line 240
    invoke-direct/range {p0 .. p6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iput-wide p7, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;->mAccountId:J

    .line 242
    iput-boolean p9, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;->mAllowUnread:Z

    .line 243
    return-void
.end method

.method private getValue(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 2
    .parameter "c"
    .parameter "index"

    .prologue
    .line 326
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    .line 327
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 337
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 329
    :pswitch_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    goto :goto_0

    .line 331
    :pswitch_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 333
    :pswitch_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 335
    :pswitch_3
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private updateMailboxNames(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 295
    if-nez p2, :cond_1

    .line 296
    const/4 v4, 0x0

    .line 316
    :cond_0
    return-object v4

    .line 298
    :cond_1
    invoke-static {}, Lcom/android/email/FolderProperties;->removeInstance()V

    .line 299
    invoke-static {p1}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v2

    .line 300
    .local v2, fp:Lcom/android/email/FolderProperties;
    new-instance v4, Lcom/android/email/data/ClosingMatrixCursor;

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, p2}, Lcom/android/email/data/ClosingMatrixCursor;-><init>([Ljava/lang/String;Landroid/database/Cursor;)V

    .line 301
    .local v4, matrixCursor:Landroid/database/MatrixCursor;
    const/4 v7, -0x1

    invoke-interface {p2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 302
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 303
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    .line 304
    .local v6, row:Landroid/database/MatrixCursor$RowBuilder;
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 305
    .local v0, columnCount:I
    const-string v7, "displayName"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 307
    .local v5, nameColumnIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 308
    if-ne v5, v3, :cond_3

    .line 309
    invoke-virtual {v2, p2}, Lcom/android/email/FolderProperties;->getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 313
    :goto_1
    invoke-virtual {v6, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    :cond_3
    invoke-direct {p0, p2, v3}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;->getValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, columnValue:Ljava/lang/Object;
    goto :goto_1
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 247
    new-instance v4, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->access$000()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 249
    .local v4, unreadCursor:Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 250
    .local v1, context:Landroid/content/Context;
    iget-boolean v5, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;->mAllowUnread:Z

    if-eqz v5, :cond_0

    .line 254
    const v5, 0x7f0800b2

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, mailboxName:Ljava/lang/String;
    new-array v5, v12, [Ljava/lang/Object;

    const-wide/32 v6, 0x7ffffffc

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    const-wide/16 v6, -0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    aput-object v3, v5, v11

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 263
    .end local v3           #mailboxName:Ljava/lang/String;
    :cond_0
    iget-wide v5, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;->mAccountId:J

    const-wide/high16 v7, 0x1000

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 265
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->access$000()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 270
    .local v0, combinedMailboxesCursor:Landroid/database/MatrixCursor;
    const v5, 0x7f0800b3

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 271
    .restart local v3       #mailboxName:Ljava/lang/String;
    new-array v5, v12, [Ljava/lang/Object;

    const-wide/32 v6, 0x7ffffffd

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    const-wide/16 v6, -0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    aput-object v3, v5, v11

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 277
    new-instance v5, Landroid/database/MergeCursor;

    new-array v6, v11, [Landroid/database/Cursor;

    aput-object v0, v6, v9

    aput-object v4, v6, v10

    invoke-direct {v5, v6}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 284
    .end local v0           #combinedMailboxesCursor:Landroid/database/MatrixCursor;
    .end local v3           #mailboxName:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 282
    :cond_1
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v2

    .line 283
    .local v2, mailboxCursor:Landroid/database/Cursor;
    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;->updateMailboxNames(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    .line 284
    new-instance v5, Landroid/database/MergeCursor;

    new-array v6, v11, [Landroid/database/Cursor;

    aput-object v2, v6, v9

    aput-object v4, v6, v10

    invoke-direct {v5, v6}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
