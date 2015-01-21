.class public Lcom/zte/heartyservice/privacy/DisguiseContactFragment$DisguisedSmsLoader;
.super Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;
.source "DisguiseContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/DisguiseContactFragment;
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
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;-><init>(Landroid/content/Context;I)V

    .line 62
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseContactFragment$DisguisedSmsLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 19
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
    .line 66
    const/4 v9, 0x0

    .line 67
    .local v9, cur:Landroid/database/Cursor;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v14, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonItem;>;"
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 71
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "contact"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 73
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 75
    .local v12, idIndex:I
    const-string v2, "name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 76
    .local v16, nameIndex:I
    const-string v2, "number"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 78
    .local v18, numberIndex:I
    :cond_0
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 79
    .local v11, id:I
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 80
    .local v15, name:Ljava/lang/String;
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 81
    .local v17, number:Ljava/lang/String;
    new-instance v13, Lcom/zte/heartyservice/common/datatype/CommonItem;

    int-to-long v2, v11

    move-object/from16 v0, v17

    invoke-direct {v13, v2, v3, v15, v0}, Lcom/zte/heartyservice/common/datatype/CommonItem;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v13, item:Lcom/zte/heartyservice/common/datatype/CommonItem;
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 88
    .end local v11           #id:I
    .end local v12           #idIndex:I
    .end local v13           #item:Lcom/zte/heartyservice/common/datatype/CommonItem;
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #nameIndex:I
    .end local v17           #number:Ljava/lang/String;
    .end local v18           #numberIndex:I
    :cond_1
    if-eqz v9, :cond_2

    .line 89
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 92
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :goto_0
    return-object v14

    .line 85
    :catch_0
    move-exception v10

    .line 86
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    if-eqz v9, :cond_2

    .line 89
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 88
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_3

    .line 89
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method
