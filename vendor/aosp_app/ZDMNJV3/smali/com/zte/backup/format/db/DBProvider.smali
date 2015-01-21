.class public Lcom/zte/backup/format/db/DBProvider;
.super Ljava/lang/Object;
.source "DBProvider.java"


# static fields
.field private static final ZTE_BROWSER_BOOKMARK_TYPE:Ljava/lang/String; = "1"

.field private static final ZTE_BROWSER_PARENT:Ljava/lang/String; = "parent"

.field private static final ZTE_UME_BROWSER_TAG:Ljava/lang/String; = "ume.browser"


# instance fields
.field private context:Landroid/content/Context;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "con"
    .parameter "uriValue"

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/zte/backup/format/db/DBProvider;->context:Landroid/content/Context;

    .line 12
    iput-object v0, p0, Lcom/zte/backup/format/db/DBProvider;->uri:Landroid/net/Uri;

    .line 18
    iput-object p1, p0, Lcom/zte/backup/format/db/DBProvider;->context:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/zte/backup/format/db/DBProvider;->uri:Landroid/net/Uri;

    .line 20
    return-void
.end method

.method private isRestore(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 10
    .parameter "title"
    .parameter "values"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 90
    const/4 v7, 0x0

    .line 92
    .local v7, getIdCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/db/DBProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/backup/format/db/DBProvider;->uri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " title = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and deleted = 0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 94
    const/4 v5, 0x0

    .line 92
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 95
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 96
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    if-eqz v7, :cond_0

    .line 105
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    .line 108
    :goto_0
    return v0

    .line 100
    :catch_0
    move-exception v6

    .line 101
    .local v6, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    if-eqz v7, :cond_1

    .line 105
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    move v0, v9

    .line 108
    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    if-eqz v7, :cond_2

    .line 105
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_2
    throw v0

    .line 104
    :cond_3
    if-eqz v7, :cond_1

    .line 105
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private specialBackupForZTEBrowserBookmark(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 9
    .parameter "parent"
    .parameter "values"

    .prologue
    .line 112
    const/4 v7, 0x0

    .line 114
    .local v7, getIdCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/db/DBProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/backup/format/db/DBProvider;->uri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " _id = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 114
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 116
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 117
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 118
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, parentTitle:Ljava/lang/String;
    const-string v0, "parent"

    invoke-virtual {p2, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v8           #parentTitle:Ljava/lang/String;
    :cond_0
    if-eqz v7, :cond_1

    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v6

    .line 123
    .local v6, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    if-eqz v7, :cond_1

    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 125
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 126
    if-eqz v7, :cond_2

    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_2
    throw v0
.end method

.method private specialRestoreForZTEBrowserBookmark(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 10
    .parameter "parent"
    .parameter "values"

    .prologue
    .line 133
    const/4 v7, 0x0

    .line 135
    .local v7, getIdCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/db/DBProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/backup/format/db/DBProvider;->uri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " title= \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 135
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 137
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 138
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 139
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 140
    .local v8, parentId:J
    const-string v0, "parent"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v8           #parentId:J
    :cond_0
    if-eqz v7, :cond_1

    .line 148
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v6

    .line 144
    .local v6, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    if-eqz v7, :cond_1

    .line 148
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 146
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 147
    if-eqz v7, :cond_2

    .line 148
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_2
    throw v0
.end method


# virtual methods
.method public getCount(Ljava/lang/String;)J
    .locals 9
    .parameter "sel"

    .prologue
    .line 210
    const/4 v7, 0x0

    .line 211
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 213
    .local v6, count:I
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/db/DBProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/backup/format/db/DBProvider;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 214
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 222
    :cond_0
    if-eqz v7, :cond_1

    .line 223
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_1
    :goto_0
    int-to-long v0, v6

    return-wide v0

    .line 218
    :catch_0
    move-exception v8

    .line 219
    .local v8, ex:Ljava/lang/Exception;
    const/4 v6, -0x1

    .line 222
    if-eqz v7, :cond_1

    .line 223
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 221
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 222
    if-eqz v7, :cond_2

    .line 223
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_2
    throw v0
.end method

.method public getOneRowValue(Landroid/database/Cursor;Z)Landroid/content/ContentValues;
    .locals 11
    .parameter "cur"
    .parameter "isBackup"

    .prologue
    .line 40
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v8, values:Landroid/content/ContentValues;
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 42
    .local v1, columnCount:I
    const/4 v7, 0x0

    .local v7, valueIndex:I
    :goto_0
    if-lt v7, v1, :cond_1

    .line 85
    :cond_0
    return-object v8

    .line 43
    :cond_1
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, columnName:Ljava/lang/String;
    const-string v9, "_id"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 42
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 48
    :cond_3
    const-string v9, "icon"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "favicon"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 49
    const-string v9, "thumbnail"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "touch_icon"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 50
    :cond_4
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 51
    .local v0, blob:[B
    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {v8, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 54
    .end local v0           #blob:[B
    :cond_5
    iget-object v9, p0, Lcom/zte/backup/format/db/DBProvider;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ume.browser"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 55
    const-string v9, "parent"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 56
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, parent:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 58
    if-eqz p2, :cond_6

    .line 59
    invoke-direct {p0, v5, v8}, Lcom/zte/backup/format/db/DBProvider;->specialBackupForZTEBrowserBookmark(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 61
    :cond_6
    invoke-direct {p0, v5, v8}, Lcom/zte/backup/format/db/DBProvider;->specialRestoreForZTEBrowserBookmark(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 64
    :cond_7
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, columnValue:Ljava/lang/String;
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    .end local v3           #columnValue:Ljava/lang/String;
    .end local v5           #parent:Ljava/lang/String;
    :cond_8
    if-nez p2, :cond_a

    const-string v9, "folder"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 68
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 69
    .local v4, folder:I
    if-eqz v4, :cond_9

    .line 70
    const-string v9, "title"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, title:Ljava/lang/String;
    invoke-direct {p0, v6, v8}, Lcom/zte/backup/format/db/DBProvider;->isRestore(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 75
    .end local v6           #title:Ljava/lang/String;
    :cond_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 77
    .end local v4           #folder:I
    :cond_a
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    .restart local v3       #columnValue:Ljava/lang/String;
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 81
    .end local v3           #columnValue:Ljava/lang/String;
    :cond_b
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    .restart local v3       #columnValue:Ljava/lang/String;
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public getOneRowValue(Landroid/database/Cursor;[Ljava/lang/String;Z)Landroid/content/ContentValues;
    .locals 10
    .parameter "cur"
    .parameter "keys"
    .parameter "isBackup"

    .prologue
    .line 161
    if-nez p2, :cond_1

    .line 162
    invoke-virtual {p0, p1, p3}, Lcom/zte/backup/format/db/DBProvider;->getOneRowValue(Landroid/database/Cursor;Z)Landroid/content/ContentValues;

    move-result-object v6

    .line 185
    :cond_0
    return-object v6

    .line 164
    :cond_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 165
    .local v6, values:Landroid/content/ContentValues;
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 166
    .local v1, columnCount:I
    const/4 v5, 0x0

    .local v5, valueIndex:I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 167
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, columnName:Ljava/lang/String;
    array-length v8, p2

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v8, :cond_3

    .line 166
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 168
    :cond_3
    aget-object v4, p2, v7

    .line 169
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 171
    const-string v7, "icon"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "favicon"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 172
    const-string v7, "thumbnail"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "touch_icon"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 173
    :cond_4
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 174
    .local v0, blob:[B
    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_2

    .line 178
    .end local v0           #blob:[B
    :cond_5
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, columnValue:Ljava/lang/String;
    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 168
    .end local v3           #columnValue:Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "sel"
    .parameter "projection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    const/4 v6, 0x0

    .line 25
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/db/DBProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/backup/format/db/DBProvider;->uri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 30
    return-object v6

    .line 27
    :catch_0
    move-exception v7

    .line 28
    .local v7, e:Ljava/lang/Exception;
    throw v7
.end method
