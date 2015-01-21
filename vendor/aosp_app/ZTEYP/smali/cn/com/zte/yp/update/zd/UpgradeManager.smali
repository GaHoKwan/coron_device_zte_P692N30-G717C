.class public Lcn/com/zte/yp/update/zd/UpgradeManager;
.super Ljava/lang/Object;
.source "UpgradeManager.java"


# static fields
.field private static final APP_DESCRIPTION:Ljava/lang/String; = "appDescription"

.field private static final DOWNLOAD_SOURCE:Ljava/lang/String; = "&from="

.field private static final FIELD_ZTE_AutoUpdate_Url:Ljava/lang/String; = "ZTE_AutoUpdate_Url"

.field private static final FIELD_hasUpdate:Ljava/lang/String; = "hasUpdate"

.field private static final FIELD_size:Ljava/lang/String; = "size"

.field private static final FIELD_summary:Ljava/lang/String; = "summary"

.field private static final FIELD_versionCode:Ljava/lang/String; = "versionCode"

.field private static final FIELD_versionName:Ljava/lang/String; = "versionName"

.field private static final HOST_URL:Ljava/lang/String; = "http://cloud.ztedevices.com:10003/zteappupgrade/multiupdate"

.field private static final IMEI:Ljava/lang/String; = "&imei="


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/zte/yp/update/zd/UpgradeManager;->context:Landroid/content/Context;

    .line 37
    iput-object p1, p0, Lcn/com/zte/yp/update/zd/UpgradeManager;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private generateNewUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "autoUpdateUrl"

    .prologue
    .line 141
    iget-object v3, p0, Lcn/com/zte/yp/update/zd/UpgradeManager;->context:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 142
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, imei:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    .line 144
    .local v1, newUrl:Ljava/lang/String;
    return-object v1
.end method

