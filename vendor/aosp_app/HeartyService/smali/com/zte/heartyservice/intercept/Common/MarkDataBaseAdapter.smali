.class public Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;
.super Ljava/lang/Object;
.source "MarkDataBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DB_CREATE:Ljava/lang/String; = "CREATE TABLE table1 (_id INTEGER PRIMARY KEY,num INTERGER,info INTERGER,data TEXT)"

.field private static final DB_NAME:Ljava/lang/String; = "localmark.db"

.field private static final DB_TABLE:Ljava/lang/String; = "table1"

.field private static final DB_VERSION:I = 0x1

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_INFO:Ljava/lang/String; = "info"

.field public static final KEY_NUM:Ljava/lang/String; = "num"

.field private static final TAG:Ljava/lang/String; = "MarkNumberDataBase"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter$DatabaseHelper;

.field private mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->mDatabaseHelper:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter$DatabaseHelper;

    .line 70
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->mDatabaseHelper:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter$DatabaseHelper;->close()V

    .line 86
    return-void
.end method

.method public deleteData(J)Z
    .locals 4
    .parameter "rowId"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetchAllData()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table1"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "num"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "data"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "info"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchData(J)Landroid/database/Cursor;
    .locals 11
    .parameter "rowId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 116
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table1"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    const-string v4, "num"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "data"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "info"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 120
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 122
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 124
    :cond_0
    return-object v10
.end method

.method public fetchData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "number"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 129
    const-string v1, "MarkNumberDataBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchData yyy = ["

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

    .line 131
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from table1 where data=\'"

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

    .line 135
    .local v0, mCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 140
    :cond_0
    const-string v1, "MarkNumberDataBase"

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

    .line 141
    return-object v0
.end method

.method public fetchNoupdateData()Landroid/database/Cursor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 146
    const-string v1, "MarkNumberDataBase"

    const-string v2, "fetchNoupdateData======"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "select * from table1 where info=0"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 151
    .local v0, mCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 156
    :cond_0
    const-string v1, "MarkNumberDataBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " fetchNoupdateData  ==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-object v0
.end method

.method public insertData(ILjava/lang/String;I)J
    .locals 4
    .parameter "num"
    .parameter "data"
    .parameter "isSubmit"

    .prologue
    .line 91
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "num"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "info"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table1"

    const-string v3, "_id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->mDatabaseHelper:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter$DatabaseHelper;

    .line 78
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->mDatabaseHelper:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 79
    return-void
.end method

.method public updateData(JILjava/lang/String;I)Z
    .locals 5
    .parameter "rowId"
    .parameter "num"
    .parameter "data"
    .parameter "isSubmit"

    .prologue
    .line 179
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .local v0, args:Landroid/content/ContentValues;
    const-string v1, "num"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "info"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table1"

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

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateMarkedData(Ljava/lang/String;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 165
    const-string v0, "MarkNumberDataBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMarkedData =====xx=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update table1 set info=1 where data=\'"

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

    .line 174
    return-void
.end method
