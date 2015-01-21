.class public abstract Lcom/baidu/pcs/file/BaiduPCSSQLiteTask;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected performQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected performTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public runQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/baidu/pcs/file/BaiduPCSSQLiteTask;->performQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)Z

    return-void
.end method

.method public runTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)V
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/baidu/pcs/file/BaiduPCSSQLiteTask;->performTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "SQLiteTask"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
