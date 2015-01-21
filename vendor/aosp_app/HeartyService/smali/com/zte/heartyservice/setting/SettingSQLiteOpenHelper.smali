.class public Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SettingSQLiteOpenHelper.java"


# static fields
.field private static final SETTING_DB:Ljava/lang/String; = "setting.db"

.field public static final TB_WHITE_APPS:Ljava/lang/String; = "white_apps"

.field private static sInstance:Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;


# instance fields
.field private final TB_WHITE_APPS_CREATE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;->sInstance:Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 19
    const-string v0, "setting.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 30
    const-string v0, "CREATE TABLE IF NOT EXISTS white_apps ( _id INTEGER PRIMARY KEY AUTOINCREMENT, package TEXT )"

    iput-object v0, p0, Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;->TB_WHITE_APPS_CREATE:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;
    .locals 3

    .prologue
    .line 23
    const-class v1, Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;->sInstance:Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;->sInstance:Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;

    .line 27
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;->sInstance:Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "db"

    .prologue
    const/4 v8, 0x0

    .line 37
    const-string v5, "CREATE TABLE IF NOT EXISTS white_apps ( _id INTEGER PRIMARY KEY AUTOINCREMENT, package TEXT )"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v5

    const-string v6, "HeartyServiceAppData"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 41
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v5, "clear_app_settings"

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 42
    const-string v5, "clear_app_settings"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 44
    .local v0, clearAppWhiteList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 45
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 46
    .local v2, pkg:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 47
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "package"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v5, "white_apps"

    invoke-virtual {p1, v5, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 52
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pkg:Ljava/lang/String;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "clear_app_settings"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    .end local v0           #clearAppWhiteList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 59
    const-string v0, "DROP TABLE IF EXISTS CREATE TABLE IF NOT EXISTS white_apps ( _id INTEGER PRIMARY KEY AUTOINCREMENT, package TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    return-void
.end method
