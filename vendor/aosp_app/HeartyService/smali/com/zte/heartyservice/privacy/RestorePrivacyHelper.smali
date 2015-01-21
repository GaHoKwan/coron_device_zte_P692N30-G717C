.class public Lcom/zte/heartyservice/privacy/RestorePrivacyHelper;
.super Ljava/lang/Object;
.source "RestorePrivacyHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBackupPrivacyPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "password"
    .parameter "backupDirPath"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v2

    .line 49
    :cond_1
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->calcSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, sign:Ljava/lang/String;
    invoke-static {p1}, Lcom/zte/heartyservice/privacy/RestorePrivacyHelper;->getBackupPasswordSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, backupSign:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static getBackupDB(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 8
    .parameter "backupDirPath"

    .prologue
    const/4 v4, 0x0

    .line 15
    const/4 v2, 0x0

    .line 17
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-object v4

    .line 20
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .local v1, backupDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 26
    new-instance v0, Ljava/io/File;

    const-string v5, "privacy_back.db"

    invoke-direct {v0, p0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .local v0, backupDB:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v4, v2

    .line 32
    goto :goto_0

    .line 33
    .end local v0           #backupDB:Ljava/io/File;
    .end local v1           #backupDir:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 34
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 37
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getBackupPasswordSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "backupDirPath"

    .prologue
    const/4 v10, 0x0

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 87
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Lcom/zte/heartyservice/privacy/RestorePrivacyHelper;->getBackupDB(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 88
    const-string v1, "publicinfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 89
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 90
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 91
    const-string v1, "ac"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 96
    if-eqz v8, :cond_0

    .line 97
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 98
    const/4 v8, 0x0

    .line 100
    :cond_0
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 102
    const/4 v0, 0x0

    .line 106
    :cond_1
    :goto_0
    return-object v1

    .line 96
    :cond_2
    if-eqz v8, :cond_3

    .line 97
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 98
    const/4 v8, 0x0

    .line 100
    :cond_3
    if-eqz v0, :cond_4

    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 102
    const/4 v0, 0x0

    :cond_4
    :goto_1
    move-object v1, v10

    .line 106
    goto :goto_0

    .line 93
    :catch_0
    move-exception v9

    .line 94
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    if-eqz v8, :cond_5

    .line 97
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 98
    const/4 v8, 0x0

    .line 100
    :cond_5
    if-eqz v0, :cond_4

    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 102
    const/4 v0, 0x0

    goto :goto_1

    .line 96
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    .line 97
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 98
    const/4 v8, 0x0

    .line 100
    :cond_6
    if-eqz v0, :cond_7

    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 102
    const/4 v0, 0x0

    :cond_7
    throw v1
.end method

.method public static getBackupPasswordType(Ljava/lang/String;)I
    .locals 10
    .parameter "backupDirPath"

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 61
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Lcom/zte/heartyservice/privacy/RestorePrivacyHelper;->getBackupDB(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 62
    const-string v1, "publicinfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 63
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 64
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 65
    const-string v1, "key_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 70
    if-eqz v8, :cond_0

    .line 71
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 72
    const/4 v8, 0x0

    .line 74
    :cond_0
    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 76
    const/4 v0, 0x0

    .line 80
    :cond_1
    :goto_0
    return v1

    .line 70
    :cond_2
    if-eqz v8, :cond_3

    .line 71
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 72
    const/4 v8, 0x0

    .line 74
    :cond_3
    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 76
    const/4 v0, 0x0

    .line 80
    :cond_4
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v9

    .line 68
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    if-eqz v8, :cond_5

    .line 71
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 72
    const/4 v8, 0x0

    .line 74
    :cond_5
    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 76
    const/4 v0, 0x0

    goto :goto_1

    .line 70
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    .line 71
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 72
    const/4 v8, 0x0

    .line 74
    :cond_6
    if-eqz v0, :cond_7

    .line 75
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 76
    const/4 v0, 0x0

    :cond_7
    throw v1
.end method
