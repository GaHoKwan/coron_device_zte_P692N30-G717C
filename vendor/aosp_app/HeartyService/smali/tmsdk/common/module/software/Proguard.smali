.class public final Ltmsdk/common/module/software/Proguard;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callAllMethods()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 9
    const-class v1, Ltmsdk/common/module/software/SoftwareManager;

    invoke-static {v1}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/software/SoftwareManager;

    .line 10
    .local v0, manager:Ltmsdk/common/module/software/SoftwareManager;
    invoke-virtual {v0, v3}, Ltmsdk/common/module/software/SoftwareManager;->isPackageInstalled(Ljava/lang/String;)Z

    .line 11
    invoke-virtual {v0, v3, v2}, Ltmsdk/common/module/software/SoftwareManager;->getAppVersionStatus(Ljava/lang/String;I)I

    .line 12
    invoke-virtual {v0, v2, v2}, Ltmsdk/common/module/software/SoftwareManager;->getInstalledApp(II)Ljava/util/ArrayList;

    .line 13
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Ltmsdk/common/module/software/AppEntity;

    .line 14
    new-instance v1, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v1}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/software/SoftwareManager;->getAppInfo(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;

    .line 15
    invoke-virtual {v0, v3, v3, v2}, Ltmsdk/common/module/software/SoftwareManager;->installApp(Ljava/lang/String;Landroid/app/Activity;I)V

    .line 16
    invoke-virtual {v0, v3}, Ltmsdk/common/module/software/SoftwareManager;->installApp(Ljava/io/File;)V

    .line 17
    invoke-virtual {v0, v3}, Ltmsdk/common/module/software/SoftwareManager;->installAppSilently(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v3, v3, v2}, Ltmsdk/common/module/software/SoftwareManager;->uninstallApp(Ljava/lang/String;Landroid/app/Activity;I)V

    .line 19
    invoke-virtual {v0, v3}, Ltmsdk/common/module/software/SoftwareManager;->uninstallAppSilently(Ljava/lang/String;)Z

    .line 20
    invoke-virtual {v0, v2, v2, v2}, Ltmsdk/common/module/software/SoftwareManager;->getAppsCanMovable(IIZ)Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0, v3}, Ltmsdk/common/module/software/SoftwareManager;->startUpApp(Ljava/lang/String;)Z

    .line 22
    invoke-virtual {v0, v3}, Ltmsdk/common/module/software/SoftwareManager;->goToInstalledAppDetails(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v3, v3, v2, v2}, Ltmsdk/common/module/software/SoftwareManager;->getApkList(Ljava/io/File;[Ljava/lang/String;ZI)Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0, v3, v2, v2}, Ltmsdk/common/module/software/SoftwareManager;->getApkListFromSDCard([Ljava/lang/String;ZI)Ljava/util/ArrayList;

    .line 25
    new-instance v1, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v1}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/software/SoftwareManager;->getApkInfo(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;

    .line 26
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/software/SoftwareManager;->getApkInfo(Ljava/lang/String;I)Ltmsdk/common/module/software/AppEntity;

    .line 27
    return-void
.end method
