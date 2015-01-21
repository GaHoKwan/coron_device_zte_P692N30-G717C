.class public Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;
.super Ljava/lang/Object;
.source "AntiEavesdropSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final ANTI_EAVESDROP_ID:Ljava/lang/String; = "_id"

.field private static final ANTI_EAVESDROP_NAME:Ljava/lang/String; = "name"

.field private static final ANTI_EAVESDROP_PROBABILITY:Ljava/lang/String; = "probability"

.field private static final DATABASE_NAME:Ljava/lang/String; = "anti_eavesdrop.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TABLE_ANTI_EAVESDROP_SETTING:Ljava/lang/String; = "antiEavesdropSetting"


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter$DatabaseHelper;

.field private mWatchDog:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;)V
    .locals 1
    .parameter "watchDog"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter$DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter$DatabaseHelper;-><init>(Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;)V

    iput-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->mDbHelper:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter$DatabaseHelper;

    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->mDbHelper:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 55
    iput-object p1, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->mWatchDog:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    .line 56
    return-void
.end method


# virtual methods
.method public AddUncertainEavesdropPackage(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select * from antiEavesdropSetting where name=\'"

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

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 68
    .local v1, initialValues:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "antiEavesdropSetting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 71
    .end local v1           #initialValues:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 72
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public getRunningUncertainEavesdropAppsOrderByProbability()Ljava/util/List;
    .locals 14
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
    .line 79
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v10, runningUncertainEavesdropApps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 81
    .local v5, packageSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->mWatchDog:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    iget-object v11, v11, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->am:Landroid/app/ActivityManager;

    invoke-virtual {v11}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 82
    .local v8, runningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 83
    .local v9, runningProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 84
    .local v6, package_name:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 85
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #package_name:Ljava/lang/String;
    .end local v9           #runningProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    const/4 v1, 0x0

    .line 91
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v11, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "select name from antiEavesdropSetting order by probability desc"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_5

    .line 93
    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 94
    const/4 v11, 0x0

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, pkgName:Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 96
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 101
    .end local v7           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v11

    if-eqz v1, :cond_4

    .line 102
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v11

    .line 101
    :cond_5
    if-eqz v1, :cond_6

    .line 102
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_6
    return-object v10
.end method

.method public recordCheckedUncertainEavesdropApp(Ljava/lang/String;)V
    .locals 8
    .parameter "uncertainEavesdropApp"

    .prologue
    const-wide/16 v6, 0x64

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, cursor:Landroid/database/Cursor;
    const-wide/16 v1, 0x19

    .line 113
    .local v1, probability:J
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select probability from antiEavesdropSetting where name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    goto :goto_0

    .line 120
    :cond_0
    if-eqz v0, :cond_1

    .line 121
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_1
    cmp-long v3, v1, v6

    if-lez v3, :cond_4

    .line 125
    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 134
    :goto_1
    iget-object v3, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update antiEavesdropSetting set probability="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " where name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    :cond_2
    return-void

    .line 120
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 121
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3

    .line 126
    :cond_4
    cmp-long v3, v1, v6

    if-nez v3, :cond_5

    .line 127
    const-wide/16 v1, 0x32

    goto :goto_1

    .line 128
    :cond_5
    const-wide/16 v3, 0x32

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 129
    const-wide/16 v1, 0x19

    goto :goto_1
.end method

.method public recordEavesdropApp(Ljava/lang/String;)V
    .locals 6
    .parameter "eavesdropApp"

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, cursor:Landroid/database/Cursor;
    const-wide/16 v1, 0x32

    .line 141
    .local v1, probability:J
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select probability from antiEavesdropSetting where name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    goto :goto_0

    .line 148
    :cond_0
    if-eqz v0, :cond_1

    .line 149
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_1
    const-wide/16 v3, 0x64

    cmp-long v3, v1, v3

    if-ltz v3, :cond_3

    .line 153
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 154
    iget-object v3, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update antiEavesdropSetting set probability="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " where name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    :goto_1
    return-void

    .line 148
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 149
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3

    .line 156
    :cond_3
    iget-object v3, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update antiEavesdropSetting set probability=100 where name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public recordSafeApps(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v8, 0x64

    .line 162
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    .local v0, app:Ljava/lang/String;
    const/4 v1, 0x0

    .line 165
    .local v1, cursor:Landroid/database/Cursor;
    const-wide/16 v3, 0x1

    .line 167
    .local v3, probability:J
    :try_start_0
    iget-object v5, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select probability from antiEavesdropSetting where name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 168
    if-eqz v1, :cond_0

    .line 169
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    goto :goto_1

    .line 174
    :cond_0
    if-eqz v1, :cond_1

    .line 175
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_1
    cmp-long v5, v3, v8

    if-lez v5, :cond_3

    .line 179
    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    .line 185
    :goto_2
    iget-object v5, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update antiEavesdropSetting set probability="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " where name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    const-string v5, "record"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recordSafeApps:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 174
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_2

    .line 175
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v5

    .line 180
    :cond_3
    cmp-long v5, v3, v8

    if-nez v5, :cond_4

    .line 181
    const-wide/16 v3, 0x32

    goto :goto_2

    .line 183
    :cond_4
    const-wide/16 v3, 0x1

    goto :goto_2

    .line 192
    .end local v0           #app:Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #probability:J
    :cond_5
    return-void
.end method
