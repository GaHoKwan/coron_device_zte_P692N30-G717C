.class public Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;
.super Lcom/zte/backup/format/db/DBBackup;
.source "BrowserBookmarkDBBackup.java"


# static fields
.field public static final BrowserBookmarkDBPath:Ljava/lang/String; = "/data/data/com.android.browser/databases/browser.db"

.field public static final BrowserBookmarkDBPath2:Ljava/lang/String; = "/data/data/com.android.browser/databases/browser2.db"


# instance fields
.field private context:Landroid/content/Context;

.field private isHaveAccountName:Z

.field private isProviderHaveAccountName:Z


# direct methods
.method public constructor <init>(Lcom/zte/backup/composer/Composer;)V
    .locals 1
    .parameter "composer"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/zte/backup/format/db/DBBackup;-><init>(Lcom/zte/backup/composer/Composer;)V

    .line 28
    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;->context:Landroid/content/Context;

    .line 29
    const-string v0, "BrowserBookmarkDBBackup"

    iput-object v0, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private getDataSizeByBookMarkDBPath(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .parameter "path"
    .parameter "anotherPath"

    .prologue
    const-wide/16 v4, 0x0

    .line 140
    const-wide/16 v2, 0x0

    .line 141
    .local v2, size:J
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-wide v4

    .line 145
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 147
    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 148
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :cond_2
    move-wide v4, v2

    .line 155
    goto :goto_0

    .line 152
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isHaveAccountName(Landroid/database/Cursor;)Z
    .locals 7
    .parameter "cur"

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, bRet:Z
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 121
    .local v2, columnCount:I
    const/4 v3, 0x0

    .local v3, columnIndex:I
    :goto_0
    if-lt v3, v2, :cond_1

    .line 132
    if-eqz p1, :cond_0

    .line 133
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    move v1, v0

    .line 135
    .end local v0           #bRet:Z
    .end local v2           #columnCount:I
    .end local v3           #columnIndex:I
    .local v1, bRet:Z
    :goto_1
    return v1

    .line 122
    .end local v1           #bRet:Z
    .restart local v0       #bRet:Z
    .restart local v2       #columnCount:I
    .restart local v3       #columnIndex:I
    :cond_1
    :try_start_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, columnName:Ljava/lang/String;
    const-string v6, "account_name"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 124
    const/4 v0, 0x1

    .line 121
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v2           #columnCount:I
    .end local v3           #columnIndex:I
    .end local v4           #columnName:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 132
    .local v5, e:Ljava/lang/Exception;
    if-eqz p1, :cond_3

    .line 133
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    move v1, v0

    .line 129
    .end local v0           #bRet:Z
    .restart local v1       #bRet:Z
    goto :goto_1

    .line 131
    .end local v1           #bRet:Z
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v0       #bRet:Z
    :catchall_0
    move-exception v6

    .line 132
    if-eqz p1, :cond_4

    .line 133
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_4
    throw v6
.end method


# virtual methods
.method public changeContentValues(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .parameter "context"
    .parameter "values"

    .prologue
    .line 59
    return-object p2
.end method

.method public deleteRowsByID(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "c"

    .prologue
    .line 181
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 183
    :cond_0
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, id:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;->getURI()Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 186
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 182
    if-nez v1, :cond_0

    .line 187
    const/4 v1, 0x0

    return v1
.end method

.method public getBackupDataSize()J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 160
    const-wide/16 v0, 0x0

    .line 161
    .local v0, size:J
    invoke-virtual {p0}, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;->getItemCount()I

    move-result v4

    int-to-long v0, v4

    .line 162
    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 167
    :goto_0
    return-wide v2

    .line 165
    :cond_0
    const-string v2, "/data/data/com.android.browser/databases/browser.db"

    const-string v3, "/data/data/com.android.browser/databases/browser2.db"

    invoke-direct {p0, v2, v3}, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;->getDataSizeByBookMarkDBPath(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    .line 167
    goto :goto_0
.end method

.method public getCheckExistKeys()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    const-string v3, "title"

    .line 66
    .local v3, titleKey:Ljava/lang/String;
    const-string v4, "url"

    .line 67
    .local v4, urlKey:Ljava/lang/String;
    const-string v0, "account_name"

    .line 68
    .local v0, accountTye:Ljava/lang/String;
    const-string v1, "bookmark"

    .line 70
    .local v1, deleteKey23:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-boolean v5, p0, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;->isHaveAccountName:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;->isProviderHaveAccountName:Z

    if-eqz v5, :cond_0

    .line 74
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    sget-boolean v5, Lcom/zte/backup/common/CommDefine;->T40:Z

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/zte/backup/common/CommDefine;->T41:Z

    if-nez v5, :cond_1

    .line 77
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_1
    return-object v2
.end method

.method public getConditionkeys(Lcom/zte/backup/format/db/OkbDBInterface;)V
    .locals 11
    .parameter "db"

    .prologue
    .line 92
    const/4 v8, 0x0

    .line 94
    .local v8, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 95
    if-nez v8, :cond_1

    .line 111
    if-eqz v8, :cond_0

    .line 112
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    :try_start_1
    invoke-direct {p0, v8}, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;->isHaveAccountName(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;->isHaveAccountName:Z

    .line 101
    :cond_2
    new-instance v9, Lcom/zte/backup/format/db/DBProvider;

    iget-object v0, p0, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;->getURI()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Lcom/zte/backup/format/db/DBProvider;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 102
    .local v9, dbProviderImpl:Lcom/zte/backup/format/db/DBProvider;
    invoke-virtual {p0}, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;->getQueryDBSelwhenBackup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;->getProjection()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/zte/backup/format/db/DBProvider;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 103
    invoke-direct {p0, v8}, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;->isHaveAccountName(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;->isProviderHaveAccountName:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :cond_3
    if-eqz v8, :cond_0

    .line 112
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 107
    .end local v9           #dbProviderImpl:Lcom/zte/backup/format/db/DBProvider;
    :catch_0
    move-exception v10

    .line 108
    .local v10, ex:Ljava/lang/Exception;
    :try_start_2
    iget-object v0, p0, Lcom/zte/backup/format/db/BrowserBookmarkDBBackup;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    if-eqz v8, :cond_0

    .line 112
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 110
    .end local v10           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 111
    if-eqz v8, :cond_4

    .line 112
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_4
    throw v0
.end method

.method public getDBName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "bookmark.db"

    return-object v0
.end method

.method public getDBVersionBySDKVersion()I
    .locals 3

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, nowVersion:I
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v2, "15"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v2, "14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    const/4 v0, 0x1

    .line 176
    :cond_1
    return v0
.end method

.method public getDiffDBVersionKeys()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    const/16 v1, 0x9

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "visits"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 86
    const-string v2, "touch_icon"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "user_entered"

    aput-object v2, v0, v1

    .line 87
    .local v0, diffVerionHasKey:[Ljava/lang/String;
    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueryDBSelwhenBackup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "bookmark = 1 AND url is NOT null"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "bookmarks"

    return-object v0
.end method

.method public getURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 34
    const-string v0, "content://browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public validRowValues(Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "values"

    .prologue
    .line 192
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
