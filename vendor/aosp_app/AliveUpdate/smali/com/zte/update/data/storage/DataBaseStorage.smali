.class public abstract Lcom/zte/update/data/storage/DataBaseStorage;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataBaseStorage.java"

# interfaces
.implements Lcom/zte/update/data/storage/IAppInfoStorage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/database/sqlite/SQLiteOpenHelper;",
        "Lcom/zte/update/data/storage/IAppInfoStorage",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final CMD_CREATE_TABLE:Ljava/lang/String; = "create table if not exists"

.field public static final CMD_INSERT_OR_IGNORE:Ljava/lang/String; = "insert or ignore into"

.field public static final CMD_REPLACE_OR_INSERT:Ljava/lang/String; = "replace into"

.field public static final CMD_SELECT:Ljava/lang/String; = "select * from"

.field public static final COL_ID:Ljava/lang/String; = "_id"

.field public static final COL_ID_TYPE:Ljava/lang/String; = "_id integer PRIMARY KEY AUTOINCREMENT"

.field public static final DATABASE_NAME:Ljava/lang/String; = "aliveupdate.db"

.field public static final DATABASE_VERSION:I = 0x3

.field protected static final DATA_BASE_STORAGE:Ljava/lang/String; = "DataBaseStorage"

.field private static isReset:Z


# instance fields
.field protected db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/update/data/storage/DataBaseStorage;->isReset:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 58
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v0

    const-string v1, "aliveupdate.db"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zte/update/data/storage/DataBaseStorage;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 63
    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/update/data/storage/DataBaseStorage;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 53
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 48
    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/data/storage/DataBaseStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 55
    return-void
.end method

.method private static appendCmdHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter "tableName"
    .parameter "cmd"
    .parameter "cmdbuffer"

    .prologue
    .line 431
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    return-void
.end method

