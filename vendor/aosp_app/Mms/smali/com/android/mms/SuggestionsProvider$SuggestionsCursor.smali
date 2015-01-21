.class Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;
.super Ljava/lang/Object;
.source "SuggestionsProvider.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/SuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionsCursor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;
    }
.end annotation


# instance fields
.field private final INTENT_ACTION_COLUMN:I

.field private final INTENT_DATA_COLUMN:I

.field private final INTENT_EXTRA_DATA_COLUMN:I

.field private final INTENT_TEXT_COLUMN:I

.field mColumnCount:I

.field mCurrentRow:I

.field mDatabaseCursor:Landroid/database/Cursor;

.field mQuery:Ljava/lang/String;

.field mRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualColumns:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/SuggestionsProvider;


# direct methods
.method public constructor <init>(Lcom/android/mms/SuggestionsProvider;Landroid/database/Cursor;)V
    .locals 7
    .parameter
    .parameter "cursor"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    iput-object p1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->this$0:Lcom/android/mms/SuggestionsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    .line 254
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "suggest_intent_data"

    aput-object v2, v1, v3

    const-string v2, "suggest_intent_action"

    aput-object v2, v1, v4

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v1, v5

    const-string v2, "suggest_text_1"

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    .line 265
    iput v3, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->INTENT_DATA_COLUMN:I

    .line 266
    iput v4, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->INTENT_ACTION_COLUMN:I

    .line 267
    iput v5, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->INTENT_EXTRA_DATA_COLUMN:I

    .line 268
    iput v6, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->INTENT_TEXT_COLUMN:I

    .line 137
    iput-object p2, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    .line 139
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    iput v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    .line 141
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->computeRows()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 146
    .local v0, ex:Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private computeOffsets(Ljava/lang/String;)[I
    .locals 4
    .parameter "offsetsString"

    .prologue
    .line 193
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, vals:[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [I

    .line 196
    .local v1, retvals:[I
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 197
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 196
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 199
    :cond_0
    return-object v1
.end method

.method private computeRows()V
    .locals 8

    .prologue
    .line 173
    iget-object v5, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const-string v6, "snippet"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 175
    .local v4, snippetColumn:I
    iget-object v5, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 176
    .local v0, count:I
    const/4 v2, 0x0

    .line 177
    .local v2, previousSnippet:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 178
    iget-object v5, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 179
    iget-object v5, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, snippet:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 184
    iget-object v5, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;

    invoke-direct {v6, p0, v1, v3}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;-><init>(Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    const-string v5, "SuggestionsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "computeRows snippet = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 177
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v3           #snippet:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 359
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 363
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 367
    return-void
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 7
    .parameter "position"
    .parameter "window"

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->getCount()I

    move-result v1

    .line 204
    .local v1, count:I
    if-ltz p1, :cond_0

    add-int/lit8 v6, v1, 0x1

    if-le p1, v6, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->getPosition()I

    move-result v4

    .line 210
    .local v4, oldpos:I
    move v5, p1

    .line 211
    .local v5, pos:I
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 212
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 213
    invoke-virtual {p0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->getColumnCount()I

    move-result v0

    .line 214
    .local v0, columnNum:I
    invoke-virtual {p2, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 215
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 216
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 217
    invoke-virtual {p0, v3}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, field:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 219
    invoke-virtual {p2, v2, v5, v3}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_4

    .line 220
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    .line 230
    .end local v2           #field:Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 224
    .restart local v2       #field:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v5, v3}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v6

    if-nez v6, :cond_4

    .line 225
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 233
    .end local v0           #columnNum:I
    .end local v2           #field:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #oldpos:I
    .end local v5           #pos:I
    :catch_0
    move-exception v6

    .line 236
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    goto :goto_0

    .line 216
    .restart local v0       #columnNum:I
    .restart local v2       #field:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #oldpos:I
    .restart local v5       #pos:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 232
    .end local v2           #field:Ljava/lang/String;
    .end local v3           #i:I
    :cond_5
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 236
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    goto :goto_0

    .end local v0           #columnNum:I
    .end local v4           #oldpos:I
    .end local v5           #pos:I
    :catchall_0
    move-exception v6

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v6
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 2

    .prologue
    .line 272
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "columnName"

    .prologue
    .line 276
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    add-int/2addr v1, v0

    .line 281
    :goto_1
    return v1

    .line 276
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

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
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 379
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 285
    iget-object v3, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, x:[Ljava/lang/String;
    array-length v3, v1

    iget-object v4, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v2, v3, [Ljava/lang/String;

    .line 288
    .local v2, y:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 289
    aget-object v3, v1, v0

    aput-object v3, v2, v0

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 293
    array-length v3, v1

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    :cond_1
    return-object v2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 383
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 387
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 399
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 5
    .parameter "column"

    .prologue
    .line 332
    iget v3, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    if-ge p1, v3, :cond_0

    .line 333
    iget-object v3, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 353
    :goto_0
    return-object v3

    .line 339
    :cond_0
    iget-object v3, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;

    .line 340
    .local v1, row:Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;
    iget v3, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    sub-int v3, p1, v3

    packed-switch v3, :pswitch_data_0

    .line 353
    const/4 v3, 0x0

    goto :goto_0

    .line 342
    :pswitch_0
    const-string v3, "content://mms-sms/search"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 343
    .local v0, b:Landroid/net/Uri$Builder;
    const-string v3, "pattern"

    invoke-virtual {v1}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->getSnippet()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 345
    .local v2, u:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 347
    .end local v0           #b:Landroid/net/Uri$Builder;
    .end local v2           #u:Landroid/net/Uri;
    :pswitch_1
    const-string v3, "android.intent.action.SEARCH"

    goto :goto_0

    .line 349
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->getSnippet()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 351
    :pswitch_3
    invoke-virtual {v1}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->getSnippet()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getType(I)I
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 435
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 415
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

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
    .line 419
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

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
    .line 423
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

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
    .line 431
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

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
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public move(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 310
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 300
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 301
    iput p1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    .line 302
    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;

    #getter for: Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mRowNumber:I
    invoke-static {v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->access$000(Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 303
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    check-cast v0, Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 444
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 448
    return-void
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "extras"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 460
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 464
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 468
    return-void
.end method
