.class public Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;
.super Lcom/zte/heartyservice/common/datatype/CommonItem;
.source "DisguisePasswordRecord.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisguisePasswordRecord"


# instance fields
.field public account_type:I

.field public notes:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 10
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/CommonItem;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->account_type:I

    .line 12
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->user_name:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->password:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->notes:Ljava/lang/String;

    .line 19
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    const/4 v8, 0x0

    .line 23
    .local v8, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "password_protector"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 29
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 30
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 31
    const-string v0, "account_type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->account_type:I

    .line 32
    const-string v0, "account_description"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->title:Ljava/lang/String;

    .line 34
    const-string v0, "user_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->user_name:Ljava/lang/String;

    .line 35
    const-string v0, "password"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->password:Ljava/lang/String;

    .line 36
    const-string v0, "notes"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->notes:Ljava/lang/String;

    .line 37
    iput-wide p1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_1
    if-eqz v8, :cond_0

    .line 45
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 39
    :cond_2
    :try_start_1
    const-string v0, "DisguisePasswordRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not found id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recourd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 41
    :catch_0
    move-exception v9

    .line 42
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "DisguisePasswordRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get password record id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    if-eqz v8, :cond_0

    .line 45
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 44
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 45
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public deleteFromDB()Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 56
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v1

    .line 58
    .local v1, helper:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
    const-string v4, "password_protector"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v4, v5, v6}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 60
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1           #helper:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
    :goto_0
    return v2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DisguisePasswordRecord"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete password record id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 66
    goto :goto_0
.end method

.method public saveToDB()J
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 70
    const-wide/16 v3, -0x1

    .line 72
    .local v3, result:J
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v2, pwr:Landroid/content/ContentValues;
    const-string v5, "account_type"

    iget v6, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->account_type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string v5, "account_description"

    iget-object v6, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->title:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v5, "user_name"

    iget-object v6, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->user_name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v5, "password"

    iget-object v6, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->password:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v5, "notes"

    iget-object v6, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->notes:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v1

    .line 81
    .local v1, helper:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
    iget-wide v5, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->id:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    .line 82
    const-string v5, "_id"

    iget-wide v6, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    const-string v5, "password_protector"

    const-string v6, "_id"

    invoke-virtual {v1, v5, v6, v2}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 98
    .end local v1           #helper:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
    .end local v2           #pwr:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-wide v3

    .line 87
    .restart local v1       #helper:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
    .restart local v2       #pwr:Landroid/content/ContentValues;
    :cond_1
    const-string v5, "password_protector"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v2}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 90
    cmp-long v5, v3, v7

    if-ltz v5, :cond_0

    .line 91
    iput-wide v3, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v1           #helper:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
    .end local v2           #pwr:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "DisguisePasswordRecord"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Save password record id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
