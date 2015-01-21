.class Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AppLockSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;)V
    .locals 4
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter$DatabaseHelper;->this$0:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    .line 27
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const-string v1, "app_lock.db"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 32
    const-string v0, "CREATE TABLE appLockSetting ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    const-string v0, "CREATE INDEX app_lock_name_index ON appLockSetting (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    const-string v0, "CREATE TABLE appLockT (n TEXT PRIMARY KEY, t INTEGER, t1 INTEGER, t2 INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 44
    const-string v0, "CREATE TABLE appLockT (n TEXT PRIMARY KEY, t INTEGER, t1 INTEGER, t2 INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    return-void
.end method
