.class public Lcom/zte/backup/format/db/SettingsBackup;
.super Ljava/lang/Object;
.source "SettingsBackup.java"


# static fields
.field private static final NameKey:Ljava/lang/String; = "name"

.field public static final SettingProviderPath:Ljava/lang/String; = "/data/data/com.android.providers.settings/databases/settings.db"

.field private static final SettingsSystemURI:Ljava/lang/String; = "content://settings/system"

.field private static final ValueKey:Ljava/lang/String; = "value"

.field private static dataList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/backup/format/db/SettingsItem;",
            ">;"
        }
    .end annotation
.end field

.field private static dialItemName:Ljava/lang/String; = null

.field private static displayItemName:Ljava/lang/String; = null

.field private static displaySettings:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final settingTable:Ljava/lang/String; = "system"

.field private static final settingsDB:Ljava/lang/String; = "settings.db"

.field private static speedNumber:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private composer:Lcom/zte/backup/composer/Composer;

.field private context:Landroid/content/Context;

.field private settingsDirPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    const-string v0, "dialSettings"

    sput-object v0, Lcom/zte/backup/format/db/SettingsBackup;->dialItemName:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/backup/format/db/SettingsBackup;->speedNumber:Ljava/util/ArrayList;

    .line 39
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->speedNumber:Ljava/util/ArrayList;

    const-string v1, "speed_number1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->speedNumber:Ljava/util/ArrayList;

    const-string v1, "speed_number2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->speedNumber:Ljava/util/ArrayList;

    const-string v1, "speed_number3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->speedNumber:Ljava/util/ArrayList;

    const-string v1, "speed_number4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->speedNumber:Ljava/util/ArrayList;

    const-string v1, "speed_number5"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->speedNumber:Ljava/util/ArrayList;

    const-string v1, "speed_number6"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->speedNumber:Ljava/util/ArrayList;

    const-string v1, "speed_number7"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->speedNumber:Ljava/util/ArrayList;

    const-string v1, "speed_number8"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->speedNumber:Ljava/util/ArrayList;

    const-string v1, "speed_number9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v0, "Display"

    sput-object v0, Lcom/zte/backup/format/db/SettingsBackup;->displayItemName:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/backup/format/db/SettingsBackup;->displaySettings:Ljava/util/ArrayList;

    .line 53
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->displaySettings:Ljava/util/ArrayList;

    const-string v1, "screen_brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->displaySettings:Ljava/util/ArrayList;

    const-string v1, "screen_brightness_mode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->displaySettings:Ljava/util/ArrayList;

    const-string v1, "accelerometer_rotation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->displaySettings:Ljava/util/ArrayList;

    const-string v1, "window_animation_scale"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->displaySettings:Ljava/util/ArrayList;

    const-string v1, "transition_animation_scale"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->displaySettings:Ljava/util/ArrayList;

    const-string v1, "screen_off_timeout"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/backup/format/db/SettingsBackup;->dataList:Ljava/util/ArrayList;

    .line 63
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->dataList:Ljava/util/ArrayList;

    new-instance v1, Lcom/zte/backup/format/db/SettingsItem;

    sget-object v2, Lcom/zte/backup/format/db/SettingsBackup;->dialItemName:Ljava/lang/String;

    const-string v3, "content://settings/system"

    sget-object v4, Lcom/zte/backup/format/db/SettingsBackup;->speedNumber:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/zte/backup/format/db/SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->dataList:Ljava/util/ArrayList;

    new-instance v1, Lcom/zte/backup/format/db/SettingsItem;

    sget-object v2, Lcom/zte/backup/format/db/SettingsBackup;->displayItemName:Ljava/lang/String;

    const-string v3, "content://settings/system"

    sget-object v4, Lcom/zte/backup/format/db/SettingsBackup;->displaySettings:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/zte/backup/format/db/SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/zte/backup/composer/Composer;)V
    .locals 1
    .parameter "composer"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/zte/backup/format/db/SettingsBackup;->settingsDirPath:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/zte/backup/format/db/SettingsBackup;->composer:Lcom/zte/backup/composer/Composer;

    .line 72
    iput-object p1, p0, Lcom/zte/backup/format/db/SettingsBackup;->composer:Lcom/zte/backup/composer/Composer;

    .line 73
    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/db/SettingsBackup;->context:Landroid/content/Context;

    .line 74
    return-void
.end method

