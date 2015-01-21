.class Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment$DisguisedPasswordRecordLoader;
.super Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;
.source "DisguisePasswordProtectorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisguisedPasswordRecordLoader"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "state"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;-><init>(Landroid/content/Context;I)V

    .line 123
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment$DisguisedPasswordRecordLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 15
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
    .line 127
    const/4 v8, 0x0

    .line 128
    .local v8, cur:Landroid/database/Cursor;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v13, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonItem;>;"
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 132
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "password_protector"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 134
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 136
    .local v11, idIndex:I
    const-string v1, "account_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 137
    .local v14, typeIndex:I
    const-string v1, "account_description"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 140
    .local v9, descriptionIndex:I
    :cond_0
    new-instance v12, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    const-wide/16 v1, -0x1

    invoke-direct {v12, v1, v2}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;-><init>(J)V

    .line 142
    .local v12, item:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v12, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->id:J

    .line 143
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->account_type:I

    .line 144
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->title:Ljava/lang/String;

    .line 145
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 151
    .end local v9           #descriptionIndex:I
    .end local v11           #idIndex:I
    .end local v12           #item:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;
    .end local v14           #typeIndex:I
    :cond_1
    if-eqz v8, :cond_2

    .line 152
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 155
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :goto_0
    return-object v13

    .line 148
    :catch_0
    move-exception v10

    .line 149
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    if-eqz v8, :cond_2

    .line 152
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 151
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_3

    .line 152
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method
