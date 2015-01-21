.class public final Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;
.super Ljava/lang/Object;
.source "DBHelper.java"


# static fields
.field private static final CLOSE_DELAY_TIME:J = 0xbb8L

.field private static final DB_NAME:Ljava/lang/String; = "qqpimsecure.zte.db"

.field private static final DB_VERSION:I = 0x6

.field private static final TAG:Ljava/lang/String; = "DBHelper"

.field public static final TB_CONTACT_LIST:Ljava/lang/String; = "contactlist"

.field public static final TB_PIM_CALL_LOG:Ljava/lang/String; = "pimcalllog"

.field public static final TB_SMSLOG:Ljava/lang/String; = "smslog"

.field public static final TB_VIRUS_RECORD:Ljava/lang/String; = "virus_record"

.field private static mDBLock:Ljava/lang/Object;

.field private static mInstance:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;


# instance fields
.field private final CONTACT_LIST_CREATE:Ljava/lang/String;

.field private final PIM_CALL_LOG_CREATE:Ljava/lang/String;

.field private final PIM_CALL_LOG_CREATE_MSIM:Ljava/lang/String;

.field private final SMSLOG_CREATE:Ljava/lang/String;

.field private final SMSLOG_CREATE_MSIM:Ljava/lang/String;

.field private final VIRUS_RECORD_CREATE:Ljava/lang/String;

.field private mCloseDatabaseRunnable:Ljava/lang/Runnable;

