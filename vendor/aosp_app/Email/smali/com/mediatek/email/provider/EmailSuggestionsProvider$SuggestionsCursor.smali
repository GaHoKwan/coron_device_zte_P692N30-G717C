.class Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;
.super Ljava/lang/Object;
.source "EmailSuggestionsProvider.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/provider/EmailSuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionsCursor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;
    }
.end annotation


# static fields
.field private static final INTENT_ACTION_COLUMN:I = 0x1

.field private static final INTENT_DATA_COLUMN:I = 0x0

.field private static final INTENT_EXTRA_DATA_COLUMN:I = 0x2

.field private static final INTENT_TEXT_COLUMN_1:I = 0x3

.field private static final INTENT_TEXT_COLUMN_2:I = 0x4


# instance fields
.field mColumnCount:I

.field mCurrentRow:I

.field mDatabaseCursor:Landroid/database/Cursor;

.field mQuery:Ljava/lang/String;

.field mRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualColumns:[Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/email/provider/EmailSuggestionsProvider;


# direct methods
.method public constructor <init>(Lcom/mediatek/email/provider/EmailSuggestionsProvider;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "cursor"
    .parameter "query"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->this$0:Lcom/mediatek/email/provider/EmailSuggestionsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    .line 249
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "suggest_intent_data"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "suggest_intent_action"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "suggest_intent_extra_data"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "suggest_text_1"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "suggest_text_2"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    .line 131
    iput-object p3, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mQuery:Ljava/lang/String;

    .line 132
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    iput v1, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->computeRows()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 139
    .local v0, ex:Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private computeOffsets(Ljava/lang/String;)[I
    .locals 4
    .parameter "offsetsString"

    .prologue
    .line 188
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, vals:[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [I

    .line 190
    .local v1, retvals:[I
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 191
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 190
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 193
    :cond_0
    return-object v1
.end method

.method private computeRows()V
    .locals 9

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 178
    .local v6, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 179
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 180
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, displayName:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, subject:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, snippet:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    new-instance v0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;-><init>(Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 185
    .end local v3           #displayName:Ljava/lang/String;
    .end local v4           #subject:Ljava/lang/String;
    .end local v7           #snippet:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 351
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 355
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 359
    return-void
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 8
    .parameter "position"
    .parameter "window"

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->getCount()I

    move-result v1

    .line 198
    .local v1, count:I
    if-ltz p1, :cond_0

    add-int/lit8 v7, v1, 0x1

    if-le p1, v7, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 203
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->getPosition()I

    move-result v5

    .line 204
    .local v5, oldpos:I
    move v6, p1

    .line 205
    .local v6, pos:I
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 206
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 207
    invoke-virtual {p0}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->getColumnCount()I

    move-result v0

    .line 208
    .local v0, columnNum:I
    invoke-virtual {p2, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 209
    :goto_1
    invoke-virtual {p0, v6}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 210
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v0, :cond_2

    .line 211
    invoke-virtual {p0, v4}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, field:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 213
    invoke-virtual {p2, v3, v6, v4}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_4

    .line 214
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    .line 224
    .end local v3           #field:Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 218
    .restart local v3       #field:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v6, v4}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v7

    if-nez v7, :cond_4

    .line 219
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 227
    .end local v0           #columnNum:I
    .end local v3           #field:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #oldpos:I
    .end local v6           #pos:I
    :catch_0
    move-exception v2

    .line 231
    .local v2, e:Ljava/lang/IllegalStateException;
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    goto :goto_0

    .line 210
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .restart local v0       #columnNum:I
    .restart local v3       #field:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #oldpos:I
    .restart local v6       #pos:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 226
    .end local v3           #field:Ljava/lang/String;
    .end local v4           #i:I
    :cond_5
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    goto :goto_0

    .end local v0           #columnNum:I
    .end local v5           #oldpos:I
    .end local v6           #pos:I
    :catchall_0
    move-exception v7

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v7
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 2

    .prologue
    .line 263
    iget v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    iget-object v1, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "columnName"

    .prologue
    .line 267
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget v1, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    add-int/2addr v1, v0

    .line 272
    :goto_1
    return v1

    .line 267
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 276
    iget-object v3, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, x:[Ljava/lang/String;
    array-length v3, v1

    iget-object v4, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v2, v3, [Ljava/lang/String;

    .line 278
    .local v2, y:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 279
    aget-object v3, v1, v0

    aput-object v3, v2, v0

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 282
    array-length v3, v1

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    :cond_1
    return-object v2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 374
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 378
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 390
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 6
    .parameter "column"

    .prologue
    const/4 v3, 0x0

    .line 320
    iget v4, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    if-ge p1, v4, :cond_0

    .line 321
    iget-object v3, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 345
    :goto_0
    :pswitch_0
    return-object v3

    .line 326
    :cond_0
    iget-object v4, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    iget v5, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;

    .line 327
    .local v1, row:Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;
    iget v4, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    sub-int v4, p1, v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 329
    :pswitch_1
    const-string v3, "/view/mailbox"

    invoke-static {v3}, Lcom/android/emailcommon/utility/IntentUtilities;->createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 331
    .local v0, b:Landroid/net/Uri$Builder;
    iget-object v3, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/utility/IntentUtilities;->setAccountId(Landroid/net/Uri$Builder;J)V

    .line 332
    iget-object v3, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/utility/IntentUtilities;->setMailboxId(Landroid/net/Uri$Builder;J)V

    .line 333
    iget-object v3, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/utility/IntentUtilities;->setMessageId(Landroid/net/Uri$Builder;J)V

    .line 334
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 335
    .local v2, u:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 337
    .end local v0           #b:Landroid/net/Uri$Builder;
    .end local v2           #u:Landroid/net/Uri;
    :pswitch_2
    const-string v3, "com.mediatek.email.action.SEARCH_SUGGESTION_CLICKED"

    goto :goto_0

    .line 341
    :pswitch_3
    invoke-virtual {v1}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 343
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;->getSnippet()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getType(I)I
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 426
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 406
    iget v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    iget-object v1, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2

    .prologue
    .line 422
    iget v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    iget-object v1, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public move(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 298
    iget v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 288
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 289
    iput p1, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    .line 290
    iget-object v1, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;

    #getter for: Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;->mRowNumber:I
    invoke-static {v0}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;->access$000(Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 291
    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    check-cast v0, Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 435
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 439
    return-void
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "extras"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 451
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 455
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 459
    return-void
.end method
