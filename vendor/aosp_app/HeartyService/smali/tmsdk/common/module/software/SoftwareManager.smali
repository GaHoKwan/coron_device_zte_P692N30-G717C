.class public final Ltmsdk/common/module/software/SoftwareManager;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/module/software/SoftwareManager$1;,
        Ltmsdk/common/module/software/SoftwareManager$a;
    }
.end annotation


# instance fields
.field private Bg:Ltmsdk/common/module/software/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    .line 534
    return-void
.end method


# virtual methods
.method public canMoveToSdcard(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "pkgName"
    .parameter "useRoot"

    .prologue
    .line 316
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/software/c;->canMoveToSdcard(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public existedAppsCanMovable(IIZ)Z
    .locals 1
    .parameter "flag"
    .parameter "getFlag"
    .parameter "useRoot"

    .prologue
    .line 287
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdk/common/module/software/c;->existedAppsCanMovable(IIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public getApkInfo(Ljava/lang/String;I)Ltmsdk/common/module/software/AppEntity;
    .locals 1
    .parameter "apkPath"
    .parameter "flag"

    .prologue
    .line 453
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    new-instance v0, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v0}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 455
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/software/c;->getApkInfo(Ljava/lang/String;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public getApkInfo(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;
    .locals 1
    .parameter "appInfo"
    .parameter "flag"

    .prologue
    .line 470
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    new-instance v0, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v0}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 472
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/software/c;->getApkInfo(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public getApkList(Ljava/io/File;[Ljava/lang/String;ZI)Ljava/util/ArrayList;
    .locals 1
    .parameter "path"
    .parameter "ignorePaths"
    .parameter "isGetBrokenApk"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 398
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Ltmsdk/common/module/software/c;->getApkList(Ljava/io/File;[Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getApkList(Ljava/io/File;[Ljava/lang/String;ZIZ)Ljava/util/ArrayList;
    .locals 6
    .parameter "path"
    .parameter "ignorePaths"
    .parameter "isGetBrokenApk"
    .parameter "flag"
    .parameter "strictMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "ZIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ltmsdk/common/module/software/c;->getApkList(Ljava/io/File;[Ljava/lang/String;ZIZ)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getApkListFromSDCard([Ljava/lang/String;ZI)Ljava/util/ArrayList;
    .locals 1
    .parameter "ignorePaths"
    .parameter "isGetBrokenApk"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdk/common/module/software/c;->getApkListFromSDCard([Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppInfo(Ljava/lang/String;I)Ltmsdk/common/module/software/AppEntity;
    .locals 1
    .parameter "pkgName"
    .parameter "flag"

    .prologue
    .line 101
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v0}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/software/c;->getAppInfo(Ljava/lang/String;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppInfo(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;
    .locals 1
    .parameter "app"
    .parameter "flag"

    .prologue
    .line 118
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v0}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 120
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/software/c;->getAppInfo(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppVersionStatus(Ljava/lang/String;I)I
    .locals 1
    .parameter "pkgName"
    .parameter "versionCode"

    .prologue
    .line 68
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, -0x2

    .line 70
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/software/c;->getAppVersionStatus(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getAppsCanMovable(IIZ)Ljava/util/ArrayList;
    .locals 1
    .parameter "flag"
    .parameter "getFlag"
    .parameter "useRoot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdk/common/module/software/c;->getAppsCanMovable(IIZ)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getInstalledApp(II)Ljava/util/ArrayList;
    .locals 1
    .parameter "flag"
    .parameter "getType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/software/c;->getInstalledApp(II)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageSizeInfo(Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .locals 9
    .parameter "pkg"

    .prologue
    const/4 v5, 0x0

    .line 492
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 494
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Ltmsdk/common/module/software/SoftwareManager$a;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ltmsdk/common/module/software/SoftwareManager$a;-><init>(Ltmsdk/common/module/software/SoftwareManager$1;)V

    .line 495
    .local v2, ob:Ltmsdk/common/module/software/SoftwareManager$a;
    iput-boolean v5, v2, Ltmsdk/common/module/software/SoftwareManager$a;->Bh:Z

    .line 498
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v4

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 500
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getPackageSizeInfo"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Landroid/content/pm/IPackageStatsObserver;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 502
    .local v1, getPackageSizeInfo:Ljava/lang/reflect/Method;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const v7, 0x186a0

    div-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 516
    .end local v1           #getPackageSizeInfo:Ljava/lang/reflect/Method;
    :goto_0
    monitor-enter v2

    .line 517
    :goto_1
    :try_start_1
    iget-boolean v4, v2, Ltmsdk/common/module/software/SoftwareManager$a;->Bh:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    .line 519
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 524
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 503
    :catch_1
    move-exception v0

    .line 504
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 508
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getPackageSizeInfo"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/content/pm/IPackageStatsObserver;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 509
    .restart local v1       #getPackageSizeInfo:Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 510
    .end local v1           #getPackageSizeInfo:Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    .line 511
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 524
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 526
    invoke-virtual {v2}, Ltmsdk/common/module/software/SoftwareManager$a;->fR()Landroid/content/pm/PackageStats;

    move-result-object v4

    return-object v4
.end method

.method public goToInstalledAppDetails(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 235
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/software/c;->goToInstalledAppDetails(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public installApp(Ljava/io/File;)V
    .locals 1
    .parameter "apkfile"

    .prologue
    .line 150
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    const v0, 0x1d4d4

    invoke-static {v0}, Ltmsdkobf/im;->aT(I)V

    .line 155
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/software/c;->installApp(Ljava/io/File;)V

    goto :goto_0
.end method

.method public installApp(Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 1
    .parameter "apkPath"
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 134
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    const v0, 0x1d4d4

    invoke-static {v0}, Ltmsdkobf/im;->aT(I)V

    .line 140
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdk/common/module/software/c;->installApp(Ljava/lang/String;Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public installAppSilently(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apkPath"

    .prologue
    .line 165
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, ""

    .line 170
    :goto_0
    return-object v0

    .line 168
    :cond_0
    const v0, 0x1d4d4

    invoke-static {v0}, Ltmsdkobf/im;->aT(I)V

    .line 170
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/software/c;->installAppSilently(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isInstalledSdcard(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 301
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x0

    .line 303
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/software/c;->isInstalledSdcard(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isPackageInstalled(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 52
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/software/c;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public movePackageToExternal(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x0

    .line 342
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/software/c;->movePackageToExternal(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public movePackageToInteranl(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 330
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/software/c;->movePackageToInteranl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public moveToExternal(Ljava/lang/String;)I
    .locals 2
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    .line 376
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/software/c;->moveToExternal(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public moveToInteranl(Ljava/lang/String;)I
    .locals 2
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    .line 358
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/software/c;->moveToInteranl(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    new-instance v0, Ltmsdk/common/module/software/c;

    invoke-direct {v0}, Ltmsdk/common/module/software/c;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    .line 37
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/software/c;->onCreate(Landroid/content/Context;)V

    .line 38
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {p0, v0}, Ltmsdk/common/module/software/SoftwareManager;->a(Ltmsdk/common/BaseManager;)V

    .line 41
    const v0, 0x1d4d3

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltmsdkobf/im;->a(II)V

    .line 42
    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkg"

    .prologue
    .line 481
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/software/c;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startUpApp(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 249
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/software/c;->startUpApp(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public uninstallApp(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 202
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    const v0, 0x1d4d5

    invoke-static {v0}, Ltmsdkobf/im;->aT(I)V

    .line 208
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/software/c;->uninstallApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public uninstallApp(Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 1
    .parameter "pkgName"
    .parameter "activity"
    .parameter "requestCode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    const v0, 0x1d4d5

    invoke-static {v0}, Ltmsdkobf/im;->aT(I)V

    .line 192
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdk/common/module/software/c;->uninstallApp(Ljava/lang/String;Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public uninstallAppSilently(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 218
    invoke-static {}, Ltmsdk/common/module/software/SoftwareManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    .line 222
    :cond_0
    const v0, 0x1d4d5

    invoke-static {v0}, Ltmsdkobf/im;->aT(I)V

    .line 224
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager;->Bg:Ltmsdk/common/module/software/c;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/software/c;->uninstallAppSilently(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
