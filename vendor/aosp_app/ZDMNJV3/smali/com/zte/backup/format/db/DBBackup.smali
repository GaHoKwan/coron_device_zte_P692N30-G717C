.class public abstract Lcom/zte/backup/format/db/DBBackup;
.super Ljava/lang/Object;
.source "DBBackup.java"


# static fields
.field public static final ITEM_SIZE:I = 0x800


# instance fields
.field public LOG_TAG:Ljava/lang/String;

.field private composer:Lcom/zte/backup/composer/Composer;

.field private context:Landroid/content/Context;

.field totalItem:I


# direct methods
.method public constructor <init>(Lcom/zte/backup/composer/Composer;)V
    .locals 1
    .parameter "composer"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "DBBackup"

    iput-object v0, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/backup/format/db/DBBackup;->totalItem:I

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/format/db/DBBackup;->composer:Lcom/zte/backup/composer/Composer;

    .line 52
    iput-object p1, p0, Lcom/zte/backup/format/db/DBBackup;->composer:Lcom/zte/backup/composer/Composer;

    .line 53
    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/db/DBBackup;->context:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private ProcessDBRestore(Ljava/lang/String;)I
    .locals 8
    .parameter "dbPath"

    .prologue
    .line 194
    const/16 v3, 0x2002

    .line 195
    .local v3, iRet:I
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v4, pathFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 197
    const/16 v5, 0x2002

    .line 213
    :goto_0
    return v5

    .line 199
    :cond_0
    const/4 v0, 0x0

    .line 201
    .local v0, db:Lcom/zte/backup/format/db/OkbDBInterface;
    :try_start_0
    new-instance v1, Lcom/zte/backup/format/db/OkbDBInterface;

    const/4 v5, 0x0

    invoke-direct {v1, p1, v5}, Lcom/zte/backup/format/db/OkbDBInterface;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v0           #db:Lcom/zte/backup/format/db/OkbDBInterface;
    .local v1, db:Lcom/zte/backup/format/db/OkbDBInterface;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/zte/backup/format/db/DBBackup;->processRestore(Lcom/zte/backup/format/db/OkbDBInterface;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 208
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 209
    invoke-virtual {v1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    move-object v0, v1

    .end local v1           #db:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v0       #db:Lcom/zte/backup/format/db/OkbDBInterface;
    :cond_2
    :goto_1
    move v5, v3

    .line 213
    goto :goto_0

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_2
    iget-object v5, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ProcessDBRestore:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 209
    invoke-virtual {v0}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 207
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 208
    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 209
    invoke-virtual {v0}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 211
    :cond_3
    throw v5

    .line 207
    .end local v0           #db:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v1       #db:Lcom/zte/backup/format/db/OkbDBInterface;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #db:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v0       #db:Lcom/zte/backup/format/db/OkbDBInterface;
    goto :goto_3

    .line 204
    .end local v0           #db:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v1       #db:Lcom/zte/backup/format/db/OkbDBInterface;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #db:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v0       #db:Lcom/zte/backup/format/db/OkbDBInterface;
    goto :goto_2
.end method

.method private buildTableTitle(Landroid/database/Cursor;I)Ljava/util/ArrayList;
    .locals 7
    .parameter "cur"
    .parameter "columnCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/backup/format/db/tb_item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v3, mColumnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/backup/format/db/tb_item;>;"
    const/4 v0, 0x0

    .local v0, columnIndex:I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 166
    return-object v3

    .line 153
    :cond_0
    const/4 v4, 0x0

    .line 154
    .local v4, primary:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, columnName:Ljava/lang/String;
    const-string v5, "_id"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_1
    const-string v5, "icon"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "favicon"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 158
    const-string v5, "thumbnail"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "touch_icon"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 159
    :cond_2
    new-instance v1, Lcom/zte/backup/format/db/tb_item;

    const-string v5, "BLOB"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v2, v5, v6}, Lcom/zte/backup/format/db/tb_item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    .local v1, columnItem:Lcom/zte/backup/format/db/tb_item;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 162
    .end local v1           #columnItem:Lcom/zte/backup/format/db/tb_item;
    :cond_3
    new-instance v1, Lcom/zte/backup/format/db/tb_item;

    const-string v5, "TEXT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v2, v5, v6}, Lcom/zte/backup/format/db/tb_item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    .restart local v1       #columnItem:Lcom/zte/backup/format/db/tb_item;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private checkUserDataIsExist(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 15
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 352
    const/4 v9, 0x0

    .line 353
    .local v9, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 355
    .local v7, bResult:Z
    const/4 v12, 0x0

    .line 356
    .local v12, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getCheckExistKeys()Ljava/util/List;

    move-result-object v12

    .line 357
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 359
    .local v13, sb:Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-lt v11, v1, :cond_3

    .line 377
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, selection:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/backup/format/db/DBBackup;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 380
    if-eqz v9, :cond_1

    .line 381
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 382
    invoke-virtual {p0, v9}, Lcom/zte/backup/format/db/DBBackup;->deleteRowsByID(Landroid/database/Cursor;)Z

    move-result v7

    .line 384
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :cond_1
    if-eqz v9, :cond_2

    .line 396
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move v8, v7

    .line 392
    .end local v4           #selection:Ljava/lang/String;
    .end local v7           #bResult:Z
    .end local v11           #i:I
    .end local v13           #sb:Ljava/lang/StringBuffer;
    .local v8, bResult:Z
    :goto_1
    return v8

    .line 360
    .end local v8           #bResult:Z
    .restart local v7       #bResult:Z
    .restart local v11       #i:I
    .restart local v13       #sb:Ljava/lang/StringBuffer;
    :cond_3
    if-eqz v11, :cond_4

    .line 361
    :try_start_1
    const-string v1, " AND "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    :cond_4
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 364
    .local v14, value:Ljava/lang/String;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 365
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    const-string v1, "=\'"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    const-string v1, "\'"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 370
    :cond_5
    const-string v1, "("

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    const-string v1, " is null OR "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    const-string v1, "=\"\")"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 388
    .end local v11           #i:I
    .end local v13           #sb:Ljava/lang/StringBuffer;
    .end local v14           #value:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 389
    .local v10, e:Ljava/lang/Exception;
    if-eqz v9, :cond_6

    .line 390
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_6
    iget-object v1, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    if-eqz v9, :cond_7

    .line 396
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    move v8, v7

    .line 392
    .end local v7           #bResult:Z
    .restart local v8       #bResult:Z
    goto :goto_1

    .line 394
    .end local v8           #bResult:Z
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v7       #bResult:Z
    :catchall_0
    move-exception v1

    .line 395
    if-eqz v9, :cond_8

    .line 396
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_8
    throw v1
.end method

.method private clearTablesRestore(Z)I
    .locals 5
    .parameter "bCover"

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/zte/backup/format/db/DBBackup;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getURI()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getQueryDBSelwhenBackup()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    const/16 v1, 0x2001

    .line 227
    :goto_0
    return v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, ex:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/16 v1, 0x2002

    goto :goto_0
.end method

.method private getRestoreItemNum(Ljava/lang/String;)I
    .locals 14
    .parameter "dbPath"

    .prologue
    .line 318
    const/4 v9, 0x0

    .line 319
    .local v9, cur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 320
    .local v10, db:Lcom/zte/backup/format/db/OkbDBInterface;
    const/4 v8, -0x1

    .line 322
    .local v8, count:I
    :try_start_0
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    .local v13, file:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    new-instance v11, Lcom/zte/backup/format/db/OkbDBInterface;

    const/4 v0, 0x0

    invoke-direct {v11, p1, v0}, Lcom/zte/backup/format/db/OkbDBInterface;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v10           #db:Lcom/zte/backup/format/db/OkbDBInterface;
    .local v11, db:Lcom/zte/backup/format/db/OkbDBInterface;
    :try_start_1
    invoke-virtual {v11}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 327
    if-nez v9, :cond_1

    .line 344
    if-eqz v9, :cond_0

    .line 345
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v10, v11

    .end local v11           #db:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v10       #db:Lcom/zte/backup/format/db/OkbDBInterface;
    move v0, v8

    .line 348
    .end local v13           #file:Ljava/io/File;
    :goto_0
    return v0

    .line 330
    .end local v10           #db:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v11       #db:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v13       #file:Ljava/io/File;
    :cond_1
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 331
    invoke-virtual {v11}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v10, v11

    .line 344
    .end local v11           #db:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v10       #db:Lcom/zte/backup/format/db/OkbDBInterface;
    :goto_1
    if-eqz v9, :cond_2

    .line 345
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 348
    goto :goto_0

    .line 333
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 336
    .end local v13           #file:Ljava/io/File;
    :catch_0
    move-exception v12

    .line 338
    .local v12, ex:Ljava/lang/Exception;
    :goto_2
    if-eqz v10, :cond_4

    .line 339
    :try_start_3
    invoke-virtual {v10}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    if-eqz v9, :cond_5

    .line 345
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_5
    const/4 v0, -0x1

    goto :goto_0

    .line 343
    .end local v12           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 344
    :goto_3
    if-eqz v9, :cond_6

    .line 345
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_6
    throw v0

    .line 343
    .end local v10           #db:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v11       #db:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v13       #file:Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11           #db:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v10       #db:Lcom/zte/backup/format/db/OkbDBInterface;
    goto :goto_3

    .line 336
    .end local v10           #db:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v11       #db:Lcom/zte/backup/format/db/OkbDBInterface;
    :catch_1
    move-exception v12

    move-object v10, v11

    .end local v11           #db:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v10       #db:Lcom/zte/backup/format/db/OkbDBInterface;
    goto :goto_2
.end method

.method private hasCancel()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zte/backup/format/db/DBBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->isCancel()Z

    move-result v0

    return v0
.end method

.method private insertValues(Landroid/database/Cursor;Z)I
    .locals 7
    .parameter "cur"
    .parameter "isSameVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2001

    .line 265
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    .line 266
    .local v2, keys:[Ljava/lang/String;
    if-nez p2, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getDiffDBVersionKeys()[Ljava/lang/String;

    move-result-object v2

    .line 269
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .local v3, values:Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 273
    new-instance v0, Lcom/zte/backup/format/db/DBProvider;

    iget-object v5, p0, Lcom/zte/backup/format/db/DBBackup;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getURI()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/zte/backup/format/db/DBProvider;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 274
    .local v0, dbProviderImpl:Lcom/zte/backup/format/db/DBProvider;
    const/4 v5, 0x0

    invoke-virtual {v0, p1, v2, v5}, Lcom/zte/backup/format/db/DBProvider;->getOneRowValue(Landroid/database/Cursor;[Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object v3

    .line 275
    invoke-virtual {p0, v3}, Lcom/zte/backup/format/db/DBBackup;->validRowValues(Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 276
    iget-object v5, p0, Lcom/zte/backup/format/db/DBBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v5}, Lcom/zte/backup/composer/Composer;->increaseComposed()V

    .line 285
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    .line 270
    if-nez v5, :cond_1

    move v1, v4

    .line 287
    :goto_0
    return v1

    .line 280
    :cond_3
    invoke-virtual {p0, v3}, Lcom/zte/backup/format/db/DBBackup;->insertOneValuesToDB(Landroid/content/ContentValues;)I

    move-result v1

    .line 281
    .local v1, iRet:I
    if-eq v1, v4, :cond_2

    goto :goto_0
.end method

.method private processBackup(Lcom/zte/backup/format/db/OkbDBInterface;Lcom/zte/backup/format/db/DBProvider;)I
    .locals 11
    .parameter "db"
    .parameter "dbProviderImpl"

    .prologue
    const/16 v7, 0x2002

    .line 99
    const/4 v1, 0x0

    .line 101
    .local v1, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getQueryDBSelwhenBackup()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getProjection()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Lcom/zte/backup/format/db/DBProvider;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 102
    if-nez v1, :cond_1

    .line 138
    if-eqz v1, :cond_0

    .line 139
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 143
    :goto_0
    return v7

    .line 106
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 108
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 109
    .local v0, columnCount:I
    invoke-direct {p0, v1, v0}, Lcom/zte/backup/format/db/DBBackup;->buildTableTitle(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 110
    .local v3, mColumnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/backup/format/db/tb_item;>;"
    invoke-virtual {p1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9, v3}, Lcom/zte/backup/format/db/OkbDBInterface;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 111
    invoke-virtual {p1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 114
    :cond_2
    invoke-direct {p0}, Lcom/zte/backup/format/db/DBBackup;->hasCancel()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    .line 138
    if-eqz v1, :cond_3

    .line 139
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_3
    invoke-virtual {p1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 115
    const/16 v7, 0x2003

    goto :goto_0

    .line 117
    :cond_4
    const/4 v8, 0x1

    :try_start_2
    invoke-virtual {p2, v1, v8}, Lcom/zte/backup/format/db/DBProvider;->getOneRowValue(Landroid/database/Cursor;Z)Landroid/content/ContentValues;

    move-result-object v6

    .line 118
    .local v6, values:Landroid/content/ContentValues;
    invoke-virtual {p0, v6}, Lcom/zte/backup/format/db/DBBackup;->validRowValues(Landroid/content/ContentValues;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 130
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    .line 113
    if-nez v8, :cond_2

    .line 131
    invoke-virtual {p1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    if-eqz v1, :cond_5

    .line 139
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_5
    invoke-virtual {p1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 143
    const/16 v7, 0x2001

    goto :goto_0

    .line 121
    :cond_6
    :try_start_3
    invoke-virtual {p1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getTableName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 122
    .local v4, t:J
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_8

    .line 123
    iget-object v8, p0, Lcom/zte/backup/format/db/DBBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v8}, Lcom/zte/backup/composer/Composer;->increaseComposed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 133
    .end local v0           #columnCount:I
    .end local v3           #mColumnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/backup/format/db/tb_item;>;"
    .end local v4           #t:J
    .end local v6           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 134
    .local v2, ex:Ljava/lang/Exception;
    :try_start_4
    iget-object v8, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    if-eqz v1, :cond_7

    .line 139
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_7
    invoke-virtual {p1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 126
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #columnCount:I
    .restart local v3       #mColumnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/backup/format/db/tb_item;>;"
    .restart local v4       #t:J
    .restart local v6       #values:Landroid/content/ContentValues;
    :cond_8
    :try_start_5
    iget-object v8, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    const-string v9, "insert error"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 138
    if-eqz v1, :cond_9

    .line 139
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_9
    invoke-virtual {p1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 137
    .end local v0           #columnCount:I
    .end local v3           #mColumnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/backup/format/db/tb_item;>;"
    .end local v4           #t:J
    .end local v6           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v7

    .line 138
    if-eqz v1, :cond_a

    .line 139
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_a
    invoke-virtual {p1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 142
    throw v7
.end method

.method private processRestore(Lcom/zte/backup/format/db/OkbDBInterface;)I
    .locals 12
    .parameter "db"

    .prologue
    const/16 v11, 0x2002

    .line 232
    const/4 v8, 0x0

    .line 235
    .local v8, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0}, Lcom/zte/backup/format/db/DBBackup;->hasCancel()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    if-eqz v8, :cond_0

    .line 259
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_0
    const/16 v0, 0x2003

    .line 255
    :cond_1
    :goto_0
    return v0

    .line 239
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 240
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_5

    .line 258
    :cond_3
    if-eqz v8, :cond_4

    .line 259
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v11

    .line 241
    goto :goto_0

    .line 244
    :cond_5
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 245
    invoke-virtual {p1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/backup/format/db/DBBackup;->hasSameDBVersion(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v10

    .line 248
    .local v10, isSameVersion:Z
    invoke-virtual {p0, p1}, Lcom/zte/backup/format/db/DBBackup;->getConditionkeys(Lcom/zte/backup/format/db/OkbDBInterface;)V

    .line 251
    invoke-direct {p0, v8, v10}, Lcom/zte/backup/format/db/DBBackup;->insertValues(Landroid/database/Cursor;Z)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .line 258
    if-eqz v8, :cond_1

    .line 259
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 253
    .end local v10           #isSameVersion:Z
    :catch_0
    move-exception v9

    .line 254
    .local v9, ex:Ljava/lang/Exception;
    :try_start_3
    iget-object v0, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    if-eqz v8, :cond_6

    .line 259
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    move v0, v11

    .line 255
    goto :goto_0

    .line 257
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 258
    if-eqz v8, :cond_7

    .line 259
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_7
    throw v0
.end method


# virtual methods
.method public abstract changeContentValues(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/content/ContentValues;
.end method

.method public deleteRowsByID(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 401
    const/4 v0, 0x1

    return v0
.end method

.method public getBackupCountAndID()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 492
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 493
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 494
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 496
    .local v2, project:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/db/DBBackup;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getURI()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 497
    if-eqz v6, :cond_0

    .line 498
    const-string v0, "calllog_count"

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    const-string v0, "calllog_id"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 513
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 516
    :cond_1
    :goto_1
    return-object v8

    .line 502
    :cond_2
    :try_start_1
    const-string v0, "calllog_id"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 506
    :catch_0
    move-exception v7

    .line 507
    .local v7, ex:Ljava/lang/Exception;
    if-eqz v7, :cond_3

    .line 508
    :try_start_2
    iget-object v0, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 512
    :cond_3
    if-eqz v6, :cond_1

    .line 513
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 511
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 512
    if-eqz v6, :cond_4

    .line 513
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 515
    :cond_4
    throw v0
.end method

.method public getBackupDataSize()J
    .locals 2

    .prologue
    .line 462
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getCheckExistKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConditionkeys(Lcom/zte/backup/format/db/OkbDBInterface;)V
.end method

.method public getContentValuesForDB(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 11
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 436
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 437
    .local v10, mValues:Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 438
    .local v9, data:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/backup/format/db/DBBackup;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 439
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v7

    .line 441
    .local v7, columnNames:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, columnIndex:I
    :goto_0
    array-length v0, v7

    if-lt v6, v0, :cond_0

    .line 448
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 449
    return-object v10

    .line 442
    :cond_0
    aget-object v0, v7, v6

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #data:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 443
    .restart local v9       #data:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 444
    aget-object v0, v7, v6

    invoke-virtual {v10, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public abstract getDBName()Ljava/lang/String;
.end method

.method public abstract getDBVersionBySDKVersion()I
.end method

.method public abstract getDiffDBVersionKeys()[Ljava/lang/String;
.end method

.method public getItemCount()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 405
    const/4 v7, 0x0

    .line 406
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 408
    .local v6, count:I
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/db/DBBackup;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getURI()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getQueryDBSelwhenBackup()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 409
    if-nez v7, :cond_1

    .line 421
    if-eqz v7, :cond_0

    .line 422
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v9

    .line 425
    :goto_0
    return v0

    .line 412
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .line 421
    if-eqz v7, :cond_2

    .line 422
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v6

    .line 425
    goto :goto_0

    .line 414
    :catch_0
    move-exception v8

    .line 415
    .local v8, ex:Ljava/lang/Exception;
    if-eqz v8, :cond_3

    .line 416
    :try_start_2
    iget-object v0, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 421
    :cond_3
    if-eqz v7, :cond_4

    .line 422
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v9

    .line 418
    goto :goto_0

    .line 420
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 421
    if-eqz v7, :cond_5

    .line 422
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 424
    :cond_5
    throw v0
.end method

.method public abstract getProjection()[Ljava/lang/String;
.end method

.method public abstract getQueryDBSelwhenBackup()Ljava/lang/String;
.end method

.method public getRestoreDBTotalNum()I
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 466
    const/4 v8, 0x0

    .line 467
    .local v8, count:I
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zte/backup/format/db/DBBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v2}, Lcom/zte/backup/composer/Composer;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getDBName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 468
    .local v11, uri:Ljava/lang/String;
    invoke-static {v11, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 470
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 472
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 473
    if-eqz v9, :cond_0

    .line 474
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 482
    :cond_0
    if-eqz v9, :cond_1

    .line 483
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 485
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 488
    :goto_0
    return v8

    .line 477
    :catch_0
    move-exception v10

    .line 479
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    if-eqz v9, :cond_2

    .line 483
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 485
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 481
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 482
    if-eqz v9, :cond_3

    .line 483
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 485
    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 486
    throw v1
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public abstract getURI()Landroid/net/Uri;
.end method

.method public hasSameDBVersion(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3
    .parameter "db"

    .prologue
    .line 453
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    .line 454
    .local v1, OldVersion:I
    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getDBVersionBySDKVersion()I

    move-result v0

    .line 455
    .local v0, CurVersion:I
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public insertOneValuesToDB(Landroid/content/ContentValues;)I
    .locals 5
    .parameter "values"

    .prologue
    const/16 v1, 0x2001

    .line 291
    invoke-direct {p0}, Lcom/zte/backup/format/db/DBBackup;->hasCancel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    const/16 v1, 0x2003

    .line 314
    :goto_0
    return v1

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getURI()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/zte/backup/format/db/DBBackup;->checkUserDataIsExist(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/zte/backup/format/db/DBBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v2}, Lcom/zte/backup/composer/Composer;->increaseComposed()V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v2, p0, Lcom/zte/backup/format/db/DBBackup;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getURI()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/backup/format/db/DBBackup;->context:Landroid/content/Context;

    invoke-virtual {p0, v4, p1}, Lcom/zte/backup/format/db/DBBackup;->changeContentValues(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 307
    .local v0, t:Landroid/net/Uri;
    if-eqz v0, :cond_2

    .line 308
    iget-object v2, p0, Lcom/zte/backup/format/db/DBBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v2}, Lcom/zte/backup/composer/Composer;->increaseComposed()V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    const-string v2, "provider insert error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/16 v1, 0x2002

    goto :goto_0
.end method

.method public startBackup()I
    .locals 9

    .prologue
    const/16 v5, 0x2002

    .line 61
    new-instance v3, Lcom/zte/backup/format/db/DBProvider;

    iget-object v6, p0, Lcom/zte/backup/format/db/DBBackup;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getURI()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/zte/backup/format/db/DBProvider;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 62
    .local v3, dbProviderImpl:Lcom/zte/backup/format/db/DBProvider;
    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getQueryDBSelwhenBackup()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zte/backup/format/db/DBProvider;->getCount(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, p0, Lcom/zte/backup/format/db/DBBackup;->totalItem:I

    .line 63
    iget v6, p0, Lcom/zte/backup/format/db/DBBackup;->totalItem:I

    if-gez v6, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v5

    .line 65
    :cond_1
    iget v6, p0, Lcom/zte/backup/format/db/DBBackup;->totalItem:I

    if-eqz v6, :cond_0

    .line 69
    iget-object v6, p0, Lcom/zte/backup/format/db/DBBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v6}, Lcom/zte/backup/composer/Composer;->onStart()V

    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/zte/backup/format/db/DBBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v7}, Lcom/zte/backup/composer/Composer;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getDBName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, dbPath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 74
    .local v0, dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    const/16 v5, 0x2002

    .line 76
    .local v5, iRet:I
    :try_start_0
    new-instance v1, Lcom/zte/backup/format/db/OkbDBInterface;

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6}, Lcom/zte/backup/format/db/OkbDBInterface;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .local v1, dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    :try_start_1
    invoke-virtual {v1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getDBVersionBySDKVersion()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 79
    invoke-direct {p0, v1, v3}, Lcom/zte/backup/format/db/DBBackup;->processBackup(Lcom/zte/backup/format/db/OkbDBInterface;Lcom/zte/backup/format/db/DBProvider;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 85
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 87
    invoke-virtual {v1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    move-object v0, v1

    .end local v1           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v0       #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    goto :goto_0

    .line 81
    :catch_0
    move-exception v4

    .line 82
    .local v4, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "startBackup:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 84
    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 85
    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 87
    invoke-virtual {v0}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 89
    :cond_3
    throw v6

    .line 84
    .end local v0           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v1       #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v0       #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    goto :goto_2

    .line 81
    .end local v0           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v1       #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    :catch_1
    move-exception v4

    move-object v0, v1

    .end local v1           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v0       #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    goto :goto_1
.end method

.method public startRestore(Z)I
    .locals 6
    .parameter "replaceFile"

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, count:I
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zte/backup/format/db/DBBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v5}, Lcom/zte/backup/composer/Composer;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/backup/format/db/DBBackup;->getDBName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, dbPath:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/zte/backup/format/db/DBBackup;->getRestoreItemNum(Ljava/lang/String;)I

    move-result v0

    .line 174
    if-ltz v0, :cond_0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    iget-object v4, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    const-string v5, "get Restore num failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/16 v2, 0x2005

    .line 190
    :goto_0
    return v2

    .line 178
    :cond_1
    invoke-direct {p0, p1}, Lcom/zte/backup/format/db/DBBackup;->clearTablesRestore(Z)I

    move-result v2

    .line 179
    .local v2, iRet:I
    const/16 v4, 0x2001

    if-eq v4, v2, :cond_2

    .line 180
    iget-object v4, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    const-string v5, "clear tables failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/16 v2, 0x2002

    goto :goto_0

    .line 183
    :cond_2
    iput v0, p0, Lcom/zte/backup/format/db/DBBackup;->totalItem:I

    .line 184
    iget-object v4, p0, Lcom/zte/backup/format/db/DBBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v4}, Lcom/zte/backup/composer/Composer;->onStart()V

    .line 187
    invoke-direct {p0, v1}, Lcom/zte/backup/format/db/DBBackup;->ProcessDBRestore(Ljava/lang/String;)I

    move-result v2

    .line 188
    new-instance v3, Landroid/content/Intent;

    const-string v4, "zte.com.cn.alarmclock.BACKUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/zte/backup/format/db/DBBackup;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public validRowValues(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "values"

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method
