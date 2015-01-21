.class public Lcom/zte/update/scan/UpdateRequestBuilder;
.super Ljava/lang/Object;
.source "UpdateRequestBuilder.java"


# static fields
.field private static final KEY_APP_DESCRIPTION:Ljava/lang/String; = "appDescription"

.field private static final ZTE_APP_HEADER:Ljava/lang/String; = "ZTE_"

.field private static final appNameHeader:Ljava/lang/String; = "appName|"

.field private static convertor:Lcom/zte/update/scan/UpdateRequestBuilder; = null

.field static final defaultValue:Ljava/lang/String; = "unkown"

.field private static final versionNameHeader:Ljava/lang/String; = "versionName|"


# instance fields
.field public jsonObject:Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/zte/update/scan/UpdateRequestBuilder;

    invoke-direct {v0}, Lcom/zte/update/scan/UpdateRequestBuilder;-><init>()V

    sput-object v0, Lcom/zte/update/scan/UpdateRequestBuilder;->convertor:Lcom/zte/update/scan/UpdateRequestBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "appDescription"
    .parameter "header"

    .prologue
    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    const-string v2, "unkown"

    .line 100
    :cond_0
    :goto_0
    return-object v2

    .line 93
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int v1, v3, v4

    .line 94
    .local v1, start:I
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, substr:Ljava/lang/String;
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, end:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 100
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "appDescription"

    .prologue
    .line 86
    const-string v0, "appName|"

    invoke-direct {p0, p1, v0}, Lcom/zte/update/scan/UpdateRequestBuilder;->findValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/zte/update/scan/UpdateRequestBuilder;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/zte/update/scan/UpdateRequestBuilder;->convertor:Lcom/zte/update/scan/UpdateRequestBuilder;

    return-object v0
.end method

