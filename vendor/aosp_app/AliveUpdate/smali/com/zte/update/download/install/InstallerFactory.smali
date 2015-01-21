.class public Lcom/zte/update/download/install/InstallerFactory;
.super Ljava/lang/Object;
.source "InstallerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstaller(Lcom/zte/update/data/DownloadInfo;)Lcom/zte/update/download/install/Installer;
    .locals 8
    .parameter "info"

    .prologue
    .line 15
    const/4 v3, 0x0

    .line 16
    .local v3, installer:Lcom/zte/update/download/install/Installer;
    invoke-virtual {p0}, Lcom/zte/update/data/DownloadInfo;->getInstallType()I

    move-result v2

    .line 17
    .local v2, installType:I
    const-string v5, "InstallerFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "installer type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zte/util/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    packed-switch v2, :pswitch_data_0

    .line 21
    new-instance v3, Lcom/zte/update/download/install/SilentInstaller;

    .end local v3           #installer:Lcom/zte/update/download/install/Installer;
    invoke-direct {v3, p0}, Lcom/zte/update/download/install/SilentInstaller;-><init>(Lcom/zte/update/data/DownloadInfo;)V

    .line 35
    .restart local v3       #installer:Lcom/zte/update/download/install/Installer;
    :goto_0
    return-object v3

    .line 25
    :pswitch_0
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v1

    .line 26
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/zte/update/data/DownloadInfo;->getMainKeyValue()Ljava/lang/Object;

    move-result-object v4

    .line 27
    .local v4, mainKey:Ljava/lang/Object;
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/zte/update/data/DataManager;->loadRequestAppInfo(Ljava/lang/Object;)Lcom/zte/update/data/RequestAppInfo;

    move-result-object v0

    .line 28
    .local v0, appInfo:Lcom/zte/update/data/RequestAppInfo;
    new-instance v3, Lcom/zte/update/download/install/BspatchInstaller;

    .end local v3           #installer:Lcom/zte/update/download/install/Installer;
    invoke-virtual {v0}, Lcom/zte/update/data/RequestAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v5, p0}, Lcom/zte/update/download/install/BspatchInstaller;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/zte/update/data/DownloadInfo;)V

    .line 30
    .restart local v3       #installer:Lcom/zte/update/download/install/Installer;
    goto :goto_0

    .line 32
    .end local v0           #appInfo:Lcom/zte/update/data/RequestAppInfo;
    .end local v1           #context:Landroid/content/Context;
    .end local v4           #mainKey:Ljava/lang/Object;
    :pswitch_1
    new-instance v3, Lcom/zte/update/download/install/SystemInstaller;

    .end local v3           #installer:Lcom/zte/update/download/install/Installer;
    invoke-direct {v3, p0}, Lcom/zte/update/download/install/SystemInstaller;-><init>(Lcom/zte/update/data/DownloadInfo;)V

    .restart local v3       #installer:Lcom/zte/update/download/install/Installer;
    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
