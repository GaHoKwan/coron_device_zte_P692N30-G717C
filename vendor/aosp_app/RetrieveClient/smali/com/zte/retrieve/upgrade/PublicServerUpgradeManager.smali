.class public Lcom/zte/retrieve/upgrade/PublicServerUpgradeManager;
.super Lcom/zte/retrieve/upgrade/UpgradeManager;
.source "PublicServerUpgradeManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/zte/retrieve/upgrade/UpgradeManager;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private getLocalVersionInfo()Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;

    invoke-direct {v0}, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;-><init>()V

    .line 67
    .local v0, versionInfo:Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;
    const-string v1, "GENERIC"

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->setCountry(Ljava/lang/String;)V

    .line 68
    const-string v1, "GENERIC"

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->setDevice(Ljava/lang/String;)V

    .line 69
    const-string v1, "GENERIC"

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->setOperator(Ljava/lang/String;)V

    .line 70
    const-string v1, "com.zte.retrieve"

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->setPackageName(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/zte/retrieve/upgrade/PublicServerUpgradeManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/retrieve/upgrade/PublicServerUpgradeManager;->getLocalVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->setVersionCode(I)V

    .line 72
    iget-object v1, p0, Lcom/zte/retrieve/upgrade/PublicServerUpgradeManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/retrieve/upgrade/PublicServerUpgradeManager;->getLocalVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->setVersionName(Ljava/lang/String;)V

    .line 73
    return-object v0
.end method

.method private getRespJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "respJsonStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 125
    .local v2, length:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON array length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 128
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 129
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 130
    .local v1, jsonObject:Lorg/json/JSONObject;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get JSON first Object  = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 134
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 133
    :cond_0
    const-string v3, "get JSON first Object  = null, Error!"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getResponseBufferFromServer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/zte/retrieve/upgrade/PublicServerUpgradeManager;->getLocalVersionInfo()Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;

    move-result-object v1

    .line 60
    .local v1, requestInfo:Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;
    invoke-static {v1}, Lcom/zte/retrieve/upgrade/UpgradeJsonUtils;->generateJSONObject(Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, reqJsonStr:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/zte/retrieve/upgrade/PublicServerUpgradeManager;->getResponseByServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, respJsonStr:Ljava/lang/String;
    return-object v2
.end method

.method private getResponseByServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "reqJsonStr"

    .prologue
    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, httpURLConnection:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 79
    .local v4, inputStream:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 81
    .local v7, respJsonStr:Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    const-string v9, "http://backup4u.xicp.net:10003/zteappupgrade/multiupdate"

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 82
    .local v8, url:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 83
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 84
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 85
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 86
    const-string v9, "Content-type"

    const-string v10, "application/json"

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v9, "POST"

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 89
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 90
    .local v6, objOutputStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v6, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->flush()V

    .line 92
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V

    .line 93
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "JSON get server response code = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_0

    .line 95
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 96
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 97
    .local v5, objInputStream:Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 98
    .local v3, inputObj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 99
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 100
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "JSON download response content:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v3           #inputObj:Ljava/lang/Object;
    .end local v5           #objInputStream:Ljava/io/ObjectInputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 107
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 111
    .end local v6           #objOutputStream:Ljava/io/ObjectOutputStream;
    .end local v8           #url:Ljava/net/URL;
    :cond_1
    :goto_0
    return-object v7

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    if-eqz v2, :cond_1

    .line 107
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 105
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 106
    if-eqz v2, :cond_2

    .line 107
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 109
    :cond_2
    throw v9
.end method


# virtual methods
.method protected getResponseInfo()Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v3, 0x0

    .line 41
    .local v3, responseInfo:Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;
    invoke-direct {p0}, Lcom/zte/retrieve/upgrade/PublicServerUpgradeManager;->getResponseBufferFromServer()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, respJsonStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/retrieve/utils/TextHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    new-instance v4, Ljava/io/IOException;

    const-string v5, "can\'t get connection with server"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 47
    :cond_0
    :try_start_0
    invoke-direct {p0, v2}, Lcom/zte/retrieve/upgrade/PublicServerUpgradeManager;->getRespJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 48
    .local v1, respJsonObject:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/zte/retrieve/upgrade/UpgradeJsonUtils;->parseJSONObject(Lorg/json/JSONObject;)Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 54
    return-object v3

    .line 49
    .end local v1           #respJsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 51
    new-instance v4, Ljava/io/IOException;

    const-string v5, "respnoseInfo maybe wrong format"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
