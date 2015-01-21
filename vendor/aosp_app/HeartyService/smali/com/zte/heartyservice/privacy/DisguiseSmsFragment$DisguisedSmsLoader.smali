.class public Lcom/zte/heartyservice/privacy/DisguiseSmsFragment$DisguisedSmsLoader;
.super Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;
.source "DisguiseSmsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/DisguiseSmsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisguisedSmsLoader"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "state"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;-><init>(Landroid/content/Context;I)V

    .line 50
    return-void
.end method

.method private getSmsThread(Ljava/lang/String;)Lcom/zte/heartyservice/privacy/DisguiseSmsItem;
    .locals 16
    .parameter "ac"

    .prologue
    .line 83
    const/4 v12, 0x0

    .line 85
    .local v12, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 87
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "sms"

    const/4 v3, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ac=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date desc"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 89
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 90
    const-string v7, "_id"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 91
    .local v14, idIndex:I
    const-string v7, "body"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 92
    .local v11, bodyIndex:I
    const-string v7, "number"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 93
    .local v15, numberIndex:I
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 94
    .local v3, id:I
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, name:Ljava/lang/String;
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, body:Ljava/lang/String;
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, number:Ljava/lang/String;
    new-instance v2, Lcom/zte/heartyservice/privacy/DisguiseSmsItem;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/zte/heartyservice/privacy/DisguiseSmsItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .local v2, item:Lcom/zte/heartyservice/privacy/DisguiseSmsItem;
    if-eqz v12, :cond_0

    .line 106
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 109
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #item:Lcom/zte/heartyservice/privacy/DisguiseSmsItem;
    .end local v3           #id:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #body:Ljava/lang/String;
    .end local v11           #bodyIndex:I
    .end local v14           #idIndex:I
    .end local v15           #numberIndex:I
    :cond_0
    :goto_0
    return-object v2

    .line 105
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    if-eqz v12, :cond_2

    .line 106
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 109
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v13

    .line 103
    .local v13, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    if-eqz v12, :cond_2

    .line 106
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 105
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v12, :cond_3

    .line 106
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v7
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseSmsFragment$DisguisedSmsLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v13, 0x0

    .line 55
    .local v13, cur:Landroid/database/Cursor;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v16, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonItem;>;"
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 59
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    const-string v3, "sms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ac"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date desc"

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 62
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    const-string v2, "ac"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 65
    .local v12, acIndex:I
    :cond_0
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 66
    .local v11, ac:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/zte/heartyservice/privacy/DisguiseSmsFragment$DisguisedSmsLoader;->getSmsThread(Ljava/lang/String;)Lcom/zte/heartyservice/privacy/DisguiseSmsItem;

    move-result-object v15

    .line 67
    .local v15, item:Lcom/zte/heartyservice/privacy/DisguiseSmsItem;
    if-eqz v15, :cond_1

    .line 68
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 75
    .end local v11           #ac:Ljava/lang/String;
    .end local v12           #acIndex:I
    .end local v15           #item:Lcom/zte/heartyservice/privacy/DisguiseSmsItem;
    :cond_2
    if-eqz v13, :cond_3

    .line 76
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 79
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :goto_0
    return-object v16

    .line 72
    :catch_0
    move-exception v14

    .line 73
    .local v14, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    if-eqz v13, :cond_3

    .line 76
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 75
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_4

    .line 76
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method
