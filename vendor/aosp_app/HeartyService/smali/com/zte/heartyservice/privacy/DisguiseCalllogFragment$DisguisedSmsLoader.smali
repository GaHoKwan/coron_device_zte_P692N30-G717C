.class public Lcom/zte/heartyservice/privacy/DisguiseCalllogFragment$DisguisedSmsLoader;
.super Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;
.source "DisguiseCalllogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/DisguiseCalllogFragment;
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
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;-><init>(Landroid/content/Context;I)V

    .line 59
    return-void
.end method

.method private getCalllogThread(Ljava/lang/String;)Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;
    .locals 14
    .parameter "ac"

    .prologue
    .line 92
    const/4 v10, 0x0

    .line 94
    .local v10, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 96
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "calllog"

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ac=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 98
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    const-string v5, "_id"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 100
    .local v12, idIndex:I
    const-string v5, "number"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 101
    .local v13, numIndex:I
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 102
    .local v2, id:I
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, number:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, name:Ljava/lang/String;
    new-instance v1, Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;-><init>(ILjava/lang/String;Ljava/lang/String;IJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .local v1, item:Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;
    if-eqz v10, :cond_0

    .line 113
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 116
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #item:Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;
    .end local v2           #id:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    .end local v12           #idIndex:I
    .end local v13           #numIndex:I
    :cond_0
    :goto_0
    return-object v1

    .line 112
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    if-eqz v10, :cond_2

    .line 113
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 116
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v11

    .line 110
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    if-eqz v10, :cond_2

    .line 113
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 112
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v10, :cond_3

    .line 113
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseCalllogFragment$DisguisedSmsLoader;->loadInBackground()Ljava/util/List;

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
    .line 63
    const/4 v13, 0x0

    .line 64
    .local v13, cur:Landroid/database/Cursor;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v16, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonItem;>;"
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 68
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    const-string v3, "calllog"

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

    .line 71
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    const-string v2, "ac"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 74
    .local v12, acIndex:I
    :cond_0
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 75
    .local v11, ac:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/zte/heartyservice/privacy/DisguiseCalllogFragment$DisguisedSmsLoader;->getCalllogThread(Ljava/lang/String;)Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;

    move-result-object v15

    .line 76
    .local v15, item:Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;
    if-eqz v15, :cond_1

    .line 77
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 84
    .end local v11           #ac:Ljava/lang/String;
    .end local v12           #acIndex:I
    .end local v15           #item:Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;
    :cond_2
    if-eqz v13, :cond_3

    .line 85
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 88
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :goto_0
    return-object v16

    .line 81
    :catch_0
    move-exception v14

    .line 82
    .local v14, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    if-eqz v13, :cond_3

    .line 85
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 84
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_4

    .line 85
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method