.method private createSettingTable(Lcom/zte/backup/format/db/OkbDBInterface;)Z
    .locals 7
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 153
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v2, mColumnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/backup/format/db/tb_item;>;"
    new-instance v0, Lcom/zte/backup/format/db/tb_item;

    const-string v4, "name"

    const-string v5, "TEXT"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Lcom/zte/backup/format/db/tb_item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    .local v0, columnItem:Lcom/zte/backup/format/db/tb_item;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v0, Lcom/zte/backup/format/db/tb_item;

    .end local v0           #columnItem:Lcom/zte/backup/format/db/tb_item;
    const-string v4, "value"

    const-string v5, "TEXT"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Lcom/zte/backup/format/db/tb_item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    .restart local v0       #columnItem:Lcom/zte/backup/format/db/tb_item;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "system"

    invoke-virtual {p1, v4, v5, v2}, Lcom/zte/backup/format/db/OkbDBInterface;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    const/4 v3, 0x1

    .end local v0           #columnItem:Lcom/zte/backup/format/db/tb_item;
    .end local v2           #mColumnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/backup/format/db/tb_item;>;"
    :goto_0
    return v3

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, ex:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CreateSettingTable failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteSettingsBackupFailed()V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zte/backup/format/db/SettingsBackup;->settingsDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/zte/backup/format/db/SettingsBackup;->settingsDirPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/backup/common/CommonFunctions;->deleteDirRecursion(Ljava/lang/String;)Z

    .line 149
    :cond_0
    return-void
.end method

