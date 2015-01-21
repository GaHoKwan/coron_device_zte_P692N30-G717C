.class public Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;
.super Lcom/zte/retrieve/upgrade/UpgradeManager;
.source "PublicServerNewUpgradeManager.java"


# static fields
.field private static final DOWNLOAD_SOURCE:Ljava/lang/String; = "&from="

.field private static final FIELD_ZTE_AutoUpdate_Url:Ljava/lang/String; = "ZTE_AutoUpdate_Url"

.field private static final FIELD_appName:Ljava/lang/String; = "appName"

.field private static final FIELD_country:Ljava/lang/String; = "country"

.field private static final FIELD_device:Ljava/lang/String; = "device"

.field private static final FIELD_hasUpdate:Ljava/lang/String; = "hasUpdate"

.field private static final FIELD_operator:Ljava/lang/String; = "operator"

.field private static final FIELD_size:Ljava/lang/String; = "size"

.field private static final FIELD_summary:Ljava/lang/String; = "summary"

.field private static final FIELD_versionCode:Ljava/lang/String; = "versionCode"

.field private static final FIELD_versionName:Ljava/lang/String; = "versionName"

.field private static final IMEI:Ljava/lang/String; = "&imei="

.field private static final VALUE_appName:Ljava/lang/String; = "Retrieve"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/zte/retrieve/upgrade/UpgradeManager;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private generateNewUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "autoUpdateUrl"

    .prologue
    .line 143
    iget-object v3, p0, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 144
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, imei:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&from="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&imei="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, newUrl:Ljava/lang/String;
    return-object v1
.end method

.method private getRequestStr()Ljava/lang/String;
    .locals 6

    .prologue
    .line 120
    const/4 v3, 0x0

    .line 121
    .local v3, result:Ljava/lang/String;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 122
    .local v0, jsonArray:Lorg/json/JSONArray;
    new-instance v1, Lcom/zte/retrieve/upgrade/ZTEJSONObject;

    invoke-direct {v1}, Lcom/zte/retrieve/upgrade/ZTEJSONObject;-><init>()V

    .line 123
    .local v1, jsonObject:Lcom/zte/retrieve/upgrade/ZTEJSONObject;
    iget-object v4, p0, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;->getMetaInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;->getLocalVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;->getLocalVersionCode(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v1, v2, v4, v5}, Lcom/zte/retrieve/upgrade/ZTEJSONObject;->parseAppDescription(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 132
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    return-object v3
.end method

.method private getRespondStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "myJsonReqStr"

    .prologue
    .line 78
    const/4 v8, 0x0

    .line 79
    .local v8, result:Ljava/lang/String;
    const/4 v2, 0x0

    .line 80
    .local v2, httpURLConnection:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 81
    .local v4, inputStream:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 84
    .local v5, objInputStream:Ljava/io/ObjectInputStream;
    :try_start_0
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getInstance()Lcom/zte/retrieve/utils/config/RetrieveConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getSingleUpdateURL()Ljava/lang/String;

    move-result-object v10

    .line 85
    .local v10, singleUpdateURL:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "upgrade url = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 86
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 87
    .local v11, url:Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 88
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 89
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 90
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 91
    const-string v12, "Content-type"

    const-string v13, "application/json"

    invoke-virtual {v2, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v12, "POST"

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 94
    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 95
    .local v7, objOutputStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v7, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->flush()V

    .line 97
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V

    .line 98
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_2

    .line 99
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 100
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v5           #objInputStream:Ljava/io/ObjectInputStream;
    .local v6, objInputStream:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 102
    .local v3, inputObj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 103
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move-object v5, v6

    .end local v3           #inputObj:Ljava/lang/Object;
    .end local v6           #objInputStream:Ljava/io/ObjectInputStream;
    .end local v7           #objOutputStream:Ljava/io/ObjectOutputStream;
    .end local v10           #singleUpdateURL:Ljava/lang/String;
    .end local v11           #url:Ljava/net/URL;
    .restart local v5       #objInputStream:Ljava/io/ObjectInputStream;
    :cond_1
    :goto_0
    move-object v9, v8

    .line 116
    .end local v8           #result:Ljava/lang/String;
    .local v9, result:Ljava/lang/String;
    :goto_1
    return-object v9

    .line 105
    .end local v9           #result:Ljava/lang/String;
    .restart local v7       #objOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v8       #result:Ljava/lang/String;
    .restart local v10       #singleUpdateURL:Ljava/lang/String;
    .restart local v11       #url:Ljava/net/URL;
    :cond_2
    const/4 v8, 0x0

    .line 112
    if-eqz v2, :cond_3

    .line 113
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move-object v9, v8

    .line 105
    .end local v8           #result:Ljava/lang/String;
    .restart local v9       #result:Ljava/lang/String;
    goto :goto_1

    .line 107
    .end local v7           #objOutputStream:Ljava/io/ObjectOutputStream;
    .end local v9           #result:Ljava/lang/String;
    .end local v10           #singleUpdateURL:Ljava/lang/String;
    .end local v11           #url:Ljava/net/URL;
    .restart local v8       #result:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 108
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    if-eqz v2, :cond_1

    .line 113
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 111
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 112
    :goto_3
    if-eqz v2, :cond_4

    .line 113
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 115
    :cond_4
    throw v12

    .line 111
    .end local v5           #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v6       #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v7       #objOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v10       #singleUpdateURL:Ljava/lang/String;
    .restart local v11       #url:Ljava/net/URL;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6           #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v5       #objInputStream:Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 107
    .end local v5           #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v6       #objInputStream:Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6           #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v5       #objInputStream:Ljava/io/ObjectInputStream;
    goto :goto_2
.end method

.method private parseRespondStr(Ljava/lang/String;)Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;
    .locals 6
    .parameter "strJson"

    .prologue
    const/4 v3, 0x0

    .line 57
    if-nez p1, :cond_0

    move-object v2, v3

    .line 73
    :goto_0
    return-object v2

    .line 61
    :cond_0
    :try_start_0
    new-instance v2, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;

    invoke-direct {v2}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;-><init>()V

    .line 62
    .local v2, updateApkInfo:Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 63
    .local v1, jsonObject:Lorg/json/JSONObject;
    const-string v4, "hasUpdate"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setHasUpdate(Z)V

    .line 64
    const-string v4, "versionName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setVersionName(Ljava/lang/String;)V

    .line 65
    const-string v4, "versionCode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setVersionCode(I)V

    .line 66
    const-string v4, "ZTE_AutoUpdate_Url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;->generateNewUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setUpdateUrl(Ljava/lang/String;)V

    .line 67
    const-string v4, "size"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setSize(J)V

    .line 68
    const-string v4, "summary"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setSummary(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .end local v2           #updateApkInfo:Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 72
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    move-object v2, v3

    .line 73
    goto :goto_0
.end method


# virtual methods
.method protected getResponseInfo()Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;->getRequestStr()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;->getRespondStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;->parseRespondStr(Ljava/lang/String;)Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;

    move-result-object v0

    return-object v0
.end method