.method private isZTEAppDescription(Ljava/lang/String;)Z
    .locals 1
    .parameter "appDesc"

    .prologue
    .line 121
    if-eqz p1, :cond_0

    const-string v0, "ZTE_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public convertToJSON(Lcom/zte/update/data/RequestAppInfo;)Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;
    .locals 4
    .parameter "reqAppInfo"

    .prologue
    .line 44
    new-instance v0, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;

    invoke-direct {v0}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;-><init>()V

    .line 45
    .local v0, jsonObject:Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;
    invoke-virtual {p1}, Lcom/zte/update/data/RequestAppInfo;->getAppDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/update/data/RequestAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zte/update/data/RequestAppInfo;->getVersionCode()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->parseAppDescription(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    return-object v0
.end method

.method findVersionValueFromDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "decre"

    .prologue
    .line 104
    const-string v0, "versionName|"

    invoke-direct {p0, p1, v0}, Lcom/zte/update/scan/UpdateRequestBuilder;->findValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDescription(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 4
    .parameter "pckgInfo"

    .prologue
    .line 135
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 137
    .local v1, descripison:Ljava/lang/String;
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 138
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 139
    .local v2, metaData:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string v3, "appDescription"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    const-string v3, "appDescription"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    :cond_0
    return-object v1
.end method

.method getMeataDataAppDescription(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 4
    .parameter "pckgInfo"

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, descrption:Ljava/lang/String;
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 127
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 128
    .local v2, metaData:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string v3, "appDescription"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    const-string v3, "appDescription"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    :cond_0
    return-object v1
.end method

.method public getRequestAppInfo(Landroid/content/pm/PackageInfo;)Lcom/zte/update/data/RequestAppInfo;
    .locals 4
    .parameter "pckgInfo"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/zte/update/scan/UpdateRequestBuilder;->isZTEApp(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    const/4 v0, 0x0

    .line 78
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    new-instance v0, Lcom/zte/update/data/RequestAppInfo;

    invoke-direct {v0}, Lcom/zte/update/data/RequestAppInfo;-><init>()V

    .line 59
    .local v0, requestInfo:Lcom/zte/update/data/RequestAppInfo;
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/zte/update/data/RequestAppInfo;->setPackageName(Ljava/lang/String;)V

    .line 60
    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v2}, Lcom/zte/update/data/RequestAppInfo;->setVersionCode(I)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/zte/update/scan/UpdateRequestBuilder;->isVersionNameDescription(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/zte/update/data/RequestAppInfo;->setAppDescription(Ljava/lang/String;)V

    .line 64
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/zte/update/scan/UpdateRequestBuilder;->findVersionValueFromDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, versionName:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/zte/update/data/RequestAppInfo;->setVersionName(Ljava/lang/String;)V

    .line 71
    .end local v1           #versionName:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Lcom/zte/update/data/RequestAppInfo;->getAppDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zte/update/scan/UpdateRequestBuilder;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zte/update/data/RequestAppInfo;->setAppName(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zte/update/data/RequestAppInfo;->setAppUid(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Lcom/zte/update/data/RequestAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AliveUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/zte/update/data/RequestAppInfo;->setNotificationType(I)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/zte/update/data/RequestAppInfo;->setVersionName(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/zte/update/scan/UpdateRequestBuilder;->getMeataDataAppDescription(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zte/update/data/RequestAppInfo;->setAppDescription(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getRequestAppInfoJSONArray(Ljava/util/Collection;)Lorg/json/JSONArray;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/zte/update/data/RequestAppInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, requestdInfoSet:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/zte/update/data/RequestAppInfo;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 150
    .local v0, array:Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/update/data/RequestAppInfo;

    .line 151
    .local v3, requestInfo:Lcom/zte/update/data/RequestAppInfo;
    invoke-virtual {p0, v3}, Lcom/zte/update/scan/UpdateRequestBuilder;->convertToJSON(Lcom/zte/update/data/RequestAppInfo;)Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;

    move-result-object v2

    .line 152
    .local v2, jsonObj:Lorg/json/JSONObject;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 155
    .end local v2           #jsonObj:Lorg/json/JSONObject;
    .end local v3           #requestInfo:Lcom/zte/update/data/RequestAppInfo;
    :cond_0
    return-object v0
.end method

.method isVersionNameDescription(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .parameter "pckgInfo"

    .prologue
    .line 109
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 111
    .local v0, versionName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/zte/update/scan/UpdateRequestBuilder;->isZTEAppDescription(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method isZTEApp(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .parameter "pckgInfo"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/zte/update/scan/UpdateRequestBuilder;->getDescription(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, appDesc:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/zte/update/scan/UpdateRequestBuilder;->isZTEAppDescription(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public requestJsonConvertor(Landroid/content/pm/PackageInfo;)Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;
    .locals 2
    .parameter "pckgInfo"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/zte/update/scan/UpdateRequestBuilder;->getRequestAppInfo(Landroid/content/pm/PackageInfo;)Lcom/zte/update/data/RequestAppInfo;

    move-result-object v0

    .line 40
    .local v0, reqAppInfo:Lcom/zte/update/data/RequestAppInfo;
    invoke-virtual {p0, v0}, Lcom/zte/update/scan/UpdateRequestBuilder;->convertToJSON(Lcom/zte/update/data/RequestAppInfo;)Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;

    move-result-object v1

    return-object v1
.end method

.method public scanPackageInfotoRequestMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/zte/update/data/RequestAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 160
    .local v4, pkgMgr:Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 162
    .local v2, pckgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 164
    .local v5, tmpMap:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/zte/update/data/RequestAppInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 165
    .local v3, pkgInfo:Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, v3}, Lcom/zte/update/scan/UpdateRequestBuilder;->getRequestAppInfo(Landroid/content/pm/PackageInfo;)Lcom/zte/update/data/RequestAppInfo;

    move-result-object v1

    .line 166
    .local v1, info:Lcom/zte/update/data/RequestAppInfo;
    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v1}, Lcom/zte/update/data/RequestAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    .end local v1           #info:Lcom/zte/update/data/RequestAppInfo;
    .end local v3           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v5
.end method
