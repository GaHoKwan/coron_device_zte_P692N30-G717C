.class public Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;
.super Ljava/lang/Object;
.source "PermissionLogsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/permission/PermissionLogsDBHelper$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final COLUMN_ACTION_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_DATE:Ljava/lang/String; = "date"

.field public static final COLUMN_INDEX_ACTION_TYPE:I = 0x3

.field public static final COLUMN_INDEX_DATE:I = 0x4

.field public static final COLUMN_INDEX_PACKAGE:I = 0x1

.field public static final COLUMN_INDEX_PERMISSION:I = 0x2

.field public static final COLUMN_PACKAGE:Ljava/lang/String; = "pkg"

.field public static final COLUMN_PERMISSION:Ljava/lang/String; = "perm"

.field public static final COLUMN_ROWID:Ljava/lang/String; = "_id"

.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table eventlog (_id INTEGER primary key autoincrement, pkg TEXT not null, perm TEXT not null, type INTEGER, date LONG);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "permission.db"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "eventlog"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PermissionLogsDBHelper"

.field private static mContext:Landroid/content/Context;

.field private static mLogsDBHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->mLogsDBHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->mCtx:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper$DatabaseHelper;

    iget-object v1, p0, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->mDbHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper$DatabaseHelper;

    .line 65
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->mDbHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper$DatabaseHelper;

    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    return-void
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    sput-object p0, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;
    .locals 1
    .parameter "mContext"

    .prologue
    .line 105
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->mLogsDBHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->mLogsDBHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    .line 108
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->mLogsDBHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    return-object v0
.end method


# virtual methods
.method public deleteAllLogRecords()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "eventlog"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteRemovedPkgRecord(Ljava/lang/String;)Z
    .locals 4
    .parameter "pkg"

    .prologue
    .line 91
    const-string v0, "PermissionLogsDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteRemovedPkgRecord packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "eventlog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg= \'"

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

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllLogRecords()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "eventlog"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "pkg"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "perm"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "date"

    aput-object v5, v2, v4

    const-string v7, "date DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public insertPermissionLogRecord(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 4
    .parameter "pkg"
    .parameter "permission"
    .parameter "type"

    .prologue
    .line 82
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 83
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "pkg"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "perm"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v1, "date"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    iget-object v1, p0, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "eventlog"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method
