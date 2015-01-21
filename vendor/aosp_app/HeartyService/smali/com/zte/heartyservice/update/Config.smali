.class public Lcom/zte/heartyservice/update/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.zte.heartyservice"

.field private static final TAG:Ljava/lang/String; = "Config"

.field public static final UPDATE_APKNAME:Ljava/lang/String; = "HeartyService_signed.apk"

.field public static final UPDATE_CONFIGS:Ljava/lang/String; = "configs.json"

.field public static final UPDATE_FILTER:Ljava/lang/String; = "filter"

.field public static final UPDATE_REMOVE_DATA:Ljava/lang/String; = "remove_data"

.field public static final UPDATE_SAVENAME:Ljava/lang/String; = "HeartyService_signed.apk"

.field public static final UPDATE_SERVER:Ljava/lang/String; = "http://mobile.ztems.com/download/tmpfile/number/manager/"

.field public static final UPDATE_VERJSON:Ljava/lang/String; = "ver.json"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, verName:Ljava/lang/String;
    return-object v0
.end method

.method public static getVerCode(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 28
    const/4 v1, -0x1

    .line 30
    .local v1, verCode:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.zte.heartyservice"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Config"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getVerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 39
    const-string v1, ""

    .line 41
    .local v1, verName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.zte.heartyservice"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Config"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
