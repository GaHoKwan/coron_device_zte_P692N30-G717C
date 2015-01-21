.class public Lcn/com/zte/nlt/update/Updater;
.super Ljava/lang/Object;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/zte/nlt/update/Updater$UpdateInfo;
    }
.end annotation


# static fields
.field public static EXCEPTION:I

.field public static HAS_UPDATE:I

.field public static NO_UPDATE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, -0x1

    sput v0, Lcn/com/zte/nlt/update/Updater;->EXCEPTION:I

    .line 34
    const/4 v0, 0x1

    sput v0, Lcn/com/zte/nlt/update/Updater;->HAS_UPDATE:I

    .line 35
    const/4 v0, 0x0

    sput v0, Lcn/com/zte/nlt/update/Updater;->NO_UPDATE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getDBVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;

    invoke-static {}, Lcn/com/zte/yp/YpApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->getDbVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMEI()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    const-string v0, "000000000000000"

    .line 120
    .local v0, imei:Ljava/lang/String;
    invoke-static {}, Lcn/com/zte/yp/YpApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 122
    .local v1, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 125
    :cond_0
    const-string v0, "000000000000000"

    .line 128
    :cond_1
    return-object v0
.end method

.method public static getLocaleLanguage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 114
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 115
    .local v0, l:Ljava/util/Locale;
    const-string v1, "%s-%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUpdateInfo()Lcn/com/zte/nlt/update/Updater$UpdateInfo;
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 56
    new-instance v8, Lcn/com/zte/nlt/update/Updater$UpdateInfo;

    invoke-direct {v8}, Lcn/com/zte/nlt/update/Updater$UpdateInfo;-><init>()V

    .line 58
    .local v8, result:Lcn/com/zte/nlt/update/Updater$UpdateInfo;
    :try_start_0
    new-instance v0, Lcn/com/zte/nlt/down/ClientInfo;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getDBVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcn/com/zte/nlt/down/ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v0, client:Lcn/com/zte/nlt/down/ClientInfo;
    new-instance v1, Lcn/com/zte/nlt/down/DownLoad;

    invoke-direct {v1}, Lcn/com/zte/nlt/down/DownLoad;-><init>()V

    invoke-virtual {v1, v0}, Lcn/com/zte/nlt/down/DownLoad;->getUpgradePackgeInfo(Lcn/com/zte/nlt/down/ClientInfo;)Lcn/com/zte/nlt/down/UpdatePackageInfo;

    move-result-object v7

    .line 61
    .local v7, pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;
    if-nez v7, :cond_0

    .line 62
    sget v1, Lcn/com/zte/nlt/update/Updater;->NO_UPDATE:I

    iput v1, v8, Lcn/com/zte/nlt/update/Updater$UpdateInfo;->status:I

    .line 63
    const-wide/16 v1, 0x0

    iput-wide v1, v8, Lcn/com/zte/nlt/update/Updater$UpdateInfo;->size:J

    .line 74
    .end local v0           #client:Lcn/com/zte/nlt/down/ClientInfo;
    .end local v7           #pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;
    :goto_0
    return-object v8

    .line 65
    .restart local v0       #client:Lcn/com/zte/nlt/down/ClientInfo;
    .restart local v7       #pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;
    :cond_0
    sget v1, Lcn/com/zte/nlt/update/Updater;->HAS_UPDATE:I

    iput v1, v8, Lcn/com/zte/nlt/update/Updater$UpdateInfo;->status:I

    .line 66
    invoke-virtual {v7}, Lcn/com/zte/nlt/down/UpdatePackageInfo;->getSize()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v8, Lcn/com/zte/nlt/update/Updater$UpdateInfo;->size:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    .end local v0           #client:Lcn/com/zte/nlt/down/ClientInfo;
    .end local v7           #pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;
    :catch_0
    move-exception v6

    .line 69
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->e(Ljava/lang/String;)V

    .line 70
    sget v1, Lcn/com/zte/nlt/update/Updater;->EXCEPTION:I

    iput v1, v8, Lcn/com/zte/nlt/update/Updater$UpdateInfo;->status:I

    .line 71
    iput-wide v9, v8, Lcn/com/zte/nlt/update/Updater$UpdateInfo;->size:J

    goto :goto_0
.end method

