.class public Lzte/com/cn/cloudnotepad/update/UpdaterNew;
.super Ljava/lang/Object;
.source "UpdaterNew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;,
        Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;
    }
.end annotation


# static fields
.field private static final APP_DESCRIPTION:I = 0x7f0900a3

.field private static final DOWNLOAD_SOURCE:Ljava/lang/String; = "&from="

.field private static final FIELD_ZTE_AutoUpdate_Url:Ljava/lang/String; = "ZTE_AutoUpdate_Url"

.field private static final FIELD_hasUpdate:Ljava/lang/String; = "hasUpdate"

.field private static final FIELD_size:Ljava/lang/String; = "size"

.field private static final FIELD_summary:Ljava/lang/String; = "summary"

.field private static final FIELD_versionCode:Ljava/lang/String; = "versionCode"

.field private static final FIELD_versionName:Ljava/lang/String; = "versionName"

.field public static final GSM:I = 0x2

.field private static final HOST_url:Ljava/lang/String; = "http://cloud.ztedevices.com:10003/zteappupgrade/multiupdate"

.field private static final IMEI:Ljava/lang/String; = "&imei="

.field public static final NOCONNECT:I = 0x0

.field public static final WIFI:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "zyt"

    const-string v1, "UpdateNew Create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method private generateNewUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "autoUpdateUrl"

    .prologue
    .line 202
    const-string v0, "zyt"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "autoUpdateUrl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-object p1
.end method

