.class public Lcom/zte/backup/composer/app/AppRestoreComposer;
.super Lcom/zte/backup/composer/Composer;
.source "AppRestoreComposer.java"


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
    .line 29
    invoke-direct {p0, p1}, Lcom/zte/backup/composer/Composer;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/backup/composer/app/AppRestoreComposer;->appList:Ljava/util/List;

    .line 30
    invoke-virtual {p0, p2}, Lcom/zte/backup/composer/app/AppRestoreComposer;->setInPath(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/zte/backup/composer/DataType;->APPS:Lcom/zte/backup/composer/DataType;

    iput-object v0, p0, Lcom/zte/backup/composer/app/AppRestoreComposer;->type:Lcom/zte/backup/composer/DataType;

    .line 32
    return-void
.end method

.method private loadAppList()V
    .locals 8

    .prologue
    .line 51
    iget-object v4, p0, Lcom/zte/backup/composer/app/AppRestoreComposer;->appList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 53
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/zte/backup/composer/app/AppRestoreComposer;->path:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 67
    :cond_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 59
    .local v1, apks:[Ljava/io/File;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 60
    .local v0, apk:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 61
    new-instance v3, Lcom/zte/backup/application/BackupAppInfo;

    invoke-direct {v3}, Lcom/zte/backup/application/BackupAppInfo;-><init>()V

    .line 62
    .local v3, info:Lcom/zte/backup/application/BackupAppInfo;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zte/backup/application/BackupAppInfo;->setApkName(Ljava/lang/String;)V

    .line 63
    iget-object v6, p0, Lcom/zte/backup/composer/app/AppRestoreComposer;->appList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v3           #info:Lcom/zte/backup/application/BackupAppInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compose()I
    .locals 6

    .prologue
    .line 75
    const/16 v2, 0x2001

    .line 76
    .local v2, nResult:I
    invoke-virtual {p0}, Lcom/zte/backup/composer/app/AppRestoreComposer;->onStart()V

    .line 77
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/zte/backup/composer/app/AppRestoreComposer;->appList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 95
    .end local v2           #nResult:I
    :goto_1
    return v2

    .line 78
    .restart local v2       #nResult:I
    :cond_0
    iget-boolean v4, p0, Lcom/zte/backup/composer/app/AppRestoreComposer;->isCancel:Z

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 79
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/zte/backup/composer/app/AppRestoreComposer;->isCancel:Z

    .line 80
    const/16 v2, 0x2003

    goto :goto_1

    .line 83
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/zte/backup/application/AppsAction;->getInstance()Lcom/zte/backup/application/AppsAction;

    move-result-object v5

    iget-object v4, p0, Lcom/zte/backup/composer/app/AppRestoreComposer;->appList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/backup/application/BackupAppInfo;

    invoke-virtual {v5, v4, p0}, Lcom/zte/backup/application/AppsAction;->applicationsRestore(Lcom/zte/backup/application/BackupAppInfo;Lcom/zte/backup/composer/Composer;)V

    .line 84
    invoke-virtual {p0}, Lcom/zte/backup/composer/app/AppRestoreComposer;->getAttached()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 85
    .local v3, restorResult:I
    const/16 v4, 0x2001

    if-eq v3, v4, :cond_3

    .line 86
    move v2, v3

    .line 77
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v3           #restorResult:I
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "restore pro exception"

    invoke-static {v4}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    .line 91
    const/16 v2, 0x2002

    goto :goto_1
.end method

.method public getFolderDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "App"

    return-object v0
.end method

.method public getTotalNum()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/backup/composer/app/AppRestoreComposer;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/zte/backup/composer/app/AppRestoreComposer;->loadAppList()V

    .line 46
    iget-object v0, p0, Lcom/zte/backup/composer/app/AppRestoreComposer;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/zte/backup/composer/app/AppRestoreComposer;->totalNum:I

    .line 47
    const/4 v0, 0x1

    return v0
.end method
