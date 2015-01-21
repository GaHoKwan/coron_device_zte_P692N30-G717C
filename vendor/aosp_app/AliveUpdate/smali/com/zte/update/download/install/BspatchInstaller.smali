.class public Lcom/zte/update/download/install/BspatchInstaller;
.super Ljava/lang/Object;
.source "BspatchInstaller.java"

# interfaces
.implements Lcom/zte/update/download/install/Installer;


# static fields
.field protected static bsPatchUtil:Lcom/zte/bspatch/BspatchUtil;


# instance fields
.field private context:Landroid/content/Context;

.field private diffPath:Ljava/lang/String;

.field private info:Lcom/zte/update/data/DownloadInfo;

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/zte/bspatch/BspatchUtil;

    invoke-direct {v0}, Lcom/zte/bspatch/BspatchUtil;-><init>()V

    sput-object v0, Lcom/zte/update/download/install/BspatchInstaller;->bsPatchUtil:Lcom/zte/bspatch/BspatchUtil;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/zte/update/data/DownloadInfo;)V
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "info"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/zte/update/download/install/BspatchInstaller;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/zte/update/download/install/BspatchInstaller;->packageName:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/update/data/storage/AndroidFileStorage;->getUpdtDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/zte/update/data/DownloadInfo;->getDownloadfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/download/install/BspatchInstaller;->diffPath:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/zte/update/download/install/BspatchInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    .line 32
    return-void
.end method


# virtual methods
.method public install()Z
    .locals 9

    .prologue
    .line 36
    const-string v5, "BspatchInstaller install"

    invoke-static {p0, v5}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v5, p0, Lcom/zte/update/download/install/BspatchInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    const/16 v6, 0xe

    const-wide/16 v7, -0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    .line 38
    iget-object v5, p0, Lcom/zte/update/download/install/BspatchInstaller;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 40
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v5, p0, Lcom/zte/update/download/install/BspatchInstaller;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 42
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 43
    .local v3, oldFilePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/zte/update/data/storage/AndroidFileStorage;->getUpdtDirPath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/zte/update/download/install/BspatchInstaller;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_new.apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v2, newFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 45
    sget-object v5, Lcom/zte/update/download/install/BspatchInstaller;->bsPatchUtil:Lcom/zte/bspatch/BspatchUtil;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/update/download/install/BspatchInstaller;->diffPath:Ljava/lang/String;

    invoke-virtual {v5, v3, v6, v7}, Lcom/zte/bspatch/BspatchUtil;->bspatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/zte/update/download/install/BspatchInstaller;->installInBackground(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #newFile:Ljava/io/File;
    .end local v3           #oldFilePath:Ljava/lang/String;
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 49
    :catch_0
    move-exception v1

    .line 51
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 54
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public installInBackground(Ljava/lang/String;)V
    .locals 10
    .parameter "path"

    .prologue
    const/16 v9, 0x10

    const-wide/16 v7, -0x1

    .line 62
    new-instance v2, Lcom/zte/aliveupdate/common/utils/PackageUtil;

    invoke-direct {v2}, Lcom/zte/aliveupdate/common/utils/PackageUtil;-><init>()V

    .line 64
    .local v2, packgUtil:Lcom/zte/aliveupdate/common/utils/PackageUtil;
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/zte/aliveupdate/common/utils/PackageUtil;->installApkFromPath(Ljava/lang/String;)Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    move-result-object v1

    .line 66
    .local v1, installStatus:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installStatus == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v3, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_SUCCEEDED:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    if-ne v1, v3, :cond_0

    .line 69
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/update/download/install/BspatchInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v3, v4}, Lcom/zte/update/data/DataManager;->clearDownloadData(Lcom/zte/update/data/DownloadInfo;)V

    .line 70
    iget-object v3, p0, Lcom/zte/update/download/install/BspatchInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    const/4 v4, 0x5

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    .line 87
    .end local v1           #installStatus:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    :goto_0
    return-void

    .line 73
    .restart local v1       #installStatus:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    :cond_0
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/update/download/install/BspatchInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v3, v4}, Lcom/zte/update/data/DataManager;->resetDownloadInfo(Lcom/zte/update/data/DownloadInfo;)V

    .line 74
    iget-object v3, p0, Lcom/zte/update/download/install/BspatchInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    const/16 v4, 0x10

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v1           #installStatus:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/update/download/install/BspatchInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v3, v4}, Lcom/zte/update/data/DataManager;->resetDownloadInfo(Lcom/zte/update/data/DownloadInfo;)V

    .line 83
    iget-object v3, p0, Lcom/zte/update/download/install/BspatchInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v3, v9, v7, v8}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    goto :goto_0
.end method