.field private mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mInstance:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDBLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "CREATE TABLE IF NOT EXISTS virus_record (id INTEGER PRIMARY KEY,scan_mode INTEGER,scanDate TEXT,riskFound INTEGER,virusCured INTEGER,virusFound INTEGER,adFound INTEGER,notOfficialFound INTEGER,riskPayFound INTEGER,riskStealAccountFound INTEGER,TrojanFound INTEGER,waitingDealing INTEGER)"

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->VIRUS_RECORD_CREATE:Ljava/lang/String;

    .line 56
    const-string v0, "CREATE TABLE IF NOT EXISTS contactlist (id INTEGER PRIMARY KEY,name TEXT,number TEXT,type INTEGER DEFAULT(0),ringStatus INTEGER DEFAULT(1),SMStatus INTEGER DEFAULT(1))"

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->CONTACT_LIST_CREATE:Ljava/lang/String;

    .line 106
    const-string v0, "CREATE TABLE IF NOT EXISTS pimcalllog (id INTEGER PRIMARY KEY,privateflag INTEGER,number TEXT,date INTEGER,duration INTEGER,type INTEGER,tagnew INTEGER,name TEXT,read_extend INTEGER,numbertype INTEGER,numberlabel TEXT)"

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->PIM_CALL_LOG_CREATE:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS pimcalllog (id INTEGER PRIMARY KEY,privateflag INTEGER,number TEXT,date INTEGER,duration INTEGER,type INTEGER,tagnew INTEGER,name TEXT,read_extend INTEGER,numbertype INTEGER,numberlabel TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->PIM_CALL_LOG_CREATE_MSIM:Ljava/lang/String;

    .line 140
    const-string v0, "CREATE TABLE IF NOT EXISTS smslog (id INTEGER PRIMARY KEY,thread_id INTEGER,address TEXT,person INTEGER,date TEXT,protocol INTEGER,read INTEGER,status INTEGER,type INTEGER,subject TEXT,body TEXT,service_center TEXT,displayName TEXT,read_extend INTEGER)"

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->SMSLOG_CREATE:Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS smslog (id INTEGER PRIMARY KEY,thread_id INTEGER,address TEXT,person INTEGER,date TEXT,protocol INTEGER,read INTEGER,status INTEGER,type INTEGER,subject TEXT,body TEXT,service_center TEXT,displayName TEXT,read_extend INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->SMSLOG_CREATE_MSIM:Ljava/lang/String;

    .line 187
    new-instance v0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper$1;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;)V

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mCloseDatabaseRunnable:Ljava/lang/Runnable;

    .line 197
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mHandler:Landroid/os/Handler;

    .line 198
    new-instance v0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper$2;

    const-string v3, "qqpimsecure.zte.db"

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper$2;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 209
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 210
    return-void
.end method

.method private Table(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "table"
    .parameter "db"

    .prologue
    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDBLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method private checkTheadValid()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method private dropTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "table"
    .parameter "db"

    .prologue
    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public static getInstance()Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 220
    sget-object v0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mInstance:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    if-nez v0, :cond_1

    .line 221
    const-class v1, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    monitor-enter v1

    .line 222
    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mInstance:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mInstance:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    .line 225
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_1
    sget-object v0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mInstance:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    return-object v0

    .line 225
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 234
    const-string v0, "CREATE TABLE IF NOT EXISTS virus_record (id INTEGER PRIMARY KEY,scan_mode INTEGER,scanDate TEXT,riskFound INTEGER,virusCured INTEGER,virusFound INTEGER,adFound INTEGER,notOfficialFound INTEGER,riskPayFound INTEGER,riskStealAccountFound INTEGER,TrojanFound INTEGER,waitingDealing INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 235
    const-string v0, "CREATE TABLE IF NOT EXISTS contactlist (id INTEGER PRIMARY KEY,name TEXT,number TEXT,type INTEGER DEFAULT(0),ringStatus INTEGER DEFAULT(1),SMStatus INTEGER DEFAULT(1))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 239
    const-string v0, "CREATE TABLE IF NOT EXISTS pimcalllog (id INTEGER PRIMARY KEY,privateflag INTEGER,number TEXT,date INTEGER,duration INTEGER,type INTEGER,tagnew INTEGER,name TEXT,read_extend INTEGER,numbertype INTEGER,numberlabel TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 244
    :goto_0
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 245
    const-string v0, "CREATE TABLE IF NOT EXISTS smslog (id INTEGER PRIMARY KEY,thread_id INTEGER,address TEXT,person INTEGER,date TEXT,protocol INTEGER,read INTEGER,status INTEGER,type INTEGER,subject TEXT,body TEXT,service_center TEXT,displayName TEXT,read_extend INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    :goto_1
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->PIM_CALL_LOG_CREATE_MSIM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->SMSLOG_CREATE_MSIM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 258
    if-ge p2, v5, :cond_0

    .line 259
    const-string v2, "virus_record"

    invoke-direct {p0, v2, p1}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->dropTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 262
    :cond_0
    if-eq p2, v3, :cond_1

    if-ne p2, v4, :cond_2

    .line 263
    :cond_1
    const-string v2, "mms_part"

    invoke-direct {p0, v2, p1}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->dropTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 264
    const-string v2, "last_scan_log"

    invoke-direct {p0, v2, p1}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->dropTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 268
    :cond_2
    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    if-eq p2, v4, :cond_3

    if-ne p2, v3, :cond_5

    .line 269
    :cond_3
    sget-object v2, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 270
    const-string v1, "alter table "

    .line 271
    .local v1, sql:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pimcalllog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER default "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/msim/SimManager;->getCalllogColumnDefaultValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 279
    .end local v1           #sql:Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 280
    const-string v1, "alter table "

    .line 281
    .restart local v1       #sql:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "smslog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER default "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/msim/SimManager;->getSmsColumnDefaultValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 291
    .end local v1           #sql:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x4

    if-eq p2, v2, :cond_6

    if-ne p2, v5, :cond_7

    .line 292
    :cond_6
    const-string v2, "sub_id"

    sget-object v3, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/msim/SimManager;->isQCQrdVersion()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 294
    const-string v1, "alter table "

    .line 295
    .restart local v1       #sql:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pimcalllog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER default "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/msim/SimManager;->getSmsColumnDefaultValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v1           #sql:Ljava/lang/String;
    :cond_7
    :goto_0
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 311
    return-void

    .line 303
    .restart local v1       #sql:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "liuji debug onUpgrade err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mCloseDatabaseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 489
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mCloseDatabaseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "table"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->checkTheadValid()V

    .line 406
    sget-object v2, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDBLock:Ljava/lang/Object;

    monitor-enter v2

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 408
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 409
    .end local v0           #database:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteTable(Ljava/lang/String;)I
    .locals 4
    .parameter "table"

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->checkTheadValid()V

    .line 438
    sget-object v2, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDBLock:Ljava/lang/Object;

    monitor-enter v2

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 440
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 441
    .end local v0           #database:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public execTransaction(Lcom/zte/heartyservice/intercept/Tencent/SimpleCallback;)Z
    .locals 4
    .parameter "callback"

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->checkTheadValid()V

    .line 467
    const/4 v1, 0x0

    .line 468
    .local v1, result:Z
    sget-object v3, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDBLock:Ljava/lang/Object;

    monitor-enter v3

    .line 469
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 470
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 473
    :try_start_1
    invoke-interface {p1, p0}, Lcom/zte/heartyservice/intercept/Tencent/SimpleCallback;->onCallback(Ljava/lang/Object;)V

    .line 474
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    const/4 v1, 0x1

    .line 477
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 478
    invoke-virtual {p0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 480
    monitor-exit v3

    .line 481
    return v1

    .line 477
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 478
    invoke-virtual {p0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    throw v2

    .line 480
    .end local v0           #database:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 5
    .parameter "table"
    .parameter "values"

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->checkTheadValid()V

    .line 389
    sget-object v2, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDBLock:Ljava/lang/Object;

    monitor-enter v2

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 391
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    monitor-exit v2

    return-wide v3

    .line 392
    .end local v0           #database:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 5
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->checkTheadValid()V

    .line 375
    sget-object v2, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDBLock:Ljava/lang/Object;

    monitor-enter v2

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 377
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    monitor-exit v2

    return-wide v3

    .line 378
    .end local v0           #database:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noneQuery(Ljava/lang/String;)V
    .locals 3
    .parameter "queryStr"

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->checkTheadValid()V

    .line 356
    sget-object v2, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDBLock:Ljava/lang/Object;

    monitor-enter v2

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 358
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 359
    monitor-exit v2

    .line 360
    return-void

    .line 359
    .end local v0           #database:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "queryStr"

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->checkTheadValid()V

    .line 322
    sget-object v1, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDBLock:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->checkTheadValid()V

    .line 341
    sget-object v8, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDBLock:Ljava/lang/Object;

    monitor-enter v8

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 343
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    monitor-exit v8

    return-object v1

    .line 344
    .end local v0           #database:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->checkTheadValid()V

    .line 424
    sget-object v2, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDBLock:Ljava/lang/Object;

    monitor-enter v2

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 426
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 427
    .end local v0           #database:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
