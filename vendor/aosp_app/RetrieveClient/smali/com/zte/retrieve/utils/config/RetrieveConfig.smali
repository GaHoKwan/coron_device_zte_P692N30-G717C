.class public Lcom/zte/retrieve/utils/config/RetrieveConfig;
.super Ljava/lang/Object;
.source "RetrieveConfig.java"


# static fields
.field public static final AUTH_URL:Ljava/lang/String; = "defaultLoginURL"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final HEARTY_SERVICE_VERSION:Ljava/lang/String; = "isHeartyVersion"

.field public static final LOG_SWITCH:Ljava/lang/String; = "LogSwitch"

.field public static final SERVER_URL:Ljava/lang/String; = "retrieveServerURL"

.field public static final SUPPORT_CLOUD:Ljava/lang/String; = "isSupportCloud"

.field public static final TRACK_SWITCH:Ljava/lang/String; = "TrackSwitch"

.field public static final UPDATE_TYPE:Ljava/lang/String; = "updateType"

.field public static final UPDATE_TYPE_VERSION_HEARTY:Ljava/lang/String; = "2"

.field public static final UPDATE_TYPE_VERSION_SINGLE:Ljava/lang/String; = "1"

.field public static final UPDATE_URL:Ljava/lang/String; = "singleUpdateURL"

.field public static final VERSION_INFO:Ljava/lang/String; = "isBusinessVersion"

.field private static instance:Lcom/zte/retrieve/utils/config/RetrieveConfig;

.field public static logSwitch:Z

.field public static monkeySwitch:Z


# instance fields
.field private SDCARDEXTNAME:Ljava/lang/String;

.field private cp:Lcom/zte/retrieve/utils/config/ConfigHelper;

.field public defaultLoginURL:Ljava/lang/String;

.field public isBusinessVersion:Z

.field public isHeartyVersion:Z

.field public isSupportCloud:Z

.field public retrieveServerURL:Ljava/lang/String;

.field public singleUpdateURL:Ljava/lang/String;

.field public trackSwitch:Z

.field public updateType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->logSwitch:Z

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->monkeySwitch:Z

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->instance:Lcom/zte/retrieve/utils/config/RetrieveConfig;

    .line 62
    const-string v0, "content://com.zte.retrieve.utils.config.ConfigProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->CONTENT_URI:Landroid/net/Uri;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->SDCARDEXTNAME:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->initFromProperty()V

    .line 66
    return-void
.end method

.method public static getInstance()Lcom/zte/retrieve/utils/config/RetrieveConfig;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->instance:Lcom/zte/retrieve/utils/config/RetrieveConfig;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/zte/retrieve/utils/config/RetrieveConfig;

    invoke-direct {v0}, Lcom/zte/retrieve/utils/config/RetrieveConfig;-><init>()V

    sput-object v0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->instance:Lcom/zte/retrieve/utils/config/RetrieveConfig;

    .line 72
    :cond_0
    sget-object v0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->instance:Lcom/zte/retrieve/utils/config/RetrieveConfig;

    invoke-direct {v0}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->initFromProperty()V

    .line 73
    sget-object v0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->instance:Lcom/zte/retrieve/utils/config/RetrieveConfig;

    return-object v0
.end method