.method public static getUpdateInfo(Lcn/com/zte/nlt/down/UpdatePackageInfo;)Lcn/com/zte/nlt/update/Updater$UpdateInfo;
    .locals 3
    .parameter "pkgInfo"

    .prologue
    .line 78
    new-instance v0, Lcn/com/zte/nlt/update/Updater$UpdateInfo;

    invoke-direct {v0}, Lcn/com/zte/nlt/update/Updater$UpdateInfo;-><init>()V

    .line 79
    .local v0, result:Lcn/com/zte/nlt/update/Updater$UpdateInfo;
    if-nez p0, :cond_0

    .line 80
    sget v1, Lcn/com/zte/nlt/update/Updater;->NO_UPDATE:I

    iput v1, v0, Lcn/com/zte/nlt/update/Updater$UpdateInfo;->status:I

    .line 81
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcn/com/zte/nlt/update/Updater$UpdateInfo;->size:J

    .line 87
    :goto_0
    return-object v0

    .line 83
    :cond_0
    sget v1, Lcn/com/zte/nlt/update/Updater;->HAS_UPDATE:I

    iput v1, v0, Lcn/com/zte/nlt/update/Updater$UpdateInfo;->status:I

    .line 84
    invoke-virtual {p0}, Lcn/com/zte/nlt/down/UpdatePackageInfo;->getSize()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcn/com/zte/nlt/update/Updater$UpdateInfo;->size:J

    goto :goto_0
.end method

.method public static getUpdatePackageInfo()Lcn/com/zte/nlt/down/UpdatePackageInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcn/com/zte/nlt/down/ClientInfo;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getDBVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcn/com/zte/nlt/down/ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v0, client:Lcn/com/zte/nlt/down/ClientInfo;
    new-instance v1, Lcn/com/zte/nlt/down/DownLoad;

    invoke-direct {v1}, Lcn/com/zte/nlt/down/DownLoad;-><init>()V

    invoke-virtual {v1, v0}, Lcn/com/zte/nlt/down/DownLoad;->getUpgradePackgeInfo(Lcn/com/zte/nlt/down/ClientInfo;)Lcn/com/zte/nlt/down/UpdatePackageInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 132
    const-string v3, "1.0.0"

    .line 134
    .local v3, version:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcn/com/zte/yp/YpApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 135
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcn/com/zte/yp/YpApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 136
    .local v1, packInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v1           #packInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static hasUpdate(Lcn/com/zte/nlt/down/UpdatePackageInfo;)Z
    .locals 1
    .parameter "pkgInfo"

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static update(Lcn/com/zte/nlt/down/IDownloadCallback;)Z
    .locals 9
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v8, 0x0

    .line 92
    .local v8, result:Z
    new-instance v6, Lcn/com/zte/nlt/down/DownLoad;

    invoke-direct {v6}, Lcn/com/zte/nlt/down/DownLoad;-><init>()V

    .line 93
    .local v6, downLoad:Lcn/com/zte/nlt/down/DownLoad;
    new-instance v0, Lcn/com/zte/nlt/down/ClientInfo;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getDBVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcn/com/zte/nlt/down/ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v0, client:Lcn/com/zte/nlt/down/ClientInfo;
    invoke-virtual {v6, v0}, Lcn/com/zte/nlt/down/DownLoad;->getUpgradePackgeInfo(Lcn/com/zte/nlt/down/ClientInfo;)Lcn/com/zte/nlt/down/UpdatePackageInfo;

    move-result-object v7

    .line 95
    .local v7, pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;
    if-eqz v7, :cond_0

    .line 96
    invoke-virtual {v7}, Lcn/com/zte/nlt/down/UpdatePackageInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/zte/nlt/down/ClientInfo;->setDbVersion(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v7}, Lcn/com/zte/nlt/down/UpdatePackageInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1, p0}, Lcn/com/zte/nlt/down/DownLoad;->downloadPackage(Lcn/com/zte/nlt/down/ClientInfo;Ljava/lang/String;Lcn/com/zte/nlt/down/IDownloadCallback;)Z

    move-result v8

    .line 99
    :cond_0
    return v8
.end method

.method public static update(Lcn/com/zte/nlt/down/UpdatePackageInfo;Lcn/com/zte/nlt/down/IDownloadCallback;)Z
    .locals 8
    .parameter "pkgInfo"
    .parameter "callback"

    .prologue
    .line 103
    const/4 v7, 0x0

    .line 104
    .local v7, result:Z
    new-instance v6, Lcn/com/zte/nlt/down/DownLoad;

    invoke-direct {v6}, Lcn/com/zte/nlt/down/DownLoad;-><init>()V

    .line 105
    .local v6, downLoad:Lcn/com/zte/nlt/down/DownLoad;
    new-instance v0, Lcn/com/zte/nlt/down/ClientInfo;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getDBVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcn/com/zte/nlt/down/ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v0, client:Lcn/com/zte/nlt/down/ClientInfo;
    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcn/com/zte/nlt/down/UpdatePackageInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/zte/nlt/down/ClientInfo;->setDbVersion(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcn/com/zte/nlt/down/UpdatePackageInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1, p1}, Lcn/com/zte/nlt/down/DownLoad;->downloadPackage(Lcn/com/zte/nlt/down/ClientInfo;Ljava/lang/String;Lcn/com/zte/nlt/down/IDownloadCallback;)Z

    move-result v7

    .line 110
    :cond_0
    return v7
.end method
