.class public Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;
.super Ljava/lang/Object;
.source "AppLockSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final APP_LOCK_ID:Ljava/lang/String; = "_id"

.field private static final APP_LOCK_NAME:Ljava/lang/String; = "name"

.field private static final DATABASE_NAME:Ljava/lang/String; = "app_lock.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final TABLE_APP_LOCK_SETTING:Ljava/lang/String; = "appLockSetting"


# instance fields
.field private final APP_LOCK_ALL_PROJECTION:[Ljava/lang/String;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter$DatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->APP_LOCK_ALL_PROJECTION:[Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter$DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter$DatabaseHelper;-><init>(Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->mDbHelper:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter$DatabaseHelper;

    .line 107
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->mDbHelper:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 108
    return-void
.end method


# virtual methods
.method public addLockedPackage(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 111
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 112
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "appLockSetting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 114
    return-void
.end method

.method public addT(Ljava/lang/String;JJJ)V
    .locals 18
    .parameter "n"
    .parameter "t_add"
    .parameter "t1_add"
    .parameter "t2_add"

    .prologue
    .line 49
    const-wide/16 v12, 0x0

    .line 50
    .local v12, t:J
    const-wide/16 v14, 0x0

    .line 51
    .local v14, t1:J
    const-wide/16 v16, 0x0

    .line 52
    .local v16, t2:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "appLockT"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "t"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "t1"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "t2"

    aput-object v6, v4, v5

    const-string v5, "n = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 57
    .local v11, mCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const-string v2, "t"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v12, v2

    .line 59
    const-string v2, "t1"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v14, v2

    .line 60
    const-string v2, "t2"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 63
    :cond_0
    if-eqz v11, :cond_1

    .line 64
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 68
    :cond_1
    add-long v12, v12, p2

    .line 69
    add-long v14, v14, p4

    .line 70
    add-long v16, v16, p6

    .line 73
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replace into appLockT (n, t, t1, t2) values (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    :goto_0
    return-void

    .line 63
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_2

    .line 64
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 74
    :catch_0
    move-exception v10

    .line 75
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public clearAllLockedPackages()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "appLockSetting"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 168
    :cond_0
    return-void
.end method

.method public getAllLockedPackages()Ljava/util/List;
    .locals 12
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
    const/4 v3, 0x0

    .line 125
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v9, allLockedPkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "appLockSetting"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const-string v7, "name DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 131
    .local v10, mCursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "name"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 133
    .local v11, pkg:Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 136
    .end local v11           #pkg:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 138
    return-object v9
.end method

.method public getT(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 18
    .parameter "n"

    .prologue
    .line 80
    const-wide/16 v12, 0x0

    .line 81
    .local v12, t:J
    const-wide/16 v14, 0x0

    .line 82
    .local v14, t1:J
    const-wide/16 v16, 0x0

    .line 83
    .local v16, t2:J
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v10, bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "appLockT"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "t"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "t1"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "t2"

    aput-object v6, v4, v5

    const-string v5, "n = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 89
    .local v11, mCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const-string v2, "t"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v12, v2

    .line 91
    const-string v2, "t1"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v14, v2

    .line 92
    const-string v2, "t2"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 95
    :cond_0
    if-eqz v11, :cond_1

    .line 96
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_1
    const-string v2, "t"

    invoke-virtual {v10, v2, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 100
    const-string v2, "t1"

    invoke-virtual {v10, v2, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 101
    const-string v2, "t2"

    move-wide/from16 v0, v16

    invoke-virtual {v10, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 102
    return-object v10

    .line 95
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_2

    .line 96
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public isPackageLocked(Ljava/lang/String;)Z
    .locals 12
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 142
    const/4 v9, -0x1

    .line 143
    .local v9, rowId:I
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "appLockSetting"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "name"

    aput-object v3, v2, v11

    const-string v3, "name= ?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 148
    .local v8, mCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 152
    :cond_0
    if-eqz v8, :cond_1

    .line 153
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_1
    const/4 v0, -0x1

    if-ne v0, v9, :cond_3

    move v0, v10

    .line 160
    :goto_0
    return v0

    .line 152
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 153
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move v0, v11

    .line 160
    goto :goto_0
.end method

.method public removeLockedPackage(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "appLockSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    return-void
.end method
