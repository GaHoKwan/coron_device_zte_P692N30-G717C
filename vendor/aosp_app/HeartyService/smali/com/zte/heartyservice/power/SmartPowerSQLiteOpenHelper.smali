.class public Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SmartPowerSQLiteOpenHelper.java"


# static fields
.field private static final NOTIFY_CONTENT_CHANGE:I = 0x0

.field private static final SMART_POWER_DB:Ljava/lang/String; = "smart_power.db"

.field public static final TB_ABNORMAL_EVENT:Ljava/lang/String; = "abnormal_event"

.field private static sInstance:Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;


# instance fields
.field private final TB_ABNORMAL_EVENT_CREATE:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->sInstance:Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "smart_power.db"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 31
    const-string v0, "CREATE TABLE IF NOT EXISTS abnormal_event ( _id INTEGER PRIMARY KEY AUTOINCREMENT, package TEXT, time INTEGER, state INTEGER, reason INTEGER, show INTEGER DEFAULT 2147483647, count INTEGER )"

    iput-object v0, p0, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->TB_ABNORMAL_EVENT_CREATE:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper$1;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper$1;-><init>(Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->mHandler:Landroid/os/Handler;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->notifyContentChange()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;
    .locals 3

    .prologue
    .line 24
    const-class v1, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->sInstance:Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->sInstance:Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;

    .line 28
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->sInstance:Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyContentChange()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.zte.heartyservice.intent.action.REFRESH_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "from"

    const-string v2, "power"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method private static sendNotifyContentChangeMsg()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    sget-object v0, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->sInstance:Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;

    iget-object v0, v0, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->sInstance:Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;

    iget-object v0, v0, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 86
    .local v0, ret:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 87
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->sendNotifyContentChangeMsg()V

    .line 89
    :cond_0
    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 45
    const-string v0, "CREATE TABLE IF NOT EXISTS abnormal_event ( _id INTEGER PRIMARY KEY AUTOINCREMENT, package TEXT, time INTEGER, state INTEGER, reason INTEGER, show INTEGER DEFAULT 2147483647, count INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 51
    const-string v0, "DROP TABLE IF EXISTS abnormal_event"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    return-void
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 96
    .local v0, ret:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 97
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->sendNotifyContentChangeMsg()V

    .line 99
    :cond_0
    return-wide v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 106
    .local v0, ret:I
    if-lez v0, :cond_0

    .line 107
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->sendNotifyContentChangeMsg()V

    .line 109
    :cond_0
    return v0
.end method
