.class public Lcom/zte/update/ui/UiCommonUtil;
.super Ljava/lang/Object;
.source "UiCommonUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UiCommonUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheAppInfo(Ljava/lang/Object;)Lcom/zte/update/data/CacheAppInfo;
    .locals 1
    .parameter "mainKey"

    .prologue
    .line 28
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/update/data/DataManager;->loadCacheAppInfo(Ljava/lang/Object;)Lcom/zte/update/data/CacheAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadInfo(Ljava/lang/Object;)Lcom/zte/update/data/DownloadInfo;
    .locals 1
    .parameter "mainKey"

    .prologue
    .line 33
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/update/data/DataManager;->loadDownloadInfo(Ljava/lang/Object;)Lcom/zte/update/data/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getRequestInfo(Ljava/lang/Object;)Lcom/zte/update/data/RequestAppInfo;
    .locals 1
    .parameter "mainKey"

    .prologue
    .line 22
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/update/data/DataManager;->loadRequestAppInfo(Ljava/lang/Object;)Lcom/zte/update/data/RequestAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public static initAppIconAndLable(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 7
    .parameter "pckgName"
    .parameter "iconImg"
    .parameter "lable"

    .prologue
    .line 37
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 39
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, p0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 41
    .local v3, pckgInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, lableTxt:Ljava/lang/String;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 44
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .end local v2           #lableTxt:Ljava/lang/String;
    .end local v3           #pckgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "UiCommonUtil"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zte/util/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
