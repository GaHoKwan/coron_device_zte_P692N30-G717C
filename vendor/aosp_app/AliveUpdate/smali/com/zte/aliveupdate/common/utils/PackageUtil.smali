.class public Lcom/zte/aliveupdate/common/utils/PackageUtil;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# static fields
.field private static final MINUSONE:I = -0x1

.field private static final PERMISSIONS:I = 0x1b6

.field private static final SUCCESS:Ljava/lang/String; = "success"


# instance fields
.field private context:Landroid/content/Context;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aliveupdate/common/utils/PackageUtil;->context:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/zte/aliveupdate/common/utils/PackageUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aliveupdate/common/utils/PackageUtil;->pm:Landroid/content/pm/PackageManager;

    .line 31
    return-void
.end method

.method private getProcessData(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "ins"

    .prologue
    .line 108
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v3, -0x1

    .line 110
    .local v3, read:I
    const-string v4, ""

    .line 112
    .local v4, result:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 113
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    invoke-static {p1}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->closeCloseableObject(Ljava/io/Closeable;)V

    .line 121
    invoke-static {v0}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->closeCloseableObject(Ljava/io/Closeable;)V

    .line 123
    .end local v2           #e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 124
    .local v1, data:[B
    new-instance v4, Ljava/lang/String;

    .end local v4           #result:Ljava/lang/String;
    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    .line 126
    .restart local v4       #result:Ljava/lang/String;
    return-object v4

    .line 120
    .end local v1           #data:[B
    :cond_0
    invoke-static {p1}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->closeCloseableObject(Ljava/io/Closeable;)V

    .line 121
    invoke-static {v0}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->closeCloseableObject(Ljava/io/Closeable;)V

    goto :goto_1

    .line 120
    :catchall_0
    move-exception v5

    invoke-static {p1}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->closeCloseableObject(Ljava/io/Closeable;)V

    .line 121
    invoke-static {v0}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->closeCloseableObject(Ljava/io/Closeable;)V

    throw v5
.end method

.method private parseInstallProcess(Ljava/lang/Process;)Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    .locals 5
    .parameter "process"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/zte/aliveupdate/common/utils/PackageUtil;->getProcessData(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, result:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/zte/aliveupdate/common/utils/PackageUtil;->getProcessData(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, errorMsg:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install result ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install errormsg ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 97
    :cond_0
    const-string v3, "success"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    sget-object v3, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_SUCCEEDED:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 102
    :goto_0
    return-object v3

    .line 100
    :cond_1
    const-string v3, "["

    const-string v4, "]"

    invoke-static {v1, v3, v4}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, error:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-static {v0}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->find(Ljava/lang/String;)Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public createApkFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter "apkFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/zte/aliveupdate/common/utils/PackageUtil;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 42
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, apkAbsolutePath:Ljava/lang/String;
    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "chmod"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "7777"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    aput-object v0, v1, v4

    .line 46
    .local v1, args:[Ljava/lang/String;
    new-instance v3, Ljava/lang/ProcessBuilder;

    invoke-direct {v3, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 47
    .local v3, processBuilder:Ljava/lang/ProcessBuilder;
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 49
    return-object v2
.end method

.method public installApk(Ljava/lang/String;)Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    .locals 3
    .parameter "apkFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const-string v1, "installApk"

    invoke-static {p0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/update/data/storage/AndroidFileStorage;->getUpdtDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, apkAbsolutePath:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zte/aliveupdate/common/utils/PackageUtil;->installApkFromPath(Ljava/lang/String;)Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    move-result-object v1

    return-object v1
.end method

.method public installApkFromPath(Ljava/lang/String;)Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    .locals 6
    .parameter "apkAbsolutePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 73
    const/16 v4, 0x1b6

    invoke-static {p1, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apkAbsolutePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "pm"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "install"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "-r"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    aput-object p1, v0, v4

    .line 77
    .local v0, args:[Ljava/lang/String;
    new-instance v3, Ljava/lang/ProcessBuilder;

    invoke-direct {v3, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 79
    .local v3, processBuilder:Ljava/lang/ProcessBuilder;
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 80
    .local v2, process:Ljava/lang/Process;
    invoke-direct {p0, v2}, Lcom/zte/aliveupdate/common/utils/PackageUtil;->parseInstallProcess(Ljava/lang/Process;)Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    move-result-object v1

    .line 81
    .local v1, installStatust:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installStatust = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    return-object v1
.end method

.method public isInstalledApkLaunchable(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public launchInstalledApk(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 54
    iget-object v1, p0, Lcom/zte/aliveupdate/common/utils/PackageUtil;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, mLaunchIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method
