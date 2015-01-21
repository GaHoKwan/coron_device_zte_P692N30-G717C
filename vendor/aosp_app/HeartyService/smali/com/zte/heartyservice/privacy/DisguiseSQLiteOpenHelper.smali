.class public Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DisguiseSQLiteOpenHelper.java"


# static fields
.field public static final DISGUISE_DB:Ljava/lang/String; = "disguise.db"

.field private static final NOTIFY_CONTENT_CHANGE:I = 0x0

.field public static final TB_CALLLOG:Ljava/lang/String; = "calllog"

.field public static final TB_CONTACT:Ljava/lang/String; = "contact"

.field public static final TB_PASSWORD_PROTECTOR:Ljava/lang/String; = "password_protector"

.field public static final TB_SMS:Ljava/lang/String; = "sms"

.field private static sInstance:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;


# instance fields
.field private final TB_CALLLOG_CREATE:Ljava/lang/String;

.field private final TB_CONTACT_CREATE:Ljava/lang/String;

.field private final TB_PASSWORD_PROTECTOR_CREATE:Ljava/lang/String;

.field private final TB_SMS_CREATE:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/database/ContentObserver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->sInstance:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "disguise.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->mObservers:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper$1;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper$1;-><init>(Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->mHandler:Landroid/os/Handler;

    .line 51
    const-string v0, "CREATE TABLE IF NOT EXISTS contact ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, number TEXT, ac TEXT )"

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->TB_CONTACT_CREATE:Ljava/lang/String;

    .line 54
    const-string v0, "CREATE TABLE IF NOT EXISTS calllog ( _id INTEGER PRIMARY KEY AUTOINCREMENT, number TEXT, ac TEXT, date INTEGER, duration INTEGER, type INTEGER, new INTEGER, sim_id INTEGER DEFAULT 1 )"

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->TB_CALLLOG_CREATE:Ljava/lang/String;

    .line 59
    const-string v0, "CREATE TABLE IF NOT EXISTS sms ( _id INTEGER PRIMARY KEY AUTOINCREMENT, number TEXT, ac TEXT, date INTEGER, read INTEGER DEFAULT 0, type INTEGER, subject TEXT, body TEXT, sim_id INTEGER DEFAULT 0 )"

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->TB_SMS_CREATE:Ljava/lang/String;

    .line 64
    const-string v0, "CREATE TABLE IF NOT EXISTS password_protector ( _id INTEGER PRIMARY KEY AUTOINCREMENT, account_type INTEGER, account_description TEXT, user_name TEXT, password TEXT, notes TEXT )"

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->TB_PASSWORD_PROTECTOR_CREATE:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->notifyContentChange()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
    .locals 3

    .prologue
    .line 44
    const-class v1, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->sInstance:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->sInstance:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    .line 48
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->sInstance:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyContentChange()V
    .locals 5

    .prologue
    .line 151
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 153
    .local v2, obList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 154
    .local v3, wob:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 155
    .local v1, ob:Landroid/database/ContentObserver;
    if-eqz v1, :cond_0

    .line 156
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->dispatchChange(Z)V

    goto :goto_0

    .line 159
    .end local v1           #ob:Landroid/database/ContentObserver;
    .end local v3           #wob:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;"
    :cond_1
    return-void
.end method

.method private static sendNotifyContentChangeMsg()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    sget-object v0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->sInstance:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    sget-object v0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->sInstance:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "table"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 178
    .local v0, ret:I
    if-lez v0, :cond_0

    .line 179
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->sendNotifyContentChangeMsg()V

    .line 181
    :cond_0
    return v0
.end method

.method public getContactName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "ac"

    .prologue
    const/4 v10, 0x0

    .line 109
    const/4 v8, 0x0

    .line 111
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "contact"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ac=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 113
    if-eqz v8, :cond_1

    .line 114
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    if-eqz v8, :cond_0

    .line 122
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_0
    :goto_0
    return-object v0

    .line 121
    :cond_1
    if-eqz v8, :cond_2

    .line 122
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v10

    .line 125
    goto :goto_0

    .line 118
    :catch_0
    move-exception v9

    .line 119
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    if-eqz v8, :cond_2

    .line 122
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 121
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 122
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 170
    .local v0, ret:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 171
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->sendNotifyContentChangeMsg()V

    .line 173
    :cond_0
    return-wide v0
.end method

.method public isItemExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "tb"
    .parameter "selection"

    .prologue
    .line 89
    const/4 v8, 0x0

    .line 91
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 93
    if-eqz v8, :cond_1

    .line 94
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    .line 95
    const/4 v0, 0x1

    .line 101
    if-eqz v8, :cond_0

    .line 102
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    if-eqz v8, :cond_2

    .line 102
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v9

    .line 99
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    if-eqz v8, :cond_2

    .line 102
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 101
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 102
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 73
    const-string v0, "CREATE TABLE IF NOT EXISTS contact ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, number TEXT, ac TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    const-string v0, "CREATE TABLE IF NOT EXISTS calllog ( _id INTEGER PRIMARY KEY AUTOINCREMENT, number TEXT, ac TEXT, date INTEGER, duration INTEGER, type INTEGER, new INTEGER, sim_id INTEGER DEFAULT 1 )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    const-string v0, "CREATE TABLE IF NOT EXISTS sms ( _id INTEGER PRIMARY KEY AUTOINCREMENT, number TEXT, ac TEXT, date INTEGER, read INTEGER DEFAULT 0, type INTEGER, subject TEXT, body TEXT, sim_id INTEGER DEFAULT 0 )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    const-string v0, "CREATE TABLE IF NOT EXISTS password_protector ( _id INTEGER PRIMARY KEY AUTOINCREMENT, account_type INTEGER, account_description TEXT, user_name TEXT, password TEXT, notes TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 81
    const-string v0, "drop table if exists contact"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    const-string v0, "drop table if exists calllog"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    const-string v0, "drop table if exists sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    const-string v0, "drop table if exists password_protector"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 86
    return-void
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 129
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkThreadValid()V

    .line 130
    if-nez p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->mObservers:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 188
    .local v0, ret:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 189
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->sendNotifyContentChangeMsg()V

    .line 191
    :cond_0
    return-wide v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 139
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkThreadValid()V

    .line 141
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 143
    .local v1, ob:Landroid/database/ContentObserver;
    if-eqz v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 145
    add-int/lit8 v0, v0, -0x1

    .line 141
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v1           #ob:Landroid/database/ContentObserver;
    :cond_2
    return-void
.end method
