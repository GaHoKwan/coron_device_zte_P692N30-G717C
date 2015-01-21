.class public Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AppDownloadInfoSQLiteOpenHelper.java"


# static fields
.field public static final CUR_VERSION:I = 0x1


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "version"

    .prologue
    .line 21
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const-string v1, "app_download_info.db"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public deleteRecords(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v3, "delete from info where _ID in ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 76
    if-eqz v2, :cond_0

    .line 77
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;

    iget v3, v3, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->_id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_1
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 84
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #i:I
    :cond_2
    :goto_1
    return-void

    .line 85
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #i:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public deleteRecords([Ljava/lang/String;)V
    .locals 7
    .parameter "selectionArgs"

    .prologue
    .line 93
    if-eqz p1, :cond_2

    :try_start_0
    array-length v6, p1

    if-lez v6, :cond_2

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v6, "delete from info where _ID in ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, flag:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v6, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v4, v6, :cond_1

    .line 99
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    aget-object v6, p1, v4

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    .local v5, info:Lorg/json/JSONObject;
    const-string v6, "_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, _id:I
    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 102
    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 105
    const/4 v3, 0x1

    .line 97
    .end local v0           #_id:I
    .end local v5           #info:Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    :cond_1
    :try_start_2
    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    :try_start_3
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 113
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 121
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #flag:Z
    .end local v4           #i:I
    :cond_2
    :goto_2
    return-void

    .line 118
    :catch_0
    move-exception v6

    goto :goto_2

    .line 114
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    .restart local v3       #flag:Z
    .restart local v4       #i:I
    :catch_1
    move-exception v6

    goto :goto_2

    .line 106
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method public getAllRecords()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;>;"
    const/4 v0, 0x0

    .line 48
    .local v0, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "select * from info"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    new-instance v1, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;

    invoke-direct {v1}, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;-><init>()V

    .line 52
    .local v1, info:Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;
    const-string v3, "_ID"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->_id:I

    .line 53
    const-string v3, "packageName"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->packageName:Ljava/lang/String;

    .line 54
    new-instance v3, Ljava/lang/String;

    const-string v4, "appName"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v3, v1, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->appName:Ljava/lang/String;

    .line 55
    const-string v3, "versionCode"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->versionCode:Ljava/lang/String;

    .line 56
    const-string v3, "downloadType"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->downloadType:Ljava/lang/String;

    .line 57
    const-string v3, "time"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->time:J

    .line 58
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v1           #info:Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;
    :catch_0
    move-exception v3

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 68
    :cond_0
    :goto_1
    return-object v2

    .line 64
    :cond_1
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 64
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 65
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method public insertRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter "packageName"
    .parameter "appName"
    .parameter "versionCode"
    .parameter "downloadType"
    .parameter "time"

    .prologue
    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 37
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO info (packageName,appName,versionCode,downloadType,time) VALUES (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "paramSQLiteDatabase"

    .prologue
    .line 26
    const-string v0, "CREATE TABLE info (_ID INTEGER PRIMARY KEY AUTOINCREMENT, packageName TEXT, appName TEXT, versionCode TEXT, downloadType TEXT, time INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 32
    return-void
.end method
