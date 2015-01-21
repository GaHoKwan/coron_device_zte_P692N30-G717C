.class public Lcom/zte/backup/format/db/AlarmDBBackup;
.super Lcom/zte/backup/format/db/DBBackup;
.source "AlarmDBBackup.java"


# static fields
.field private static final AlarmsDBPath:Ljava/lang/String; = "/data/data/zte.com.cn.alarmclock/databases/alarms.db"

.field private static final AlarmsDBPath_T98:Ljava/lang/String; = "/data/data/com.android.deskclock/databases/alarms.db"

.field private static final AlarmsURI:Ljava/lang/String; = "content://zte.com.cn.alarmclock/alarm"

.field private static final AlarmsURI_T98:Ljava/lang/String; = "content://com.android.deskclock/alarm"

.field private static final DeskClockPath:Ljava/lang/String; = "/data/data/com.android.deskclock"


# instance fields
.field private alarmDBLocation:Ljava/lang/String;

.field private columnNames:[Ljava/lang/String;

.field private isDeskclock:Z


# direct methods
.method public constructor <init>(Lcom/zte/backup/composer/Composer;)V
    .locals 1
    .parameter "composer"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/zte/backup/format/db/DBBackup;-><init>(Lcom/zte/backup/composer/Composer;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/backup/format/db/AlarmDBBackup;->isDeskclock:Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/format/db/AlarmDBBackup;->columnNames:[Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/zte/backup/format/db/AlarmDBBackup;->isDeskClockDB()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/backup/format/db/AlarmDBBackup;->isDeskclock:Z

    .line 51
    iget-boolean v0, p0, Lcom/zte/backup/format/db/AlarmDBBackup;->isDeskclock:Z

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "/data/data/com.android.deskclock/databases/alarms.db"

    iput-object v0, p0, Lcom/zte/backup/format/db/AlarmDBBackup;->alarmDBLocation:Ljava/lang/String;

    .line 56
    :goto_0
    const-string v0, "AlarmBackup"

    iput-object v0, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    .line 57
    return-void

    .line 54
    :cond_0
    const-string v0, "/data/data/zte.com.cn.alarmclock/databases/alarms.db"

    iput-object v0, p0, Lcom/zte/backup/format/db/AlarmDBBackup;->alarmDBLocation:Ljava/lang/String;

    goto :goto_0
.end method

.method private isDeskClockDB()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.deskclock"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, alarmFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 45
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public changeContentValues(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 10
    .parameter "context"
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/zte/backup/format/db/AlarmDBBackup;->columnNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/format/db/AlarmDBBackup;->getURI()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 106
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/db/AlarmDBBackup;->columnNames:[Ljava/lang/String;

    .line 107
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 110
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 111
    .local v9, mValues:Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 113
    .local v8, data:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/zte/backup/format/db/AlarmDBBackup;->isDeskclock:Z

    if-eqz v0, :cond_1

    .line 114
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo;->getInstance()Lcom/zte/backup/utils/VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo;->isMTKPlatform()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    const-string v0, "alarmtype"

    const-string v1, "0"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_1
    const/4 v6, 0x0

    .local v6, columnIndex:I
    :goto_0
    iget-object v0, p0, Lcom/zte/backup/format/db/AlarmDBBackup;->columnNames:[Ljava/lang/String;

    array-length v0, v0

    if-lt v6, v0, :cond_2

    .line 126
    return-object v9

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/format/db/AlarmDBBackup;->columnNames:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #data:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 121
    .restart local v8       #data:Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 122
    iget-object v0, p0, Lcom/zte/backup/format/db/AlarmDBBackup;->columnNames:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public getBackupDataSize()J
    .locals 6

    .prologue
    const-wide/16 v3, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/zte/backup/format/db/AlarmDBBackup;->getItemCount()I

    move-result v5

    int-to-long v1, v5

    .line 171
    .local v1, size:J
    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/zte/backup/format/db/AlarmDBBackup;->alarmDBLocation:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-wide v3

    .line 174
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/zte/backup/format/db/AlarmDBBackup;->alarmDBLocation:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    move-wide v3, v1

    .line 176
    goto :goto_0
.end method

.method public getCheckExistKeys()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    const-string v3, "hour"

    .line 133
    .local v3, hourKey:Ljava/lang/String;
    const-string v5, "minutes"

    .line 134
    .local v5, minKey:Ljava/lang/String;
    const-string v1, "daysofweek"

    .line 135
    .local v1, daysOfWeekKey:Ljava/lang/String;
    const-string v0, "alarmtime"

    .line 136
    .local v0, alarmTimeKey:Ljava/lang/String;
    const-string v2, "enabled"

    .line 138
    .local v2, enabledKey:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v4, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-object v4
.end method

.method public getConditionkeys(Lcom/zte/backup/format/db/OkbDBInterface;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 165
    return-void
.end method

.method public getDBName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "alarm.db"

    return-object v0
.end method

.method public getDBVersionBySDKVersion()I
    .locals 3

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, nowVersion:I
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.android.deskclock"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, alarmFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const/4 v1, 0x1

    .line 191
    :cond_0
    return v1
.end method

.method public getDiffDBVersionKeys()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    const/16 v1, 0xb

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hour"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "daysofweek"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "alarmtime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "vibrate"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "message"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 159
    const-string v2, "alert"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "snooze"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "crescendo"

    aput-object v2, v0, v1

    .line 160
    .local v0, diffVerionHasKey:[Ljava/lang/String;
    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueryDBSelwhenBackup()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 82
    iget-boolean v1, p0, Lcom/zte/backup/format/db/AlarmDBBackup;->isDeskclock:Z

    if-eqz v1, :cond_0

    .line 83
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo;->getInstance()Lcom/zte/backup/utils/VersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/backup/utils/VersionInfo;->isMTKPlatform()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo;->getInstance()Lcom/zte/backup/utils/VersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/backup/utils/VersionInfo;->isTabletP60()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const-string v0, "alarmtype = \'0\'"

    goto :goto_0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "alarms"

    return-object v0
.end method

.method public getURI()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, uri:Landroid/net/Uri;
    iget-boolean v1, p0, Lcom/zte/backup/format/db/AlarmDBBackup;->isDeskclock:Z

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "content://com.android.deskclock/alarm"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 65
    :cond_0
    const-string v1, "content://zte.com.cn.alarmclock/alarm"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public isSouport(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 27
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/format/db/AlarmDBBackup;->getURI()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 28
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v8

    .line 37
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 32
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const/4 v0, 0x1

    goto :goto_0

    .line 33
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    move v0, v8

    .line 34
    goto :goto_0
.end method
