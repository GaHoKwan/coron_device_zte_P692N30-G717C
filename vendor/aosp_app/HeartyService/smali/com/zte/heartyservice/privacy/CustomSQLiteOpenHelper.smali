.class public abstract Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "CustomSQLiteOpenHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDBdirectory:Ljava/lang/String;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "factory"
    .parameter "version"
    .parameter "directory"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mIsInitializing:Z

    .line 42
    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version must be >= 1, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 46
    iput p3, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mNewVersion:I

    .line 47
    iput-object p4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDBdirectory:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "dbpath"

    .prologue
    .line 219
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDBdirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 175
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 138
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v3, :cond_2

    .line 139
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "getReadableDatabase called recursively"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 143
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v3, :cond_3

    throw v1

    .line 146
    :cond_3
    sget-object v3, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for writing (will try read-only):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mIsInitializing:Z

    .line 152
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    iget v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mNewVersion:I

    if-eq v3, v4, :cond_5

    .line 155
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t upgrade read-only database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 164
    .end local v2           #path:Ljava/lang/String;
    :catchall_1
    move-exception v3

    const/4 v4, 0x0

    :try_start_5
    iput-boolean v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mIsInitializing:Z

    .line 165
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    .restart local v2       #path:Ljava/lang/String;
    :cond_5
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 160
    sget-object v3, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opened "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in read-only mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 162
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 164
    const/4 v4, 0x0

    :try_start_7
    iput-boolean v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mIsInitializing:Z

    .line 165
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_1

    .line 64
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 67
    :cond_1
    :try_start_1
    iget-boolean v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v4, :cond_2

    .line 68
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "getWritableDatabase called recursively"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 77
    :cond_2
    const/4 v2, 0x0

    .line 78
    .local v2, success:Z
    const/4 v0, 0x0

    .line 80
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mIsInitializing:Z

    .line 81
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 82
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 88
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 89
    .local v3, version:I
    iget v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mNewVersion:I

    if-eq v3, v4, :cond_3

    .line 90
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 92
    if-nez v3, :cond_6

    .line 93
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 97
    :goto_2
    iget v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 98
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 104
    :cond_3
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 105
    const/4 v2, 0x1

    .line 108
    const/4 v4, 0x0

    :try_start_5
    iput-boolean v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mIsInitializing:Z

    .line 109
    if-eqz v2, :cond_9

    .line 110
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_4

    .line 111
    :try_start_6
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 113
    :cond_4
    :goto_3
    :try_start_7
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 84
    .end local v3           #version:I
    :cond_5
    :try_start_8
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, path:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    invoke-static {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v0

    goto :goto_1

    .line 95
    .end local v1           #path:Ljava/lang/String;
    .restart local v3       #version:I
    :cond_6
    :try_start_9
    iget v4, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v3, v4}, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 100
    :catchall_1
    move-exception v4

    :try_start_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 108
    .end local v3           #version:I
    :catchall_2
    move-exception v4

    const/4 v5, 0x0

    :try_start_b
    iput-boolean v5, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mIsInitializing:Z

    .line 109
    if-eqz v2, :cond_a

    .line 110
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v5, :cond_7

    .line 111
    :try_start_c
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 113
    :cond_7
    :goto_4
    :try_start_d
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/CustomSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 115
    :cond_8
    :goto_5
    throw v4

    .restart local v3       #version:I
    :cond_9
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .end local v3           #version:I
    :cond_a
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_5

    .line 111
    :catch_0
    move-exception v5

    goto :goto_4

    .restart local v3       #version:I
    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 213
    return-void
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method
