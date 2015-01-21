.class public Lcom/hf/provider/SQLHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLHelper.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "weather.db"

.field private static final DB_VERSION:I = 0x9

.field private static final WEATHER_TABLE_CREATE:Ljava/lang/String; = "create table weather (_id INTEGER PRIMARY KEY AUTOINCREMENT,cityId TEXT,name TEXT,pinyin TEXT,englishName TEXT,cityDisplayName TEXT,sid TEXT, isDefault INTEGER, skTemperature TEXT,skWeather INTEGER,skReportTime TEXT,wind_power1 INTEGER,wind_power2 INTEGER,wind_dir1 INTEGER,wind_dir2 INTEGER,tMax TEXT,tMin TEXT,weather1 INTEGER,weather2 INTEGER);"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 38
    const-string v0, "weather.db"

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    iput-object p1, p0, Lcom/hf/provider/SQLHelper;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public deleteDatabase()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/hf/provider/SQLHelper;->mContext:Landroid/content/Context;

    const-string v1, "weather.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 66
    iget-object v0, p0, Lcom/hf/provider/SQLHelper;->mContext:Landroid/content/Context;

    const-string v1, "city.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 67
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 44
    const-string v0, "create table weather (_id INTEGER PRIMARY KEY AUTOINCREMENT,cityId TEXT,name TEXT,pinyin TEXT,englishName TEXT,cityDisplayName TEXT,sid TEXT, isDefault INTEGER, skTemperature TEXT,skWeather INTEGER,skReportTime TEXT,wind_power1 INTEGER,wind_power2 INTEGER,wind_dir1 INTEGER,wind_dir2 INTEGER,tMax TEXT,tMin TEXT,weather1 INTEGER,weather2 INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 59
    const-string v0, "onDowngrade"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "oldVersion = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; newVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/hf/provider/SQLHelper;->deleteDatabase()V

    .line 61
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/hf/provider/SQLHelper;->deleteDatabase()V

    .line 54
    return-void
.end method
