.class public Lcom/zte/heartyservice/common/utils/PackageManagerCache;
.super Ljava/lang/Object;
.source "PackageManagerCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManagerCache"

.field static sMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/common/utils/PackageManagerCache;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/common/utils/PackageManagerCache;->sMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getPackageInfo(Ljava/lang/String;Z)Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;
    .locals 8
    .parameter "pkg"
    .parameter "exceptSystem"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v4, v5

    .line 116
    :cond_0
    :goto_0
    return-object v4

    .line 36
    :cond_1
    sget-object v7, Lcom/zte/heartyservice/common/utils/PackageManagerCache;->sMap:Ljava/util/Map;

    invoke-interface {v7, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;

    .line 37
    .local v4, pkgInfo:Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;
    if-nez v4, :cond_3

    .line 38
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    .line 39
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 41
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    new-instance v4, Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;

    .end local v4           #pkgInfo:Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;
    invoke-direct {v4}, Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;-><init>()V

    .line 43
    .restart local v4       #pkgInfo:Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v3, p0, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 45
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v4, Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;->label:Ljava/lang/String;

    .line 48
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    :cond_2
    iput-boolean v6, v4, Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;->isSystem:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_1
    sget-object v6, Lcom/zte/heartyservice/common/utils/PackageManagerCache;->sMap:Ljava/util/Map;

    invoke-interface {v6, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v6, Lcom/zte/heartyservice/common/utils/PackageManagerCache;->sReceiver:Landroid/content/BroadcastReceiver;

    if-nez v6, :cond_3

    .line 53
    new-instance v6, Lcom/zte/heartyservice/common/utils/PackageManagerCache$1;

    invoke-direct {v6}, Lcom/zte/heartyservice/common/utils/PackageManagerCache$1;-><init>()V

    sput-object v6, Lcom/zte/heartyservice/common/utils/PackageManagerCache;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 96
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v6, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v6, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v6, "package"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 101
    sget-object v6, Lcom/zte/heartyservice/common/utils/PackageManagerCache;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    sget-object v6, Lcom/zte/heartyservice/common/utils/PackageManagerCache;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #packageManager:Landroid/content/pm/PackageManager;
    :cond_3
    if-eqz v4, :cond_4

    iget-object v6, v4, Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;->label:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz p1, :cond_0

    iget-boolean v6, v4, Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;->isSystem:Z

    if-eqz v6, :cond_0

    :cond_4
    move-object v4, v5

    .line 116
    goto/16 :goto_0

    .line 49
    .restart local v1       #context:Landroid/content/Context;
    .restart local v3       #packageManager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static unregisterReceiver()V
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/zte/heartyservice/common/utils/PackageManagerCache;->sReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/common/utils/PackageManagerCache;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/common/utils/PackageManagerCache;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    :cond_0
    return-void
.end method
