.class final Ltmsdkobf/ds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/ds$a;
    }
.end annotation


# static fields
.field private static final kc:[Ljava/lang/String;

.field private static kd:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 36
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 37
    const-string v4, "Key"

    aput-object v4, v2, v3

    const-string v3, "Content"

    aput-object v3, v2, v5

    .line 36
    sput-object v2, Ltmsdkobf/ds;->kc:[Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v2, Ltmsdkobf/ds;->kd:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v2, :cond_0

    .line 54
    new-instance v2, Ltmsdkobf/ds$a;

    const-string v3, "serverlist.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ltmsdkobf/ds$a;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v2, Ltmsdkobf/ds;->kd:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 57
    :cond_0
    sget-object v2, Ltmsdkobf/ds;->kd:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 58
    const-string v1, "CREATE TABLE IF NOT EXISTS serverlist (ID INTEGER PRIMARY KEY, Key VARCHAR, Content VARCHAR);"

    .line 60
    .local v1, sql:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .end local v1           #sql:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v2

    .line 62
    :try_start_1
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v2

    .line 64
    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 67
    :cond_2
    throw v2
.end method

.method public static O()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 77
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Ltmsdkobf/ds;->kd:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 78
    const-string v1, "serverlist"

    sget-object v2, Ltmsdkobf/ds;->kc:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 79
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 82
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9

    .line 83
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, content:Ljava/lang/String;
    invoke-static {v8}, Ltmsdkobf/gf;->as(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    if-eqz v9, :cond_0

    .line 95
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_0
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    move-object v8, v10

    .line 103
    .end local v8           #content:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v8

    .line 94
    .restart local v8       #content:Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_4

    .line 95
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_4
    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 91
    .end local v8           #content:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 92
    :try_start_1
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    if-eqz v9, :cond_5

    .line 95
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_5
    if-eqz v0, :cond_6

    .line 99
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    :goto_1
    move-object v8, v10

    .line 103
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v1

    .line 94
    if-eqz v9, :cond_7

    .line 95
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_7
    if-eqz v0, :cond_8

    .line 99
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 101
    :cond_8
    throw v1

    .line 94
    :cond_9
    if-eqz v9, :cond_a

    .line 95
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_a
    if-eqz v0, :cond_6

    .line 99
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1
.end method

.method public static S()Z
    .locals 3

    .prologue
    .line 135
    sget-object v2, Ltmsdkobf/ds;->kd:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 137
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "DELETE FROM serverlist WHERE Key=\'sosomap\'"

    .line 138
    .local v1, sql:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 139
    :cond_0
    const/4 v2, 0x1

    .line 142
    .end local v1           #sql:Ljava/lang/String;
    :goto_0
    return v2

    .line 140
    :catch_0
    move-exception v2

    .line 141
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 142
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v2

    .line 144
    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 147
    :cond_2
    throw v2
.end method

.method public static as(Ljava/lang/String;)Z
    .locals 4
    .parameter "content"

    .prologue
    .line 112
    sget-object v2, Ltmsdkobf/ds;->kd:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 114
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insert into serverlist (Key, Content) values (\'sosomap\',\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, sql:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 117
    :cond_0
    const/4 v2, 0x1

    .line 120
    .end local v1           #sql:Ljava/lang/String;
    :goto_0
    return v2

    .line 118
    :catch_0
    move-exception v2

    .line 119
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 120
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v2

    .line 122
    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 125
    :cond_2
    throw v2
.end method