.method private insertValueForRestore(Lcom/zte/backup/format/db/OkbDBInterface;Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .parameter "db"
    .parameter "itemKeys"
    .parameter "uri"

    .prologue
    .line 250
    const/4 v8, 0x0

    .line 251
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v12, values:Landroid/content/ContentValues;
    :try_start_0
    invoke-virtual {p1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "system"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 254
    if-eqz v8, :cond_1

    .line 255
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 256
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 258
    const-string v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 259
    .local v10, key:Ljava/lang/String;
    const-string v0, "value"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 261
    .local v11, value:Ljava/lang/String;
    const-string v0, "name"

    invoke-virtual {v12, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v0, "value"

    invoke-virtual {v12, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/zte/backup/format/db/SettingsBackup;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 265
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_1
    if-eqz v8, :cond_2

    .line 273
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_2
    :goto_0
    const/16 v0, 0x2001

    return v0

    .line 268
    :catch_0
    move-exception v9

    .line 269
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insertValueForRestore "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    if-eqz v8, :cond_2

    .line 273
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 271
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 272
    if-eqz v8, :cond_3

    .line 273
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_3
    throw v0
.end method

.method private processBackup(Lcom/zte/backup/format/db/OkbDBInterface;)I
    .locals 12
    .parameter "db"

    .prologue
    const/16 v8, 0x2003

    const/16 v9, 0x2002

    const/16 v10, 0x2001

    .line 169
    :try_start_0
    sget-object v7, Lcom/zte/backup/format/db/SettingsBackup;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 171
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v5, :cond_0

    move v7, v10

    .line 195
    .end local v1           #i:I
    .end local v5           #size:I
    :goto_1
    return v7

    .line 172
    .restart local v1       #i:I
    .restart local v5       #size:I
    :cond_0
    iget-object v7, p0, Lcom/zte/backup/format/db/SettingsBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v7}, Lcom/zte/backup/composer/Composer;->isCancel()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    .line 173
    goto :goto_1

    .line 176
    :cond_1
    sget-object v7, Lcom/zte/backup/format/db/SettingsBackup;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/backup/format/db/SettingsItem;

    .line 177
    .local v6, tempItem:Lcom/zte/backup/format/db/SettingsItem;
    iget-object v7, v6, Lcom/zte/backup/format/db/SettingsItem;->m_itemKeys:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 178
    .local v3, itemSize:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-lt v4, v3, :cond_2

    .line 189
    iget-object v7, p0, Lcom/zte/backup/format/db/SettingsBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v7}, Lcom/zte/backup/composer/Composer;->increaseComposed()V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_2
    iget-object v7, p0, Lcom/zte/backup/format/db/SettingsBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v7}, Lcom/zte/backup/composer/Composer;->isCancel()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    .line 180
    goto :goto_1

    .line 182
    :cond_3
    const/4 v2, 0x0

    .line 183
    .local v2, iRet:I
    iget-object v7, v6, Lcom/zte/backup/format/db/SettingsItem;->m_itemKeys:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v11, v6, Lcom/zte/backup/format/db/SettingsItem;->m_uri:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v11}, Lcom/zte/backup/format/db/SettingsBackup;->queryKeyInsertDB(Lcom/zte/backup/format/db/OkbDBInterface;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 184
    if-eq v10, v2, :cond_4

    move v7, v9

    .line 185
    goto :goto_1

    .line 178
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 192
    .end local v1           #i:I
    .end local v2           #iRet:I
    .end local v3           #itemSize:I
    .end local v4           #j:I
    .end local v5           #size:I
    .end local v6           #tempItem:Lcom/zte/backup/format/db/SettingsItem;
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    move v7, v9

    .line 193
    goto :goto_1
.end method

.method private processRestore(Lcom/zte/backup/format/db/OkbDBInterface;)I
    .locals 11
    .parameter "db"

    .prologue
    const/16 v8, 0x2003

    const/16 v9, 0x2001

    .line 221
    :try_start_0
    sget-object v7, Lcom/zte/backup/format/db/SettingsBackup;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 222
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v5, :cond_1

    move v2, v9

    .line 246
    .end local v1           #i:I
    .end local v5           #size:I
    :cond_0
    :goto_1
    return v2

    .line 223
    .restart local v1       #i:I
    .restart local v5       #size:I
    :cond_1
    iget-object v7, p0, Lcom/zte/backup/format/db/SettingsBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v7}, Lcom/zte/backup/composer/Composer;->isCancel()Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v8

    .line 224
    goto :goto_1

    .line 227
    :cond_2
    sget-object v7, Lcom/zte/backup/format/db/SettingsBackup;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/backup/format/db/SettingsItem;

    .line 228
    .local v6, tempItem:Lcom/zte/backup/format/db/SettingsItem;
    iget-object v7, v6, Lcom/zte/backup/format/db/SettingsItem;->m_itemKeys:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 229
    .local v3, itemSize:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-lt v4, v3, :cond_3

    .line 240
    iget-object v7, p0, Lcom/zte/backup/format/db/SettingsBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v7}, Lcom/zte/backup/composer/Composer;->increaseComposed()V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_3
    iget-object v7, p0, Lcom/zte/backup/format/db/SettingsBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v7}, Lcom/zte/backup/composer/Composer;->isCancel()Z

    move-result v7

    if-eqz v7, :cond_4

    move v2, v8

    .line 231
    goto :goto_1

    .line 233
    :cond_4
    const/4 v2, 0x0

    .line 234
    .local v2, iRet:I
    iget-object v7, v6, Lcom/zte/backup/format/db/SettingsItem;->m_itemKeys:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v10, v6, Lcom/zte/backup/format/db/SettingsItem;->m_uri:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v10}, Lcom/zte/backup/format/db/SettingsBackup;->insertValueForRestore(Lcom/zte/backup/format/db/OkbDBInterface;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 235
    if-ne v2, v9, :cond_0

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 243
    .end local v1           #i:I
    .end local v2           #iRet:I
    .end local v3           #itemSize:I
    .end local v4           #j:I
    .end local v5           #size:I
    .end local v6           #tempItem:Lcom/zte/backup/format/db/SettingsItem;
    :catch_0
    move-exception v0

    .line 244
    .local v0, ex:Ljava/lang/Exception;
    const/16 v2, 0x2002

    goto :goto_1
.end method

.method private queryKeyInsertDB(Lcom/zte/backup/format/db/OkbDBInterface;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "db"
    .parameter "key"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 199
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 200
    .local v9, values:Landroid/content/ContentValues;
    const/4 v6, 0x0

    .line 201
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/zte/backup/format/db/SettingsBackup;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 203
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 205
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 206
    const-string v0, "name"

    const-string v1, "name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "value"

    const-string v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "system"

    invoke-virtual {v0, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 209
    .local v7, t:J
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    .line 210
    const/16 v0, 0x2002

    .line 216
    .end local v7           #t:J
    :goto_0
    return v0

    .line 213
    :cond_0
    if-eqz v6, :cond_1

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_1
    const/16 v0, 0x2001

    goto :goto_0
.end method


# virtual methods
.method public getBackupDataSize()J
    .locals 2

    .prologue
    .line 280
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.providers.settings/databases/settings.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackupOrRestoreCount()I
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/zte/backup/format/db/SettingsBackup;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDBVersionBySDKVersion()I
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, nowVersion:I
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v2, "15"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v2, "14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    const/4 v0, 0x1

    .line 117
    :cond_1
    return v0
.end method

.method public startSettingsBackup()I
    .locals 7

    .prologue
    .line 77
    iget-object v5, p0, Lcom/zte/backup/format/db/SettingsBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v5}, Lcom/zte/backup/composer/Composer;->getPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/backup/format/db/SettingsBackup;->settingsDirPath:Ljava/lang/String;

    .line 79
    const/16 v4, 0x2002

    .line 80
    .local v4, iRet:I
    const/4 v1, 0x0

    .line 83
    .local v1, dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    :try_start_0
    new-instance v2, Lcom/zte/backup/format/db/OkbDBInterface;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zte/backup/format/db/SettingsBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v6}, Lcom/zte/backup/composer/Composer;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "settings.db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/zte/backup/format/db/OkbDBInterface;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .local v2, dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    :try_start_1
    invoke-virtual {v2}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/backup/format/db/SettingsBackup;->getDBVersionBySDKVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 87
    invoke-direct {p0, v2}, Lcom/zte/backup/format/db/SettingsBackup;->createSettingTable(Lcom/zte/backup/format/db/OkbDBInterface;)Z

    move-result v0

    .line 88
    .local v0, bRet:Z
    if-nez v0, :cond_1

    .line 89
    invoke-virtual {v2}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 90
    invoke-direct {p0}, Lcom/zte/backup/format/db/SettingsBackup;->deleteSettingsBackupFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    invoke-virtual {v2}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 102
    invoke-virtual {v2}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 91
    :cond_0
    const/16 v5, 0x2002

    move-object v1, v2

    .line 109
    .end local v0           #bRet:Z
    .end local v2           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v1       #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    :goto_0
    return v5

    .line 94
    .end local v1           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v0       #bRet:Z
    .restart local v2       #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    :cond_1
    :try_start_2
    invoke-direct {p0, v2}, Lcom/zte/backup/format/db/SettingsBackup;->processBackup(Lcom/zte/backup/format/db/OkbDBInterface;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    .line 100
    invoke-virtual {v2}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 102
    invoke-virtual {v2}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    move-object v1, v2

    .line 106
    .end local v0           #bRet:Z
    .end local v2           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v1       #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    :cond_3
    :goto_1
    const/16 v5, 0x2001

    if-eq v4, v5, :cond_4

    .line 107
    invoke-direct {p0}, Lcom/zte/backup/format/db/SettingsBackup;->deleteSettingsBackupFailed()V

    :cond_4
    move v5, v4

    .line 109
    goto :goto_0

    .line 96
    :catch_0
    move-exception v3

    .line 97
    .local v3, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startSettingsBackup:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    invoke-virtual {v1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 102
    invoke-virtual {v1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 99
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 100
    :goto_3
    invoke-virtual {v1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 102
    invoke-virtual {v1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 104
    :cond_5
    throw v5

    .line 99
    .end local v1           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v2       #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v1       #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    goto :goto_3

    .line 96
    .end local v1           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v2       #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v1       #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    goto :goto_2
.end method

.method public startSettingsRestore()I
    .locals 6

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    const/16 v3, 0x2002

    .line 125
    .local v3, iRet:I
    :try_start_0
    new-instance v1, Lcom/zte/backup/format/db/OkbDBInterface;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zte/backup/format/db/SettingsBackup;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v5}, Lcom/zte/backup/composer/Composer;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "settings.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/zte/backup/format/db/OkbDBInterface;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .local v1, dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/zte/backup/format/db/SettingsBackup;->processRestore(Lcom/zte/backup/format/db/OkbDBInterface;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 136
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 137
    invoke-virtual {v1}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    move-object v0, v1

    .line 141
    .end local v1           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v0       #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    :cond_1
    :goto_0
    return v3

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, ex:Ljava/lang/Exception;
    :goto_1
    const/16 v3, 0x2005

    .line 132
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startSettingsRestore:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 137
    invoke-virtual {v0}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 134
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 136
    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 137
    invoke-virtual {v0}, Lcom/zte/backup/format/db/OkbDBInterface;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 139
    :cond_2
    throw v4

    .line 134
    .end local v0           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v1       #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v0       #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    goto :goto_2

    .line 130
    .end local v0           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v1       #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    .restart local v0       #dbInterface:Lcom/zte/backup/format/db/OkbDBInterface;
    goto :goto_1
.end method
