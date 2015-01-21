.class public Lcom/zte/retrieve/upgrade/OwnServerUpgradeManager;
.super Lcom/zte/retrieve/upgrade/UpgradeManager;
.source "OwnServerUpgradeManager.java"


# static fields
.field private static final VERSION_PATH_XML_EN:Ljava/lang/String; = "version.xml"


# instance fields
.field mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/zte/retrieve/upgrade/UpgradeManager;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private checkNewVersion(I)Z
    .locals 5
    .parameter "localVersionCode"

    .prologue
    .line 56
    iget-object v3, p0, Lcom/zte/retrieve/upgrade/OwnServerUpgradeManager;->mHashMap:Ljava/util/HashMap;

    const-string v4, "version"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    .local v1, before:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/retrieve/upgrade/Tools;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, after:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 61
    .local v2, serviceCode:I
    if-le v2, p1, :cond_0

    .line 62
    const/4 v3, 0x1

    .line 64
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getCfgHashMap()Z
    .locals 8

    .prologue
    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/zte/retrieve/upgrade/OwnServerUpgradeManager;->getXmlPath()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, xmlPath:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "xmlPath="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 75
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 76
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 77
    .local v0, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 78
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 79
    .local v2, inStream:Ljava/io/InputStream;
    new-instance v3, Lcom/zte/retrieve/upgrade/ParseXmlService;

    invoke-direct {v3}, Lcom/zte/retrieve/upgrade/ParseXmlService;-><init>()V

    .line 80
    .local v3, service:Lcom/zte/retrieve/upgrade/ParseXmlService;
    invoke-virtual {v3, v2}, Lcom/zte/retrieve/upgrade/ParseXmlService;->parseXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/retrieve/upgrade/OwnServerUpgradeManager;->mHashMap:Ljava/util/HashMap;

    .line 81
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 82
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    const/4 v6, 0x1

    .line 87
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .end local v2           #inStream:Ljava/io/InputStream;
    .end local v3           #service:Lcom/zte/retrieve/upgrade/ParseXmlService;
    .end local v4           #url:Ljava/net/URL;
    .end local v5           #xmlPath:Ljava/lang/String;
    :goto_0
    return v6

    .line 84
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 87
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private getXmlPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getInstance()Lcom/zte/retrieve/utils/config/RetrieveConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getUpdateType()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, version:Ljava/lang/String;
    const-string v0, ""

    .line 95
    .local v0, path:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getInstance()Lcom/zte/retrieve/utils/config/RetrieveConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getSingleUpdateURL()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    invoke-direct {p0, v0}, Lcom/zte/retrieve/upgrade/OwnServerUpgradeManager;->setVersionPathXmlFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    return-object v0
.end method

.method private setVersionPathXmlFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 103
    const-string v0, ""

    .line 104
    .local v0, xmlPath:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "version.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    return-object v0
.end method


# virtual methods
.method public getNewVersionApkUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zte/retrieve/upgrade/OwnServerUpgradeManager;->mHashMap:Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getResponseInfo()Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, responseInfo:Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;
    invoke-direct {p0}, Lcom/zte/retrieve/upgrade/OwnServerUpgradeManager;->getCfgHashMap()Z

    move-result v1

    .line 38
    .local v1, retOfGet:Z
    if-nez v1, :cond_0

    .line 39
    new-instance v2, Ljava/io/IOException;

    const-string v3, "can\'t get configure hashmap"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_0
    new-instance v0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;

    .end local v0           #responseInfo:Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;
    invoke-direct {v0}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;-><init>()V

    .line 43
    .restart local v0       #responseInfo:Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;
    iget-object v2, p0, Lcom/zte/retrieve/upgrade/OwnServerUpgradeManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/retrieve/upgrade/OwnServerUpgradeManager;->getLocalVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/zte/retrieve/upgrade/OwnServerUpgradeManager;->checkNewVersion(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setHasUpdate(Z)V

    .line 44
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setPackageName(Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/zte/retrieve/upgrade/OwnServerUpgradeManager;->mHashMap:Ljava/util/HashMap;

    const-string v3, "size"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setSize(J)V

    .line 46
    iget-object v2, p0, Lcom/zte/retrieve/upgrade/OwnServerUpgradeManager;->mHashMap:Ljava/util/HashMap;

    const-string v3, "feature"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setSummary(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/zte/retrieve/upgrade/OwnServerUpgradeManager;->mHashMap:Ljava/util/HashMap;

    const-string v3, "url"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setUpdateUrl(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/zte/retrieve/upgrade/OwnServerUpgradeManager;->mHashMap:Ljava/util/HashMap;

    const-string v3, "version"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setVersionCode(I)V

    .line 49
    iget-object v2, p0, Lcom/zte/retrieve/upgrade/OwnServerUpgradeManager;->mHashMap:Ljava/util/HashMap;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setVersionName(Ljava/lang/String;)V

    .line 51
    return-object v0
.end method
