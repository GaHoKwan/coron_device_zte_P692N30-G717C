.class public Lcom/zte/heartyservice/interceptad/RecordDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RecordDBHelper.java"


# static fields
.field private static final DATABASE_VERSION:I = 0x2

.field private static final TABLE_NAME:Ljava/lang/String; = "ad_record"

.field private static dbLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->dbLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ad_record.db"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public clear()I
    .locals 5

    .prologue
    .line 50
    sget-object v2, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->dbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 52
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "ad_record"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 53
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 44
    sget-object v2, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->dbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 46
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "ad_record"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 47
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public insert(Landroid/content/ContentValues;)J
    .locals 5
    .parameter "values"

    .prologue
    .line 30
    sget-object v2, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->dbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 32
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "ad_record"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    monitor-exit v2

    return-wide v3

    .line 33
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 20
    const-string v0, "CREATE TABLE ad_record (_id INTEGER PRIMARY KEY, pkgname TEXT, version INTEGER, ads TEXT, isblock INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 25
    const-string v0, "DROP TABLE IF EXISTS ad_record"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 27
    return-void
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 37
    sget-object v8, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->dbLock:Ljava/lang/Object;

    monitor-enter v8

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 39
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "ad_record"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    monitor-exit v8

    return-object v1

    .line 40
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 57
    sget-object v2, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->dbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 59
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "ad_record"

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 60
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
