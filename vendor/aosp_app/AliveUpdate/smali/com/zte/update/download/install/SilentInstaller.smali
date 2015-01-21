.class public Lcom/zte/update/download/install/SilentInstaller;
.super Ljava/lang/Object;
.source "SilentInstaller.java"

# interfaces
.implements Lcom/zte/update/download/install/Installer;


# instance fields
.field private info:Lcom/zte/update/data/DownloadInfo;


# direct methods
.method public constructor <init>(Lcom/zte/update/data/DownloadInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/zte/update/download/install/SilentInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    .line 16
    return-void
.end method


# virtual methods
.method public install()Z
    .locals 10

    .prologue
    const/16 v9, 0x10

    const-wide/16 v7, -0x1

    .line 20
    const-string v3, "installInBackground installing"

    invoke-static {p0, v3}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v3, p0, Lcom/zte/update/download/install/SilentInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v7, v8}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    .line 24
    new-instance v2, Lcom/zte/aliveupdate/common/utils/PackageUtil;

    invoke-direct {v2}, Lcom/zte/aliveupdate/common/utils/PackageUtil;-><init>()V

    .line 28
    .local v2, packgUtil:Lcom/zte/aliveupdate/common/utils/PackageUtil;
    :try_start_0
    iget-object v3, p0, Lcom/zte/update/download/install/SilentInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v3}, Lcom/zte/update/data/DownloadInfo;->getDownloadfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/aliveupdate/common/utils/PackageUtil;->installApk(Ljava/lang/String;)Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    move-result-object v1

    .line 30
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

    .line 31
    sget-object v3, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_SUCCEEDED:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    if-ne v1, v3, :cond_0

    .line 33
    const-string v3, "updateInstallStatus  STATUS_INSTALL_FINISH"

    invoke-static {p0, v3}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/update/download/install/SilentInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v3, v4}, Lcom/zte/update/data/DataManager;->clearDownloadData(Lcom/zte/update/data/DownloadInfo;)V

    .line 35
    iget-object v3, p0, Lcom/zte/update/download/install/SilentInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    const/4 v4, 0x5

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    .line 52
    .end local v1           #installStatus:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 38
    .restart local v1       #installStatus:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    :cond_0
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/update/download/install/SilentInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v3, v4}, Lcom/zte/update/data/DataManager;->resetDownloadInfo(Lcom/zte/update/data/DownloadInfo;)V

    .line 39
    iget-object v3, p0, Lcom/zte/update/download/install/SilentInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    const/16 v4, 0x10

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    .end local v1           #installStatus:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 47
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/update/download/install/SilentInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v3, v4}, Lcom/zte/update/data/DataManager;->resetDownloadInfo(Lcom/zte/update/data/DownloadInfo;)V

    .line 48
    iget-object v3, p0, Lcom/zte/update/download/install/SilentInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v3, v9, v7, v8}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    goto :goto_0
.end method
