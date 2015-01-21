.class public Lcom/zte/backup/composer/app/AppBackupComposer;
.super Lcom/zte/backup/composer/Composer;
.source "AppBackupComposer.java"


# instance fields
.field private appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/backup/application/BackupAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "backupPath"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/zte/backup/composer/Composer;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/backup/composer/app/AppBackupComposer;->appList:Ljava/util/List;

    .line 32
    invoke-virtual {p0, p2}, Lcom/zte/backup/composer/app/AppBackupComposer;->setOutPath(Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/zte/backup/composer/DataType;->APPS:Lcom/zte/backup/composer/DataType;

    iput-object v0, p0, Lcom/zte/backup/composer/app/AppBackupComposer;->type:Lcom/zte/backup/composer/DataType;

    .line 34
    return-void
.end method


# virtual methods
.method public compose()I
    .locals 6

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/zte/backup/composer/app/AppBackupComposer;->onStart()V

    .line 97
    const/16 v3, 0x2001

    .line 99
    .local v3, nResult:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/zte/backup/composer/app/AppBackupComposer;->appList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 115
    :goto_1
    return v3

    .line 100
    :cond_0
    iget-boolean v4, p0, Lcom/zte/backup/composer/app/AppBackupComposer;->isCancel:Z

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 101
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/zte/backup/composer/app/AppBackupComposer;->isCancel:Z

    .line 102
    const/16 v3, 0x2003

    .line 103
    goto :goto_1

    .line 106
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/zte/backup/composer/app/AppBackupComposer;->appList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/backup/application/BackupAppInfo;

    .line 107
    .local v0, appInfo:Lcom/zte/backup/application/BackupAppInfo;
    invoke-static {}, Lcom/zte/backup/application/AppsAction;->getInstance()Lcom/zte/backup/application/AppsAction;

    move-result-object v4

    invoke-virtual {v4, v0, p0}, Lcom/zte/backup/application/AppsAction;->applicationsBackup(Lcom/zte/backup/application/BackupAppInfo;Lcom/zte/backup/composer/Composer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v0           #appInfo:Lcom/zte/backup/application/BackupAppInfo;
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "backup pro exception"

    invoke-static {v4}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    .line 110
    const/16 v3, 0x2002

    .line 111
    goto :goto_1
.end method

.method public getFolderDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "App"

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/zte/backup/composer/app/AppBackupComposer;->loadAppsList()V

    .line 85
    iget-object v0, p0, Lcom/zte/backup/composer/app/AppBackupComposer;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/zte/backup/composer/app/AppBackupComposer;->totalNum:I

    .line 86
    const-string v0, "App"

    iput-object v0, p0, Lcom/zte/backup/composer/app/AppBackupComposer;->name:Ljava/lang/String;

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public loadAppsList()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 37
    iget-object v8, p0, Lcom/zte/backup/composer/app/AppBackupComposer;->appList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 38
    const/4 v6, 0x0

    .line 39
    .local v6, num:I
    new-instance v2, Lcom/zte/backup/application/AppsGetAppsInfo;

    iget-object v8, p0, Lcom/zte/backup/composer/app/AppBackupComposer;->context:Landroid/content/Context;

    invoke-direct {v2, v8, v10}, Lcom/zte/backup/application/AppsGetAppsInfo;-><init>(Landroid/content/Context;Z)V

    .line 40
    .local v2, gai:Lcom/zte/backup/application/AppsGetAppsInfo;
    invoke-virtual {v2}, Lcom/zte/backup/application/AppsGetAppsInfo;->getAppsDetailInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 41
    .local v0, apkInfoTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/backup/application/BackupAppInfo;>;"
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 44
    :cond_0
    const/4 v5, 0x0

    .line 45
    .local v5, nBackappDesc:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    if-lt v3, v6, :cond_2

    .line 75
    :cond_1
    int-to-long v8, v5

    iput-wide v8, p0, Lcom/zte/backup/composer/app/AppBackupComposer;->size:J

    .line 76
    return-void

    .line 46
    :cond_2
    iget-boolean v8, p0, Lcom/zte/backup/composer/app/AppBackupComposer;->isCancel:Z

    if-nez v8, :cond_1

    .line 49
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "icon"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/backup/application/BackupAppInfo;

    invoke-virtual {v8}, Lcom/zte/backup/application/BackupAppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v9, "appName"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/backup/application/BackupAppInfo;

    invoke-virtual {v8}, Lcom/zte/backup/application/BackupAppInfo;->getAppname()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/backup/application/BackupAppInfo;

    invoke-virtual {v8}, Lcom/zte/backup/application/BackupAppInfo;->getAppSize()F

    move-result v1

    .line 54
    .local v1, apkSize:F
    const/high16 v8, 0x42c8

    mul-float/2addr v8, v1

    float-to-int v8, v8

    rem-int/lit8 v7, v8, 0xa

    .line 55
    .local v7, temp:I
    add-int/2addr v5, v7

    .line 56
    const-string v8, "size"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v8, "itemCheck"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v9, p0, Lcom/zte/backup/composer/app/AppBackupComposer;->appList:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/backup/application/BackupAppInfo;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
