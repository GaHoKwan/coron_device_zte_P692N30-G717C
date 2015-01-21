.class public Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;
.super Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final BAIDU_NETDISK_DATABASE_NAME:Ljava/lang/String; = "xclouddisk.db"

.field private static final COLUMN_TYPE_INTEGER:Ljava/lang/String; = "INTEGER"

.field private static final COLUMN_TYPE_TEXT:Ljava/lang/String; = "TEXT"

.field protected static final DATABASE_VERSION:I = 0x4

.field protected static final TABLE_ACCOUNT:Ljava/lang/String; = "CREATE TABLE account (_id INTEGER PRIMARY KEY AUTOINCREMENT,account TEXT);"

.field protected static final TABLE_SUB_FILE_TASK_INFO:Ljava/lang/String; = "CREATE TABLE subfiletaskinfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,account_id INTEGER,task_id INTEGER,type INTEGER,state INTEGER,local_url TEXT,remote_url TEXT,is_dir INTEGER,date TEXT,size INTEGER,offset_size INTEGER,extra_info_num INTEGER,data1 TEXT,data2 TEXT,data3 TEXT,data4 TEXT );"

.field protected static final TABLE_TASK_INFO:Ljava/lang/String; = "CREATE TABLE taskinfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,account_id INTEGER,type INTEGER,state INTEGER,local_url TEXT,remote_url TEXT,date TEXT,size INTEGER,offset_size INTEGER,extra_info_num INTEGER,data1 TEXT,data2 TEXT,data3 TEXT,data4 TEXT );"

.field protected static final TABLE_TASK_REPONSE:Ljava/lang/String; = "CREATE TABLE taskresponse (_id INTEGER PRIMARY KEY AUTOINCREMENT,task_id INTEGER,response TEXT );"

.field private static final TAG:Ljava/lang/String; = "TaskDB"

.field protected static final TRIGGER_ACCOUNT_DELETE:Ljava/lang/String; = "CREATE TRIGGER task_delete_on_account_delete AFTER DELETE ON account BEGIN   DELETE FROM taskinfo   WHERE   account_id = old._id; END;"

.field protected static final TRIGGER_TASK_DELETE:Ljava/lang/String; = "CREATE TRIGGER response_clean_on_task_delete AFTER DELETE ON taskinfo BEGIN   DELETE FROM taskresponse   WHERE   task_id = old._id; END;"

.field private static _INSTANCE:Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->_INSTANCE:Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v1, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->_INSTANCE:Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v2, "context is null"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    invoke-direct {v0, p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->_INSTANCE:Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    sget-object v0, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->_INSTANCE:Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    invoke-virtual {v0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->open()Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    sget-object v0, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->_INSTANCE:Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->_INSTANCE:Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    return-void
.end method