.method private static appendColumnSet([Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter "cols"
    .parameter "cmdbuffer"

    .prologue
    .line 439
    const-string v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .line 441
    .local v0, endIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 442
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    return-void
.end method

.method private static appendValue([Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter "cols"
    .parameter "cmdbuffer"

    .prologue
    .line 413
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    const-string v0, "values"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    invoke-static {p0, p1}, Lcom/zte/update/data/storage/DataBaseStorage;->appendValueSpace([Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 418
    return-void
.end method

.method private static appendValueSpace([Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "cols"
    .parameter "cmdbuffer"

    .prologue
    .line 421
    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 423
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_0
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    return-void
.end method

.method private deleteAllTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    .line 499
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    const-string v6, "SELECT name FROM sqlite_master WHERE type=\'table\' order by name"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 500
    .local v1, cursor:Landroid/database/Cursor;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 502
    const-string v6, "name"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 503
    .local v5, name:Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    .end local v5           #name:Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 508
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 509
    .restart local v5       #name:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drop table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 512
    :catch_0
    move-exception v2

    .line 513
    .local v2, e:Ljava/lang/Exception;
    goto :goto_1

    .line 516
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #name:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    sput-boolean v6, Lcom/zte/update/data/storage/DataBaseStorage;->isReset:Z

    .line 517
    return-void
.end method

.method static varargs getCreateTableSqlstr(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "tableName"
    .parameter "cols"

    .prologue
    .line 337
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 338
    :cond_0
    const-string v1, "DataBaseStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cols="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/util/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 341
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 342
    .local v0, cmdbuffer:Ljava/lang/StringBuffer;
    const-string v1, "create table if not exists"

    invoke-static {p0, v1, v0}, Lcom/zte/update/data/storage/DataBaseStorage;->appendCmdHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 346
    invoke-static {p1, v0}, Lcom/zte/update/data/storage/DataBaseStorage;->appendColumnSet([Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static varargs getInsertOrIgnoreSqlstr(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tableName"
    .parameter "cols"

    .prologue
    .line 352
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 353
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 355
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 357
    .local v0, cmdbuffer:Ljava/lang/StringBuffer;
    const-string v1, "insert or ignore into"

    invoke-static {p0, v1, v0}, Lcom/zte/update/data/storage/DataBaseStorage;->appendCmdHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 360
    invoke-static {p1, v0}, Lcom/zte/update/data/storage/DataBaseStorage;->appendColumnSet([Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 363
    invoke-static {p1, v0}, Lcom/zte/update/data/storage/DataBaseStorage;->appendValue([Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static varargs getReplaceOrInsertSqlstr(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tableName"
    .parameter "cols"

    .prologue
    .line 369
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 370
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 372
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 374
    .local v0, cmdbuffer:Ljava/lang/StringBuffer;
    const-string v1, "replace into"

    invoke-static {p0, v1, v0}, Lcom/zte/update/data/storage/DataBaseStorage;->appendCmdHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 377
    invoke-static {p1, v0}, Lcom/zte/update/data/storage/DataBaseStorage;->appendColumnSet([Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 380
    invoke-static {p1, v0}, Lcom/zte/update/data/storage/DataBaseStorage;->appendValue([Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs getSelectSqlstr(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "tableName"
    .parameter "cols"

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 389
    .local v0, cmdbuffer:Ljava/lang/StringBuffer;
    const-string v3, "select * from"

    invoke-static {p0, v3, v0}, Lcom/zte/update/data/storage/DataBaseStorage;->appendCmdHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 391
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 392
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 409
    :goto_0
    return-object v3

    .line 395
    :cond_1
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const-string v3, "where"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    array-length v3, p1

    add-int/lit8 v1, v3, -0x1

    .line 401
    .local v1, endIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 402
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 406
    :cond_2
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static isRest()Z
    .locals 1

    .prologue
    .line 520
    sget-boolean v0, Lcom/zte/update/data/storage/DataBaseStorage;->isReset:Z

    return v0
.end method

.method private replace([Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter "columns"
    .parameter "bindArgs"

    .prologue
    .line 153
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 154
    :cond_0
    const-string v2, "columns or bindArgs is null"

    invoke-static {p0, v2}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->getTableName()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, tableName:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/zte/update/data/storage/DataBaseStorage;->getReplaceOrInsertSqlstr(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, sql:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/update/data/storage/DataBaseStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clearStorage()V
    .locals 3

    .prologue
    .line 477
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/update/data/storage/DataBaseStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public closeStorage()V
    .locals 0

    .prologue
    .line 453
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->close()V

    .line 455
    return-void
.end method

.method protected abstract createData(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method protected createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 72
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->getCreateTableSqlStr()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, createTable:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate table="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1}, Lcom/zte/update/data/storage/DataBaseStorage;->getMainKeyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/update/data/storage/DataBaseStorage;->remove(Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method protected abstract geMainKeyColumnName()Ljava/lang/String;
.end method

.method protected abstract getBindArgs(Ljava/lang/Object;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method protected getBindArgs(Ljava/lang/Object;[Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "columns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getColumnTypes()[Ljava/lang/String;
.end method

.method protected abstract getColumns()[Ljava/lang/String;
.end method

.method protected getColumnsExcept([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "keys"

    .prologue
    .line 149
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCreateTableSqlStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 331
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->getColumnTypes()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/update/data/storage/DataBaseStorage;->getCreateTableSqlstr(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTableName()Ljava/lang/String;
.end method

.method protected abstract initColumnIndex()V
.end method

.method public declared-synchronized insertOrIgnore(Ljava/lang/Object;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->getTableName()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, tableName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->getColumns()[Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, columns:[Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/zte/update/data/storage/DataBaseStorage;->getBindArgs(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, bindArgs:[Ljava/lang/Object;
    invoke-static {v3, v1}, Lcom/zte/update/data/storage/DataBaseStorage;->getInsertOrIgnoreSqlstr(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, sql:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/update/data/storage/DataBaseStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 91
    .end local v0           #bindArgs:[Ljava/lang/Object;
    .end local v1           #columns:[Ljava/lang/String;
    .end local v2           #sql:Ljava/lang/String;
    .end local v3           #tableName:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "mainKeyValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->geMainKeyColumnName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/zte/update/data/storage/DataBaseStorage;->load([Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/zte/update/data/storage/DataBaseStorage;->load([Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public load([Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    const/4 v2, 0x0

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1, p2}, Lcom/zte/update/data/storage/DataBaseStorage;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-gtz v3, :cond_2

    .line 190
    :cond_0
    if-eqz v0, :cond_1

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_1
    :goto_0
    return-object v2

    .line 183
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 185
    invoke-virtual {p0, v0}, Lcom/zte/update/data/storage/DataBaseStorage;->createData(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 190
    if-eqz v0, :cond_1

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    if-eqz v0, :cond_1

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 190
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public loadAll()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, v0, v0}, Lcom/zte/update/data/storage/DataBaseStorage;->loadAll([Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public loadAll([Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;
    .locals 5
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v2, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .line 242
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p1, p2}, Lcom/zte/update/data/storage/DataBaseStorage;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-gtz v4, :cond_2

    .line 255
    :cond_0
    if-eqz v0, :cond_1

    .line 256
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_1
    :goto_0
    return-object v2

    .line 247
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 248
    invoke-virtual {p0, v0}, Lcom/zte/update/data/storage/DataBaseStorage;->createData(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v3

    .line 249
    .local v3, t:Ljava/lang/Object;,"TT;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 252
    .end local v3           #t:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v1

    .line 253
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    if-eqz v0, :cond_1

    .line 256
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 255
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    if-eqz v0, :cond_1

    .line 256
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_4

    .line 256
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 68
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    invoke-virtual {p0, p1}, Lcom/zte/update/data/storage/DataBaseStorage;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 69
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 81
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "database oldVersion ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",newVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/zte/update/data/storage/DataBaseStorage;->deleteAllTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    return-void
.end method

.method protected query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 5
    .parameter "tableName"
    .parameter "key"
    .parameter "values"

    .prologue
    .line 461
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    if-eqz p2, :cond_0

    array-length v3, p2

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    array-length v3, p3

    if-nez v3, :cond_1

    .line 462
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/zte/update/data/storage/DataBaseStorage;->getSelectSqlstr(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, sql:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/update/data/storage/DataBaseStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 471
    :goto_0
    return-object v3

    .line 466
    .end local v2           #sql:Ljava/lang/String;
    :cond_1
    array-length v3, p3

    new-array v1, v3, [Ljava/lang/String;

    .line 467
    .local v1, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p3

    if-ge v0, v3, :cond_2

    .line 468
    aget-object v3, p3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 470
    :cond_2
    invoke-static {p1, p2}, Lcom/zte/update/data/storage/DataBaseStorage;->getSelectSqlstr(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 471
    .restart local v2       #sql:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/update/data/storage/DataBaseStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .parameter "mainkey"

    .prologue
    .line 291
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->geMainKeyColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zte/update/data/storage/DataBaseStorage;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 298
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, selection:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 302
    .local v1, selectAgrs:[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/zte/update/data/storage/DataBaseStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public saveAll(Ljava/util/Collection;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    .local p1, collections:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    iget-object v3, p0, Lcom/zte/update/data/storage/DataBaseStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 317
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 318
    .local v2, t:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, v2}, Lcom/zte/update/data/storage/DataBaseStorage;->insertOrIgnore(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #t:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save all exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    iget-object v3, p0, Lcom/zte/update/data/storage/DataBaseStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 324
    iget-object v3, p0, Lcom/zte/update/data/storage/DataBaseStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 326
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 323
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/zte/update/data/storage/DataBaseStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 324
    iget-object v3, p0, Lcom/zte/update/data/storage/DataBaseStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 323
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/zte/update/data/storage/DataBaseStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 324
    iget-object v4, p0, Lcom/zte/update/data/storage/DataBaseStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public update(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "keys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 113
    .local v1, colList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/zte/update/data/storage/DataBaseStorage;->getMainKeyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update colList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 117
    .local v2, columns:[Ljava/lang/String;
    invoke-virtual {p0, p1, v2}, Lcom/zte/update/data/storage/DataBaseStorage;->getBindArgs(Ljava/lang/Object;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, bindArgs:[Ljava/lang/Object;
    return-void
.end method

.method public update(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .parameter
    .parameter "keys"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v0, convalues:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 168
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/zte/update/data/storage/DataBaseStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->getTableName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/update/data/storage/DataBaseStorage;->getMainKeyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public updateExcept(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "keys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p2}, Lcom/zte/update/data/storage/DataBaseStorage;->getColumnsExcept([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, columns:[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 139
    const-string v2, "colunms is null"

    invoke-static {p0, v2}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/zte/update/data/storage/DataBaseStorage;->getBindArgs(Ljava/lang/Object;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 144
    .local v0, bindArgs:[Ljava/lang/Object;
    invoke-direct {p0, v1, v0}, Lcom/zte/update/data/storage/DataBaseStorage;->replace([Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized updateOrInsert(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, this:Lcom/zte/update/data/storage/DataBaseStorage;,"Lcom/zte/update/data/storage/DataBaseStorage<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zte/update/data/storage/DataBaseStorage;->getBindArgs(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, bindArgs:[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/zte/update/data/storage/DataBaseStorage;->getColumns()[Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, columns:[Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/zte/update/data/storage/DataBaseStorage;->replace([Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 103
    .end local v0           #bindArgs:[Ljava/lang/Object;
    .end local v1           #columns:[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
