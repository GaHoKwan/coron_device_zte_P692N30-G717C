.class public Lcom/hf/provider/HFContentProvider;
.super Landroid/content/ContentProvider;
.source "HFContentProvider.java"


# static fields
.field private static final CITY:I = 0x3

.field private static final CITY_ID:I = 0x4

.field private static final COORDINATE:I = 0x7

.field private static final COORDINATE_ID:I = 0x8

.field private static final WEATHER:I = 0x5

.field private static final WEATHER_ID:I = 0x6

.field private static mContext:Landroid/content/Context;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDBManager:Lcom/hf/provider/DBManager;

.field private mSqlHelper:Lcom/hf/provider/SQLHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/hf/provider/HFContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 32
    sget-object v0, Lcom/hf/provider/HFContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "hf.weather"

    const-string v2, "city"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    sget-object v0, Lcom/hf/provider/HFContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "hf.weather"

    const-string v2, "city/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    sget-object v0, Lcom/hf/provider/HFContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "hf.weather"

    const-string v2, "weather"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    sget-object v0, Lcom/hf/provider/HFContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "hf.weather"

    const-string v2, "weather/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    sget-object v0, Lcom/hf/provider/HFContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "hf.weather"

    const-string v2, "coordinate"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    sget-object v0, Lcom/hf/provider/HFContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "hf.weather"

    const-string v2, "coordinate/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 162
    .local v1, number:I
    :try_start_0
    sget-object v2, Lcom/hf/provider/HFContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 163
    iget-object v2, p0, Lcom/hf/provider/HFContentProvider;->mSqlHelper:Lcom/hf/provider/SQLHelper;

    invoke-virtual {v2}, Lcom/hf/provider/SQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 164
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "weather"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 171
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/hf/provider/HFContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 172
    return v1

    .line 166
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 42
    sget-object v0, Lcom/hf/provider/HFContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.hf.city"

    .line 54
    :goto_0
    return-object v0

    .line 46
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.hf.city"

    goto :goto_0

    .line 48
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.hf.weather"

    goto :goto_0

    .line 50
    :pswitch_3
    const-string v0, "vnd.android.cursor.item/vnd.hf.weather"

    goto :goto_0

    .line 52
    :pswitch_4
    const-string v0, "vnd.android.cursor.dir/vnd.hf.coordinate"

    goto :goto_0

    .line 54
    :pswitch_5
    const-string v0, "vnd.android.cursor.item/vnd.hf.coordinate"

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 136
    const-wide/16 v1, 0x0

    .line 138
    .local v1, id:J
    :try_start_0
    sget-object v3, Lcom/hf/provider/HFContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 139
    iget-object v3, p0, Lcom/hf/provider/HFContentProvider;->mDBManager:Lcom/hf/provider/DBManager;

    invoke-virtual {v3}, Lcom/hf/provider/DBManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 140
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "city"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 150
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 151
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 152
    invoke-virtual {p0}, Lcom/hf/provider/HFContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 155
    :cond_1
    return-object p1

    .line 141
    :cond_2
    :try_start_1
    sget-object v3, Lcom/hf/provider/HFContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 142
    iget-object v3, p0, Lcom/hf/provider/HFContentProvider;->mSqlHelper:Lcom/hf/provider/SQLHelper;

    invoke-virtual {v3}, Lcom/hf/provider/SQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 143
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "weather"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 145
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/hf/provider/HFContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/hf/provider/HFContentProvider;->mContext:Landroid/content/Context;

    .line 64
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "HFWeather"

    const-string v1, "HFContentProvider.onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    new-instance v0, Lcom/hf/provider/DBManager;

    sget-object v1, Lcom/hf/provider/HFContentProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hf/provider/DBManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hf/provider/HFContentProvider;->mDBManager:Lcom/hf/provider/DBManager;

    .line 68
    iget-object v0, p0, Lcom/hf/provider/HFContentProvider;->mDBManager:Lcom/hf/provider/DBManager;

    invoke-virtual {v0}, Lcom/hf/provider/DBManager;->openDatabase()V

    .line 69
    new-instance v0, Lcom/hf/provider/SQLHelper;

    sget-object v1, Lcom/hf/provider/HFContentProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hf/provider/SQLHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hf/provider/HFContentProvider;->mSqlHelper:Lcom/hf/provider/SQLHelper;

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 77
    const/4 v8, 0x0

    .line 79
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/hf/provider/HFContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 80
    iget-object v1, p0, Lcom/hf/provider/HFContentProvider;->mDBManager:Lcom/hf/provider/DBManager;

    invoke-virtual {v1}, Lcom/hf/provider/DBManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 81
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "city"

    const-string v5, "id"

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 100
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v8

    .line 82
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v1, Lcom/hf/provider/HFContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 84
    iget-object v1, p0, Lcom/hf/provider/HFContentProvider;->mSqlHelper:Lcom/hf/provider/SQLHelper;

    invoke-virtual {v1}, Lcom/hf/provider/SQLHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 85
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "weather"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 87
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    sget-object v1, Lcom/hf/provider/HFContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/hf/provider/HFContentProvider;->mDBManager:Lcom/hf/provider/DBManager;

    invoke-virtual {v1}, Lcom/hf/provider/DBManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 89
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "coordinate"

    const-string v5, "id"

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 96
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 94
    :catch_1
    move-exception v1

    goto :goto_0

    .line 92
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 108
    .local v1, number:I
    :try_start_0
    sget-object v2, Lcom/hf/provider/HFContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 110
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_0

    .line 111
    const-string v2, "showModifyDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "selection = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/hf/provider/HFContentProvider;->mSqlHelper:Lcom/hf/provider/SQLHelper;

    invoke-virtual {v2}, Lcom/hf/provider/SQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v2, "weather"

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 128
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/hf/provider/HFContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 130
    return v1

    .line 123
    :catch_0
    move-exception v2

    goto :goto_0

    .line 118
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v2

    goto :goto_0
.end method
