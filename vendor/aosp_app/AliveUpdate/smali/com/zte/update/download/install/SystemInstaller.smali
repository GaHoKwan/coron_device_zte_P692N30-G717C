.class public Lcom/zte/update/download/install/SystemInstaller;
.super Ljava/lang/Object;
.source "SystemInstaller.java"

# interfaces
.implements Lcom/zte/update/download/install/Installer;


# static fields
.field private static final APPLICATION_VND_ANDROID_PACKAGE_ARCHIVE:Ljava/lang/String; = "application/vnd.android.package-archive"


# instance fields
.field public apkFilePath:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field info:Lcom/zte/update/data/DownloadInfo;


# direct methods
.method public constructor <init>(Lcom/zte/update/data/DownloadInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/zte/update/download/install/SystemInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    .line 26
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/zte/update/data/storage/AndroidFileStorage;->getUpdtDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadfileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .local v0, apkFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/update/download/install/SystemInstaller;->apkFilePath:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/update/download/install/SystemInstaller;->context:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public install()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 33
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/update/download/install/SystemInstaller;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v2, v3, v4}, Lcom/zte/update/data/DataManager;->resetDownloadInfo(Lcom/zte/update/data/DownloadInfo;Z)V

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/update/download/install/SystemInstaller;->apkFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 37
    .local v1, uri:Landroid/net/Uri;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 38
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    iget-object v2, p0, Lcom/zte/update/download/install/SystemInstaller;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    return v4
.end method
