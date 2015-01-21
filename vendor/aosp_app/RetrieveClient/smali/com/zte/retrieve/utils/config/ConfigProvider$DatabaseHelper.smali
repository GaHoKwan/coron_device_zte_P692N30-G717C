.class public Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/utils/config/ConfigProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 27
    const-string v0, "Config.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public getValue()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lcom/zte/retrieve/utils/config/ConfigHelper;

    invoke-direct {v0}, Lcom/zte/retrieve/utils/config/ConfigHelper;-><init>()V

    .line 44
    .local v0, cp:Lcom/zte/retrieve/utils/config/ConfigHelper;
    invoke-static {}, Lcom/zte/retrieve/utils/config/ConfigProvider;->access$0()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zte/retrieve/utils/config/ConfigHelper;->setContext(Landroid/content/Context;)V

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, mValue:Landroid/content/ContentValues;
    const/high16 v2, 0x7f04

    invoke-virtual {v0, v2}, Lcom/zte/retrieve/utils/config/ConfigHelper;->initAppConfigProperties(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #mValue:Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 48
    .restart local v1       #mValue:Landroid/content/ContentValues;
    const-string v2, "isBusinessVersion"

    const-string v3, "isBusinessVersion"

    invoke-virtual {v0, v3}, Lcom/zte/retrieve/utils/config/ConfigHelper;->getBoolProperty(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 49
    const-string v2, "isSupportCloud"

    const-string v3, "isSupportCloud"

    invoke-virtual {v0, v3}, Lcom/zte/retrieve/utils/config/ConfigHelper;->getBoolProperty(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 50
    const-string v2, "updateType"

    const-string v3, "updateType"

    invoke-virtual {v0, v3}, Lcom/zte/retrieve/utils/config/ConfigHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "singleUpdateURL"

    const-string v3, "singleUpdateURL"

    invoke-virtual {v0, v3}, Lcom/zte/retrieve/utils/config/ConfigHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v2, "defaultLoginURL"

    const-string v3, "defaultLoginURL"

    invoke-virtual {v0, v3}, Lcom/zte/retrieve/utils/config/ConfigHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "retrieveServerURL"

    const-string v3, "retrieveServerURL"

    invoke-virtual {v0, v3}, Lcom/zte/retrieve/utils/config/ConfigHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "LogSwitch"

    const-string v3, "LogSwitch"

    invoke-virtual {v0, v3}, Lcom/zte/retrieve/utils/config/ConfigHelper;->getBoolProperty(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 55
    const-string v2, "isHeartyVersion"

    .line 56
    const-string v3, "isHeartyVersion"

    invoke-virtual {v0, v3}, Lcom/zte/retrieve/utils/config/ConfigHelper;->getBoolProperty(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 57
    const-string v2, "TrackSwitch"

    const-string v3, "TrackSwitch"

    invoke-virtual {v0, v3}, Lcom/zte/retrieve/utils/config/ConfigHelper;->getBoolProperty(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 59
    :cond_0
    return-object v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 32
    const-string v1, "oncreate"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 34
    const-string v1, "Create table Config( _id INTEGER PRIMARY KEY AUTOINCREMENT, isBusinessVersion TEXT,isSupportCloud TEXT,updateType TEXT,singleUpdateURL TEXT,defaultLoginURL TEXT,retrieveServerURL TEXT,LogSwitch TEXT,isHeartyVersion TEXT,TrackSwitch TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;->getValue()Landroid/content/ContentValues;

    move-result-object v0

    .line 38
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "Config"

    const-string v2, ""

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 40
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 64
    const-string v0, "retrive onUpgrade"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 65
    const-string v0, "DROP TABLE IF EXISTS Config"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    return-void
.end method
