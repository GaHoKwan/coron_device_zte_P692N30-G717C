.class public Lcom/mediatek/providers/calendar/extension/MTKDatabaseUpgradeExt;
.super Ljava/lang/Object;
.source "MTKDatabaseUpgradeExt.java"

# interfaces
.implements Lcom/mediatek/providers/calendar/extension/IDatabaseUpgradeExt;


# static fields
.field private static final EVENTS_TABLE:Ljava/lang/String; = "Events"

.field private static final MTK_BACKUP_TABLE:Ljava/lang/String; = "mtk_backup_table"

.field private static final TAG:Ljava/lang/String; = "MTKDatabaseUpgradeExt"


# instance fields
.field private mIsUpgradeFromMTKVersion:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/providers/calendar/extension/MTKDatabaseUpgradeExt;->mIsUpgradeFromMTKVersion:Z

    return-void
.end method

.method private backupMTKColumns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 70
    const-string v0, "CREATE TABLE mtk_backup_table AS SELECT _id,createTime,modifyTime,isLunar,lunarRrule FROM Events;"

    .line 78
    .local v0, backupMTKColumnsSql:Ljava/lang/String;
    const-string v1, "MTKDatabaseUpgradeExt"

    const-string v2, "backupMTKColumns, sql = CREATE TABLE mtk_backup_table AS SELECT _id,createTime,modifyTime,isLunar,lunarRrule FROM Events;"

    invoke-static {v1, v2}, Lcom/mediatek/providers/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "CREATE TABLE mtk_backup_table AS SELECT _id,createTime,modifyTime,isLunar,lunarRrule FROM Events;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private downgradeFromMTKGBVersion(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2
    .parameter "db"

    .prologue
    .line 44
    const-string v0, "MTKDatabaseUpgradeExt"

    const-string v1, "downgradeFromMTKGBVersion"

    invoke-static {v0, v1}, Lcom/mediatek/providers/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/mediatek/providers/calendar/extension/MTKDatabaseUpgradeExt;->backupMTKColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    const/16 v0, 0x66

    return v0
.end method