.method private getRequestStr()Ljava/lang/String;
    .locals 10

    .prologue
    .line 45
    const/4 v5, 0x0

    .line 49
    .local v5, result:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcn/com/zte/yp/update/zd/UpgradeManager;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcn/com/zte/yp/update/zd/UpgradeManager;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 51
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "appDescription"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, msg:Ljava/lang/String;
    new-instance v6, Lcn/com/zte/yp/update/zd/AppVersionInfo;

    iget-object v7, p0, Lcn/com/zte/yp/update/zd/UpgradeManager;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcn/com/zte/yp/update/zd/AppVersionInfo;-><init>(Landroid/content/Context;)V

    .line 53
    .local v6, versionInfo:Lcn/com/zte/yp/update/zd/AppVersionInfo;
    new-instance v3, Lcn/com/zte/yp/update/zd/ZTEJSONObject;

    invoke-direct {v3}, Lcn/com/zte/yp/update/zd/ZTEJSONObject;-><init>()V

    .line 54
    .local v3, jsonObject:Lcn/com/zte/yp/update/zd/ZTEJSONObject;
    invoke-virtual {v6}, Lcn/com/zte/yp/update/zd/AppVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcn/com/zte/yp/update/zd/AppVersionInfo;->getVersionCode()I

    move-result v8

    invoke-virtual {v3, v4, v7, v8}, Lcn/com/zte/yp/update/zd/ZTEJSONObject;->parseAppDescription(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 56
    .local v2, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 57
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 64
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .end local v3           #jsonObject:Lcn/com/zte/yp/update/zd/ZTEJSONObject;
    .end local v4           #msg:Ljava/lang/String;
    .end local v6           #versionInfo:Lcn/com/zte/yp/update/zd/AppVersionInfo;
    :goto_0
    return-object v5

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/com/zte/yp/utils/Logging;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getRespondStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "myJsonReqStr"

    .prologue
    .line 68
    const/4 v8, 0x0

    .line 69
    .local v8, result:Ljava/lang/String;
    const/4 v2, 0x0

    .line 70
    .local v2, httpURLConnection:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 71
    .local v4, inputStream:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 73
    .local v5, objInputStream:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    const-string v10, "http://cloud.ztedevices.com:10003/zteappupgrade/multiupdate"

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 74
    .local v9, url:Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 75
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 76
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 77
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 78
    const-string v10, "Content-type"

    const-string v11, "application/json"

    invoke-virtual {v2, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v10, "POST"

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 81
    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 82
    .local v7, objOutputStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v7, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->flush()V

    .line 84
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V

    .line 85
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_0

    .line 86
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 87
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    .end local v5           #objInputStream:Ljava/io/ObjectInputStream;
    .local v6, objInputStream:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 89
    .local v3, inputObj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v8

    move-object v5, v6

    .line 97
    .end local v3           #inputObj:Ljava/lang/Object;
    .end local v6           #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v5       #objInputStream:Ljava/io/ObjectInputStream;
    :cond_0
    if-eqz v5, :cond_1

    .line 99
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 106
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 109
    .end local v7           #objOutputStream:Ljava/io/ObjectOutputStream;
    .end local v9           #url:Ljava/net/URL;
    :cond_2
    :goto_1
    return-object v8

    .line 101
    .restart local v7       #objOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v9       #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v1           #e:Ljava/io/IOException;
    .end local v7           #objOutputStream:Ljava/io/ObjectOutputStream;
    .end local v9           #url:Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 93
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcn/com/zte/yp/utils/Logging;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    if-eqz v5, :cond_3

    .line 99
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 105
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :goto_3
    if-eqz v2, :cond_2

    .line 106
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 101
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 102
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 97
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v5, :cond_4

    .line 99
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 105
    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 106
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v10

    .line 101
    :catch_3
    move-exception v1

    .line 102
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 97
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v6       #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v7       #objOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v9       #url:Ljava/net/URL;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v5       #objInputStream:Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 92
    .end local v5           #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v6       #objInputStream:Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v1

    move-object v5, v6

    .end local v6           #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v5       #objInputStream:Ljava/io/ObjectInputStream;
    goto :goto_2
.end method

.method private parseRespondStr(Ljava/lang/String;)Lcn/com/zte/yp/update/zd/UpdateApkInfo;
    .locals 6
    .parameter "strJson"

    .prologue
    const/4 v3, 0x0

    .line 113
    if-nez p1, :cond_0

    move-object v2, v3

    .line 130
    :goto_0
    return-object v2

    .line 117
    :cond_0
    :try_start_0
    new-instance v2, Lcn/com/zte/yp/update/zd/UpdateApkInfo;

    invoke-direct {v2}, Lcn/com/zte/yp/update/zd/UpdateApkInfo;-><init>()V

    .line 118
    .local v2, updateApkInfo:Lcn/com/zte/yp/update/zd/UpdateApkInfo;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 119
    .local v1, jsonObject:Lorg/json/JSONObject;
    const-string v4, "hasUpdate"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->setHasUpdate(Z)V

    .line 120
    const-string v4, "versionName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->setVersionName(Ljava/lang/String;)V

    .line 121
    const-string v4, "versionCode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->setVersionCode(Ljava/lang/String;)V

    .line 122
    const-string v4, "ZTE_AutoUpdate_Url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/com/zte/yp/update/zd/UpgradeManager;->generateNewUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->setUrl(Ljava/lang/String;)V

    .line 123
    const-string v4, "size"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->setSize(J)V

    .line 124
    const-string v4, "summary"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->setFeature(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .end local v2           #updateApkInfo:Lcn/com/zte/yp/update/zd/UpdateApkInfo;
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 129
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/com/zte/yp/utils/Logging;->e(Ljava/lang/String;)V

    move-object v2, v3

    .line 130
    goto :goto_0
.end method


# virtual methods
.method public getUpdateApkInfo()Lcn/com/zte/yp/update/zd/UpdateApkInfo;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcn/com/zte/yp/update/zd/UpgradeManager;->getRequestStr()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/zte/yp/update/zd/UpgradeManager;->getRespondStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/zte/yp/update/zd/UpgradeManager;->parseRespondStr(Ljava/lang/String;)Lcn/com/zte/yp/update/zd/UpdateApkInfo;

    move-result-object v0

    return-object v0
.end method
