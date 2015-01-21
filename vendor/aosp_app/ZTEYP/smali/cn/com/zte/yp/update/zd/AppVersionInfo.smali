.class public Lcn/com/zte/yp/update/zd/AppVersionInfo;
.super Ljava/lang/Object;
.source "AppVersionInfo.java"


# static fields
.field private static packageInfo:Landroid/content/pm/PackageInfo;

.field private static packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "com.zte.backup.mmi"

    sput-object v0, Lcn/com/zte/yp/update/zd/AppVersionInfo;->packageName:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcn/com/zte/yp/update/zd/AppVersionInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcn/com/zte/yp/update/zd/AppVersionInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    sput-object v1, Lcn/com/zte/yp/update/zd/AppVersionInfo;->packageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 24
    const/4 v1, 0x0

    sput-object v1, Lcn/com/zte/yp/update/zd/AppVersionInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_0
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcn/com/zte/yp/update/zd/AppVersionInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcn/com/zte/yp/update/zd/AppVersionInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/com/zte/yp/update/zd/AppVersionInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcn/com/zte/yp/update/zd/AppVersionInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/com/zte/yp/update/zd/AppVersionInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0
.end method