.method private getRequestStr()Ljava/lang/String;
    .locals 10

    .prologue
    .line 148
    const/4 v6, 0x0

    .line 151
    .local v6, result:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v7

    const v8, 0x7f0900a3

    invoke-virtual {v7, v8}, Lzte/com/cn/cloudnotepad/NoteApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, msg:Ljava/lang/String;
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v7

    invoke-virtual {v7}, Lzte/com/cn/cloudnotepad/NoteApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 153
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v7

    invoke-virtual {v7}, Lzte/com/cn/cloudnotepad/NoteApp;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x4000

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 155
    .local v4, pinfo:Landroid/content/pm/PackageInfo;
    new-instance v2, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;

    invoke-direct {v2}, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;-><init>()V

    .line 156
    .local v2, jsonObject:Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v8, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3, v7, v8}, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;->parseAppDescription(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 158
    .local v1, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 159
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 164
    .end local v1           #jsonArray:Lorg/json/JSONArray;
    .end local v2           #jsonObject:Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;
    .end local v3           #msg:Ljava/lang/String;
    .end local v4           #pinfo:Landroid/content/pm/PackageInfo;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    const-string v7, "zyt"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "result="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-object v6

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getRespondStr(Ljava/lang/String;)Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;
    .locals 13
    .parameter "myJsonReqStr"

    .prologue
    const/4 v10, -0x2

    .line 83
    new-instance v3, Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;

    invoke-direct {v3, p0}, Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;-><init>(Lzte/com/cn/cloudnotepad/update/UpdaterNew;)V

    .line 84
    .local v3, info:Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;
    iput v10, v3, Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;->state:I

    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, httpURLConnection:Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 88
    .local v5, inputStream:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 90
    .local v6, objInputStream:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    const-string v10, "http://cloud.ztedevices.com:10003/zteappupgrade/multiupdate"

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 91
    .local v9, url:Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 92
    const/16 v10, 0x4e20

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 93
    const/16 v10, 0x2710

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 95
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 96
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 97
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 98
    const-string v10, "Content-type"

    const-string v11, "application/json"

    invoke-virtual {v2, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v10, "POST"

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 101
    new-instance v8, Ljava/io/ObjectOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 102
    .local v8, objOutputStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v8, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 103
    const-string v10, "zyt"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "myJsonReqStr:\n"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->flush()V

    .line 106
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V

    .line 107
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_2

    .line 108
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 109
    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 110
    .end local v6           #objInputStream:Ljava/io/ObjectInputStream;
    .local v7, objInputStream:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 111
    .local v4, inputObj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;->resultString:Ljava/lang/String;

    .line 112
    const/4 v10, 0x1

    iput v10, v3, Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-object v6, v7

    .line 129
    .end local v4           #inputObj:Ljava/lang/Object;
    .end local v7           #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v6       #objInputStream:Ljava/io/ObjectInputStream;
    :goto_0
    if-eqz v6, :cond_0

    .line 131
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 137
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 142
    .end local v8           #objOutputStream:Ljava/io/ObjectOutputStream;
    .end local v9           #url:Ljava/net/URL;
    :cond_1
    :goto_2
    const-string v10, "zyt"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "result:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v3, Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;->resultString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v10, "zyt"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "state:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v3, Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;->state:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-object v3

    .line 114
    .restart local v8       #objOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v9       #url:Ljava/net/URL;
    :cond_2
    :try_start_3
    const-string v10, "zyt"

    const-string v11, "getResponseCode() is not 200"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v10, 0x0

    iput v10, v3, Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 118
    .end local v8           #objOutputStream:Ljava/io/ObjectOutputStream;
    .end local v9           #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/net/SocketTimeoutException;
    :goto_3
    :try_start_4
    const-string v10, "zyt"

    const-string v11, "time out"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 121
    const/4 v10, -0x1

    iput v10, v3, Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;->state:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    if-eqz v6, :cond_3

    .line 131
    :try_start_5
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 137
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :cond_3
    :goto_4
    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 133
    .restart local v1       #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v1

    .line 134
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 123
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 124
    .local v1, e:Ljava/lang/Exception;
    :goto_5
    :try_start_6
    const-string v10, "zyt"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "other error e="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    const/4 v10, -0x2

    iput v10, v3, Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;->state:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 129
    if-eqz v6, :cond_4

    .line 131
    :try_start_7
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 137
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    :goto_6
    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 133
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 134
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 128
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 129
    :goto_7
    if-eqz v6, :cond_5

    .line 131
    :try_start_8
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 137
    :cond_5
    :goto_8
    if-eqz v2, :cond_6

    .line 138
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 140
    :cond_6
    throw v10

    .line 133
    :catch_4
    move-exception v1

    .line 134
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 133
    .end local v1           #e:Ljava/io/IOException;
    .restart local v8       #objOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v9       #url:Ljava/net/URL;
    :catch_5
    move-exception v1

    .line 134
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 128
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v7       #objInputStream:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v6       #objInputStream:Ljava/io/ObjectInputStream;
    goto :goto_7

    .line 123
    .end local v6           #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v7       #objInputStream:Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v1

    move-object v6, v7

    .end local v7           #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v6       #objInputStream:Ljava/io/ObjectInputStream;
    goto :goto_5

    .line 118
    .end local v6           #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v7       #objInputStream:Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v1

    move-object v6, v7

    .end local v7           #objInputStream:Ljava/io/ObjectInputStream;
    .restart local v6       #objInputStream:Ljava/io/ObjectInputStream;
    goto :goto_3
.end method

.method private parseRespondStr(Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;)Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;
    .locals 5
    .parameter "info"

    .prologue
    .line 169
    new-instance v2, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;-><init>(Lzte/com/cn/cloudnotepad/update/UpdaterNew;)V

    .line 171
    .local v2, updateApkInfo:Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;
    iget-object v3, p1, Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;->resultString:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 172
    iget v3, p1, Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;->state:I

    iput v3, v2, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;->retState:I

    .line 196
    :goto_0
    return-object v2

    .line 178
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p1, Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;->resultString:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 180
    .local v1, jsonObject:Lorg/json/JSONObject;
    const-string v3, "hasUpdate"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    const/4 v3, 0x0

    iput v3, v2, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;->retState:I

    .line 186
    :goto_1
    const-string v3, "versionName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;->versionName:Ljava/lang/String;

    .line 187
    const-string v3, "versionCode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;->versionCode:Ljava/lang/String;

    .line 188
    const-string v3, "ZTE_AutoUpdate_Url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lzte/com/cn/cloudnotepad/update/UpdaterNew;->generateNewUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;->url:Ljava/lang/String;

    .line 189
    const-string v3, "size"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;->size:Ljava/lang/Long;

    .line 190
    const-string v3, "summary"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;->feature:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Lorg/json/JSONException;
    const/4 v3, -0x2

    iput v3, v2, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;->retState:I

    .line 195
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    iput v3, v2, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;->retState:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public checkNetworkConnection()I
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 60
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Lzte/com/cn/cloudnotepad/NoteApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 62
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 64
    .local v2, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 65
    .local v1, mobile:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    :goto_0
    return v3

    .line 67
    :cond_0
    if-eqz v1, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    if-ne v3, v5, :cond_1

    .line 68
    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    move v3, v4

    .line 71
    goto :goto_0
.end method

.method public getUpdateApkInfo()Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;
    .locals 2

    .prologue
    .line 78
    const-string v0, "zyt"

    const-string v1, "getUpdateApkInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/update/UpdaterNew;->getRequestStr()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/update/UpdaterNew;->getRespondStr(Ljava/lang/String;)Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/update/UpdaterNew;->parseRespondStr(Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;)Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;

    move-result-object v0

    return-object v0
.end method
