.class public Lcom/zte/heartyservice/net/WifiDataBaseAdapter;
.super Ljava/lang/Object;
.source "WifiDataBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/net/WifiDataBaseAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DB_CREATE:Ljava/lang/String; = "CREATE TABLE table1 (_id INTEGER PRIMARY KEY,packagename TEXT ,num INTERGER ,uid INTEGER )"

.field private static final DB_NAME:Ljava/lang/String; = "localwifi.db"

.field private static final DB_TABLE:Ljava/lang/String; = "table1"

.field private static final DB_VERSION:I = 0x1

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_NUM:Ljava/lang/String; = "num"

.field public static final KEY_PACKAGENAME:Ljava/lang/String; = "packagename"

.field public static final KEY_UID:Ljava/lang/String; = "uid"

.field private static final TAG:Ljava/lang/String; = "WifiNumberDataBase"

.field private static instance:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter$DatabaseHelper;

.field private mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->instance:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    iput-object v0, p0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->mDatabaseHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter$DatabaseHelper;

    .line 79
    iput-object p1, p0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->mDatabaseHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter$DatabaseHelper;

    .line 81
    iget-object v0, p0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->mDatabaseHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 82
    return-void
.end method

.method public static getInstance()Lcom/zte/heartyservice/net/WifiDataBaseAdapter;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->instance:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->instance:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    .line 73
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->instance:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    return-object v0
.end method

.method public static isWlanOpen(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    .line 153
    invoke-static {}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->getInstance()Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    move-result-object v1

    .line 154
    .local v1, mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;
    const/4 v0, 0x0

    .line 155
    .local v0, cur:Landroid/database/Cursor;
    const/4 v2, 0x1

    .line 157
    .local v2, ret:Z
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->fetchData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    const-string v4, "num"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, v3, :cond_2

    move v2, v3

    .line 162
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_1
    return v2

    .line 159
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 163
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method


# virtual methods
.method public deleteData(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 103
    const-string v0, "lixxx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteData packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from table1 where packagename=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public fetchAllData()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table1"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "packagename"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "num"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "packagename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 115
    const-string v1, "WifiNumberDataBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchData packagename = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from table1 where packagename=\'"

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

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 120
    .local v0, mCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 125
    :cond_0
    const-string v1, "WifiNumberDataBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " fetchData =============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-object v0
.end method

.method public fetchDisabledData(I)Landroid/database/Cursor;
    .locals 4
    .parameter "number"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 131
    const-string v1, "WifiNumberDataBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchData number = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from table1 where num=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 136
    .local v0, mCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 141
    :cond_0
    const-string v1, "WifiNumberDataBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " fetchDisabledData =============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-object v0
.end method

.method public insertData(Ljava/lang/String;II)J
    .locals 4
    .parameter "packageName"
    .parameter "num"
    .parameter "uid"

    .prologue
    .line 87
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "packagename"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "num"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v1, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v1, "weijun"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertData packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v1, "weijun"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertData num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v1, "weijun"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertData uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table1"

    const-string v3, "_id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public updateMarkedData(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "number"

    .prologue
    .line 147
    const-string v0, "WifiNumberDataBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMarkedData =====xx=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update table1 set num=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where packagename=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    return-void
.end method