.method private initFromProperty()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 86
    iget-object v1, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->cp:Lcom/zte/retrieve/utils/config/ConfigHelper;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/zte/retrieve/utils/config/ConfigHelper;

    invoke-direct {v1}, Lcom/zte/retrieve/utils/config/ConfigHelper;-><init>()V

    iput-object v1, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->cp:Lcom/zte/retrieve/utils/config/ConfigHelper;

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->cp:Lcom/zte/retrieve/utils/config/ConfigHelper;

    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/retrieve/controller/Controller;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zte/retrieve/utils/config/ConfigHelper;->setContext(Landroid/content/Context;)V

    .line 90
    iget-object v1, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->cp:Lcom/zte/retrieve/utils/config/ConfigHelper;

    const/high16 v3, 0x7f04

    invoke-virtual {v1, v3}, Lcom/zte/retrieve/utils/config/ConfigHelper;->initAppConfigProperties(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    new-instance v9, Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;

    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 92
    .local v9, helper:Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;
    invoke-virtual {v9}, Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 93
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 95
    .local v8, c:Landroid/database/Cursor;
    const-string v1, "Config"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 96
    if-nez v8, :cond_2

    .line 97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 119
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #helper:Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;
    :cond_1
    :goto_0
    return-void

    .line 100
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v9       #helper:Lcom/zte/retrieve/utils/config/ConfigProvider$DatabaseHelper;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    :cond_3
    const-string v1, "isSupportCloud"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v10, :cond_5

    move v1, v10

    :goto_1
    iput-boolean v1, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isSupportCloud:Z

    .line 105
    const-string v1, "isBusinessVersion"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v10, :cond_6

    move v1, v10

    :goto_2
    iput-boolean v1, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isBusinessVersion:Z

    .line 106
    const-string v1, "isHeartyVersion"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v10, :cond_7

    move v1, v10

    :goto_3
    iput-boolean v1, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isHeartyVersion:Z

    .line 107
    const-string v1, "updateType"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->updateType:Ljava/lang/String;

    .line 108
    const-string v1, "singleUpdateURL"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->singleUpdateURL:Ljava/lang/String;

    .line 109
    const-string v1, "defaultLoginURL"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->defaultLoginURL:Ljava/lang/String;

    .line 110
    const-string v1, "retrieveServerURL"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->retrieveServerURL:Ljava/lang/String;

    .line 111
    const-string v1, "TrackSwitch"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v10, :cond_8

    move v1, v10

    :goto_4
    iput-boolean v1, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->trackSwitch:Z

    .line 113
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 101
    if-nez v1, :cond_3

    .line 116
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :cond_5
    move v1, v11

    .line 102
    goto :goto_1

    :cond_6
    move v1, v11

    .line 105
    goto :goto_2

    :cond_7
    move v1, v11

    .line 106
    goto :goto_3

    :cond_8
    move v1, v11

    .line 111
    goto :goto_4
.end method

.method public static isLogSwitch()Z
    .locals 1

    .prologue
    .line 122
    sget-boolean v0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->logSwitch:Z

    return v0
.end method

.method public static isMonkeySwitch()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->monkeySwitch:Z

    return v0
.end method


# virtual methods
.method public getDefaultLoginURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->defaultLoginURL:Ljava/lang/String;

    return-object v0
.end method

.method public getRetrieveServerURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->retrieveServerURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSDCardExtName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->SDCARDEXTNAME:Ljava/lang/String;

    return-object v0
.end method

.method public getSingleUpdateURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->singleUpdateURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->updateType:Ljava/lang/String;

    return-object v0
.end method

.method public isBusinessVersion()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isBusinessVersion:Z

    return v0
.end method

.method public isHeartyVersion()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isHeartyVersion:Z

    return v0
.end method

.method public isSupportCloud()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isSupportCloud:Z

    return v0
.end method

.method public isTrackSwitch()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->trackSwitch:Z

    return v0
.end method

.method public reloadConfigProperties()V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->instance:Lcom/zte/retrieve/utils/config/RetrieveConfig;

    invoke-direct {v0}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->initFromProperty()V

    .line 82
    return-void
.end method

.method public setExtCardName(Ljava/lang/String;)V
    .locals 1
    .parameter "sdPath"

    .prologue
    .line 150
    sget-object v0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->instance:Lcom/zte/retrieve/utils/config/RetrieveConfig;

    iput-object p1, v0, Lcom/zte/retrieve/utils/config/RetrieveConfig;->SDCARDEXTNAME:Ljava/lang/String;

    .line 151
    return-void
.end method
