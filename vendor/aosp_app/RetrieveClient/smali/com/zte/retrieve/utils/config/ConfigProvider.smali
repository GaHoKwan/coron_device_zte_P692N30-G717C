.class public Lcom/zte/retrieve/utils/config/ConfigProvider;
.super Landroid/content/ContentProvider;
.source "ConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "Config.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final TABLE_NAME:Ljava/lang/String; = "Config"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private dbHelper:Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;

.field private sqlDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/zte/retrieve/utils/config/ConfigProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "s"
    .parameter "as"

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "uri"
    .parameter "contentvalues"

    .prologue
    .line 82
    iget-object v3, p0, Lcom/zte/retrieve/utils/config/ConfigProvider;->dbHelper:Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/retrieve/utils/config/ConfigProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    iget-object v3, p0, Lcom/zte/retrieve/utils/config/ConfigProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Config"

    const-string v5, ""

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 84
    .local v0, rowId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 85
    sget-object v3, Lcom/zte/retrieve/utils/config/RetrieveConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 86
    .local v2, rowUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/zte/retrieve/utils/config/ConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 87
    return-object v2

    .line 89
    .end local v2           #rowUri:Landroid/net/Uri;
    :cond_0
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to insert row into "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 94
    const-string v0, "oncreate"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/zte/retrieve/utils/config/ConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/zte/retrieve/utils/config/ConfigProvider;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;

    sget-object v1, Lcom/zte/retrieve/utils/config/ConfigProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/retrieve/utils/config/ConfigProvider;->dbHelper:Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;

    .line 97
    iget-object v0, p0, Lcom/zte/retrieve/utils/config/ConfigProvider;->dbHelper:Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 98
    iget-object v0, p0, Lcom/zte/retrieve/utils/config/ConfigProvider;->dbHelper:Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v4, 0x0

    .line 103
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 104
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, p0, Lcom/zte/retrieve/utils/config/ConfigProvider;->dbHelper:Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 105
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "Config"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, p5

    .line 106
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 107
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/zte/retrieve/utils/config/ConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 108
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "contentvalues"
    .parameter "s"
    .parameter "as"

    .prologue
    .line 114
    iget-object v2, p0, Lcom/zte/retrieve/utils/config/ConfigProvider;->dbHelper:Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 115
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "Config"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, count:I
    invoke-virtual {p0}, Lcom/zte/retrieve/utils/config/ConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 117
    return v0
.end method