.method private downgradeFromMTKICSVersion(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2
    .parameter "db"

    .prologue
    .line 55
    const-string v0, "MTKDatabaseUpgradeExt"

    const-string v1, "downgradeFromMTKICSVersion"

    invoke-static {v0, v1}, Lcom/mediatek/providers/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/mediatek/providers/calendar/extension/MTKDatabaseUpgradeExt;->backupMTKColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    const/16 v0, 0x134

    return v0
.end method

.method private ensureMTKColumns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 124
    const-string v1, "MTKDatabaseUpgradeExt"

    const-string v2, "ensure MTK Columns exists"

    invoke-static {v1, v2}, Lcom/mediatek/providers/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "select * from Events where _id=0"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 126
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 127
    const-string v1, "MTKDatabaseUpgradeExt"

    const-string v2, "the cursor shouldn\'t be null"

    invoke-static {v1, v2}, Lcom/mediatek/providers/calendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v1, "createTime"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 132
    const-string v1, "MTKDatabaseUpgradeExt"

    const-string v2, "add column: createTime"

    invoke-static {v1, v2}, Lcom/mediatek/providers/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "ALTER TABLE Events ADD COLUMN createTime INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    :cond_1
    const-string v1, "modifyTime"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    .line 139
    const-string v1, "MTKDatabaseUpgradeExt"

    const-string v2, "add column: modifyTime"

    invoke-static {v1, v2}, Lcom/mediatek/providers/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "ALTER TABLE Events ADD COLUMN modifyTime INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    :cond_2
    const-string v1, "isLunar"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    .line 146
    const-string v1, "MTKDatabaseUpgradeExt"

    const-string v2, "add column: isLunar"

    invoke-static {v1, v2}, Lcom/mediatek/providers/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "ALTER TABLE Events ADD COLUMN isLunar INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    :cond_3
    const-string v1, "lunarRrule"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4

    .line 154
    const-string v1, "MTKDatabaseUpgradeExt"

    const-string v2, "add column: lunarRrule"

    invoke-static {v1, v2}, Lcom/mediatek/providers/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "ALTER TABLE Events ADD COLUMN lunarRrule TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private restoreMTKColumnsIfNeeded(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    .line 87
    iget-boolean v6, p0, Lcom/mediatek/providers/calendar/extension/MTKDatabaseUpgradeExt;->mIsUpgradeFromMTKVersion:Z

    if-eqz v6, :cond_0

    .line 88
    const-string v1, "createTime"

    .line 89
    .local v1, field01:Ljava/lang/String;
    const-string v2, "modifyTime"

    .line 90
    .local v2, field02:Ljava/lang/String;
    const-string v3, "isLunar"

    .line 91
    .local v3, field03:Ljava/lang/String;
    const-string v4, "lunarRrule"

    .line 99
    .local v4, field04:Ljava/lang/String;
    const-string v5, "UPDATE Events SET createTime=(SELECT createTime FROM mtk_backup_table WHERE createTime=Events.createTime),modifyTime=(SELECT modifyTime FROM mtk_backup_table WHERE modifyTime=Events.modifyTime),isLunar=(SELECT isLunar FROM mtk_backup_table WHERE isLunar=Events.isLunar),lunarRrule=(SELECT lunarRrule FROM mtk_backup_table WHERE lunarRrule=Events.lunarRrule);"

    .line 108
    .local v5, restoreMTKColumnsSql:Ljava/lang/String;
    const-string v6, "MTKDatabaseUpgradeExt"

    const-string v7, "restoreMTKColumns, sql = UPDATE Events SET createTime=(SELECT createTime FROM mtk_backup_table WHERE createTime=Events.createTime),modifyTime=(SELECT modifyTime FROM mtk_backup_table WHERE modifyTime=Events.modifyTime),isLunar=(SELECT isLunar FROM mtk_backup_table WHERE isLunar=Events.isLunar),lunarRrule=(SELECT lunarRrule FROM mtk_backup_table WHERE lunarRrule=Events.lunarRrule);"

    invoke-static {v6, v7}, Lcom/mediatek/providers/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v6, "UPDATE Events SET createTime=(SELECT createTime FROM mtk_backup_table WHERE createTime=Events.createTime),modifyTime=(SELECT modifyTime FROM mtk_backup_table WHERE modifyTime=Events.modifyTime),isLunar=(SELECT isLunar FROM mtk_backup_table WHERE isLunar=Events.isLunar),lunarRrule=(SELECT lunarRrule FROM mtk_backup_table WHERE lunarRrule=Events.lunarRrule);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const-string v0, "DROP TABLE mtk_backup_table;"

    .line 112
    .local v0, dropBackupTableSql:Ljava/lang/String;
    const-string v6, "MTKDatabaseUpgradeExt"

    const-string v7, "drop backup table, sql = DROP TABLE mtk_backup_table;"

    invoke-static {v6, v7}, Lcom/mediatek/providers/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v6, "DROP TABLE mtk_backup_table;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    .end local v0           #dropBackupTableSql:Ljava/lang/String;
    .end local v1           #field01:Ljava/lang/String;
    .end local v2           #field02:Ljava/lang/String;
    .end local v3           #field03:Ljava/lang/String;
    .end local v4           #field04:Ljava/lang/String;
    .end local v5           #restoreMTKColumnsSql:Ljava/lang/String;
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v6, "MTKDatabaseUpgradeExt"

    const-string v7, "not upgrade from MTK versions, no need to restore"

    invoke-static {v6, v7}, Lcom/mediatek/providers/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public downgradeMTKVersionsIfNeeded(ILandroid/database/sqlite/SQLiteDatabase;)I
    .locals 2
    .parameter "oldVersion"
    .parameter "db"

    .prologue
    const/4 v1, 0x1

    .line 20
    const/16 v0, 0x67

    if-ne p1, v0, :cond_1

    .line 21
    iput-boolean v1, p0, Lcom/mediatek/providers/calendar/extension/MTKDatabaseUpgradeExt;->mIsUpgradeFromMTKVersion:Z

    .line 22
    invoke-direct {p0, p2}, Lcom/mediatek/providers/calendar/extension/MTKDatabaseUpgradeExt;->downgradeFromMTKGBVersion(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result p1

    .line 28
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 24
    .restart local p1
    :cond_1
    const/16 v0, 0x135

    if-ne p1, v0, :cond_0

    .line 25
    iput-boolean v1, p0, Lcom/mediatek/providers/calendar/extension/MTKDatabaseUpgradeExt;->mIsUpgradeFromMTKVersion:Z

    .line 26
    invoke-direct {p0, p2}, Lcom/mediatek/providers/calendar/extension/MTKDatabaseUpgradeExt;->downgradeFromMTKICSVersion(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result p1

    goto :goto_0
.end method

.method public upgradeToMTKJBVersion(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 1
    .parameter "db"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/mediatek/providers/calendar/extension/MTKDatabaseUpgradeExt;->ensureMTKColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/mediatek/providers/calendar/extension/MTKDatabaseUpgradeExt;->restoreMTKColumnsIfNeeded(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    const/16 v0, 0x194

    return v0
.end method
