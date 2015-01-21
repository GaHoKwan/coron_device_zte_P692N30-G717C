.class public abstract Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteDBHandler"


# instance fields
.field protected mDB:Landroid/database/sqlite/SQLiteDatabase;

.field protected mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field protected mExecutor:Ljava/util/concurrent/Executor;

.field protected mQueryExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    iput-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mQueryExecutor:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mQueryExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    iput-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mQueryExecutor:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mQueryExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "SQLiteDBHandler"

    const-string v1, "Database is not opened"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method close()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "SQLiteDBHandler"

    const-string v2, "Database is not opened"

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endTransaction()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "SQLiteDBHandler"

    const-string v1, "Database is not opened"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endTransactionSuccessful()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SQLiteDBHandler"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v0, "SQLiteDBHandler"

    const-string v1, "Database is not opened"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SQLiteDBHandler"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v0, "SQLiteDBHandler"

    const-string v1, "Database is not opened"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-string v2, "SQLiteDBHandler"

    const-string v3, "Database is not opened"

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;Ljava/util/List;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, -0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v2, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    if-eqz p5, :cond_1

    :try_start_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v4, "task_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, p4, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-wide v7, v1

    move-wide v0, v7

    move-object v2, v6

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    :goto_2
    return-wide v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-wide v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_2
    const-string v2, "SQLiteDBHandler"

    const-string v3, "Database is not opened"

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)[J"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [J

    move v0, v1

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    const-wide/16 v4, -0x1

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :goto_1
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v4, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    :goto_2
    move-object v0, v2

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_3
    const-string v0, "SQLiteDBHandler"

    const-string v1, "Database is not opened"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "SQLiteDBHandler"

    const-string v1, "values is null"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3
.end method

.method open()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SQLiteDBHandler"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SQLiteDBHandler"

    const-string v1, "Database is not opened"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SQLiteDBHandler"

    const-string v1, "Database is not opened"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SQLiteDBHandler"

    const-string v1, "Database is not opened"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-string v2, "SQLiteDBHandler"

    const-string v3, "Database is not opened"

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public runQueryAsync(Lcom/baidu/pcs/file/BaiduPCSSQLiteTask;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mQueryExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler$2;-><init>(Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;Lcom/baidu/pcs/file/BaiduPCSSQLiteTask;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runTransactionAsync(Lcom/baidu/pcs/file/BaiduPCSSQLiteTask;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->runTransactionAsync(Lcom/baidu/pcs/file/BaiduPCSSQLiteTask;Landroid/os/Handler;)V

    return-void
.end method

.method public runTransactionAsync(Lcom/baidu/pcs/file/BaiduPCSSQLiteTask;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler$1;-><init>(Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;Lcom/baidu/pcs/file/BaiduPCSSQLiteTask;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SQLiteDBHandler"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v0, "SQLiteDBHandler"

    const-string v1, "Database is not opened"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "SQLiteDBHandler"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v1, "SQLiteDBHandler"

    const-string v2, "mDBnull,Database is not opened"

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p5, p6, p7, p8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_1
    const-string v1, "SQLiteDBHandler"

    const-string v2, "mDBnull,Database is not opened"

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
