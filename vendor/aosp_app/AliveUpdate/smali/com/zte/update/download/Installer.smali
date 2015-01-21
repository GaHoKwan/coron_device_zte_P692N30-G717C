.class public Lcom/zte/update/download/Installer;
.super Ljava/lang/Object;
.source "Installer.java"


# static fields
.field private static final APPLICATION_VND_ANDROID_PACKAGE_ARCHIVE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final TAG:Ljava/lang/String; = "Installer"

.field private static instance:Lcom/zte/update/download/Installer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/update/download/Installer;->instance:Lcom/zte/update/download/Installer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/zte/update/download/Installer;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/zte/update/download/Installer;->instance:Lcom/zte/update/download/Installer;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/zte/update/download/Installer;

    invoke-direct {v0}, Lcom/zte/update/download/Installer;-><init>()V

    sput-object v0, Lcom/zte/update/download/Installer;->instance:Lcom/zte/update/download/Installer;

    .line 44
    :cond_0
    sget-object v0, Lcom/zte/update/download/Installer;->instance:Lcom/zte/update/download/Installer;

    return-object v0
.end method

.method public static installInBackground(Ljava/lang/String;Lcom/zte/update/data/DownloadInfo;)Z
    .locals 10
    .parameter "fileName"
    .parameter "info"

    .prologue
    const/16 v9, 0x10

    const/4 v3, 0x0

    const-wide/16 v7, -0x1

    .line 51
    const-string v4, "Installer"

    const-string v5, "installInBackground installing"

    invoke-static {v4, v5}, Lcom/zte/util/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/16 v4, 0xe

    invoke-virtual {p1, v4, v7, v8}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    .line 55
    new-instance v2, Lcom/zte/aliveupdate/common/utils/PackageUtil;

    invoke-direct {v2}, Lcom/zte/aliveupdate/common/utils/PackageUtil;-><init>()V

    .line 57
    .local v2, packgUtil:Lcom/zte/aliveupdate/common/utils/PackageUtil;
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/zte/aliveupdate/common/utils/PackageUtil;->installApk(Ljava/lang/String;)Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    move-result-object v1

    .line 59
    .local v1, installStatus:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    const-string v4, "Installer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installStatus == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zte/util/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v4, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_SUCCEEDED:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    if-ne v1, v4, :cond_0

    .line 62
    const-string v4, "Installer"

    const-string v5, "updateInstallStatus  STATUS_INSTALL_FINISH"

    invoke-static {v4, v5}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/zte/update/data/DataManager;->clearDownloadData(Lcom/zte/update/data/DownloadInfo;)V

    .line 64
    const/4 v4, 0x5

    const-wide/16 v5, -0x1

    invoke-virtual {p1, v4, v5, v6}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    .line 65
    const/4 v3, 0x1

    .line 78
    .end local v1           #installStatus:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    :goto_0
    return v3

    .line 67
    .restart local v1       #installStatus:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    :cond_0
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/zte/update/data/DataManager;->resetDownloadInfo(Lcom/zte/update/data/DownloadInfo;)V

    .line 68
    const/16 v4, 0x10

    const-wide/16 v5, -0x1

    invoke-virtual {p1, v4, v5, v6}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v1           #installStatus:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 76
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/zte/update/data/DataManager;->resetDownloadInfo(Lcom/zte/update/data/DownloadInfo;)V

    .line 77
    invoke-virtual {p1, v9, v7, v8}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    goto :goto_0
.end method

.method public static installInForeground(Ljava/lang/String;)Z
    .locals 5
    .parameter "fileName"

    .prologue
    .line 85
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/zte/update/data/storage/AndroidFileStorage;->getUpdtDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v0, apkFile:Ljava/io/File;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, intent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 88
    .local v2, uri:Landroid/net/Uri;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->startActivity(Landroid/content/Intent;)V

    .line 92
    const/4 v3, 0x1

    return v3
.end method
