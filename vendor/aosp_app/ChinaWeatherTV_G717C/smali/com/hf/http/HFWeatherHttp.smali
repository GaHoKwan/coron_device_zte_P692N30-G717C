.class public Lcom/hf/http/HFWeatherHttp;
.super Ljava/lang/Object;
.source "HFWeatherHttp.java"


# static fields
.field private static final AD_SWITCH:Ljava/lang/String; = "http://app.weathercn.com/getdata/getisad?channel=%s"

.field private static final CHECK_AD_URL:Ljava/lang/String; = "http://app.weathercn.com/getdata/getandroidad?channel=%s"

.field private static final CHECK_NEW_VERSION_RUL:Ljava/lang/String; = "http://app.weathercn.com/getdata/getandroidedition?channel=%s&version=%s&deviceId=%s&isNewUser=%s"

.field private static CONNECTION_TIME_OUT:I = 0x0

.field private static final NEW_USER:Ljava/lang/String; = "new_user"

.field private static final PROVINCE_WEATHER_URL:Ljava/lang/String; = "http://app.weathercn.com/getdata/getprovinceforecast?pid=%s"

.field public static final QUERY_TYPE_FAILED:I = 0x0

.field public static final QUERY_TYPE_NO_DATA:I = 0x2

.field public static final QUERY_TYPE_NO_NET:I = 0x3

.field public static final QUERY_TYPE_SUCCESSED:I = 0x1

.field private static mInstance:Lcom/hf/http/HFWeatherHttp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x3a98

    sput v0, Lcom/hf/http/HFWeatherHttp;->CONNECTION_TIME_OUT:I

    .line 194
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, channel:Ljava/lang/String;
    const/4 v0, 0x0

    .line 258
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 262
    :goto_0
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const v4, 0x7f08011d

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    sget-boolean v3, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v3, :cond_0

    .line 265
    const-string v3, "checkUpdate"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "channel = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    return-object v1

    .line 259
    :catch_0
    move-exception v2

    .line 260
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/hf/http/HFWeatherHttp;
    .locals 2

    .prologue
    .line 102
    const-class v1, Lcom/hf/http/HFWeatherHttp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hf/http/HFWeatherHttp;->mInstance:Lcom/hf/http/HFWeatherHttp;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/hf/http/HFWeatherHttp;

    invoke-direct {v0}, Lcom/hf/http/HFWeatherHttp;-><init>()V

    sput-object v0, Lcom/hf/http/HFWeatherHttp;->mInstance:Lcom/hf/http/HFWeatherHttp;

    .line 105
    :cond_0
    sget-object v0, Lcom/hf/http/HFWeatherHttp;->mInstance:Lcom/hf/http/HFWeatherHttp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 77
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 78
    .local v0, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.socket.timeout"

    sget v7, Lcom/hf/http/HFWeatherHttp;->CONNECTION_TIME_OUT:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 79
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.connection.timeout"

    sget v7, Lcom/hf/http/HFWeatherHttp;->CONNECTION_TIME_OUT:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 80
    invoke-static {p1}, Lcom/hf/utils/Util;->getNetworkType(Landroid/content/Context;)I

    move-result v2

    .line 81
    .local v2, net_type:I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 82
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, proxyHost:Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v3

    .line 84
    .local v3, port:I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 85
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, v4, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 87
    .local v1, httpHost:Lorg/apache/http/HttpHost;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.route.default-proxy"

    invoke-interface {v5, v6, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 94
    .end local v1           #httpHost:Lorg/apache/http/HttpHost;
    .end local v3           #port:I
    .end local v4           #proxyHost:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 89
    .restart local v3       #port:I
    .restart local v4       #proxyHost:Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.route.default-proxy"

    invoke-interface {v5, v6, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0

    .line 92
    .end local v3           #port:I
    .end local v4           #proxyHost:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.route.default-proxy"

    invoke-interface {v5, v6, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0
.end method


# virtual methods
.method public checkNewVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 17
    .parameter "context"

    .prologue
    .line 200
    const/4 v11, 0x0

    .line 201
    .local v11, value:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/hf/http/HFWeatherHttp;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, channel:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/hf/utils/Util;->getPackageVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 203
    .local v12, version:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/hf/utils/Util;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, deviceId:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 205
    .local v8, preference:Landroid/content/SharedPreferences;
    const-string v13, "new_user"

    const/4 v14, 0x1

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 206
    .local v7, isNewUser:Z
    const/4 v10, 0x0

    .line 208
    .local v10, url:Ljava/lang/String;
    :try_start_0
    const-string v13, "http://app.weathercn.com/getdata/getandroidedition?channel=%s&version=%s&deviceId=%s&isNewUser=%s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    const/4 v15, 0x1

    aput-object v12, v14, v15

    const/4 v15, 0x2

    aput-object v1, v14, v15

    const/4 v15, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v10

    .line 213
    :goto_0
    sget-boolean v13, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v13, :cond_0

    .line 214
    const-string v13, "checkNewVersion"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "url = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; isNewUser = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    :try_start_1
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 219
    .local v5, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-direct/range {p0 .. p1}, Lcom/hf/http/HFWeatherHttp;->initHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v6

    .line 220
    .local v6, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v6, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 221
    .local v9, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_2

    .line 222
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 223
    .local v4, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v11

    .line 224
    sget-boolean v13, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v13, :cond_1

    .line 225
    const-string v13, "checkUpdate"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "value = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_1
    if-eqz v7, :cond_2

    .line 229
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 230
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v13, "new_user"

    const/4 v14, 0x0

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 246
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    :cond_2
    :goto_1
    return-object v11

    .line 234
    :catch_0
    move-exception v2

    .line 235
    .local v2, e:Lorg/apache/http/conn/ConnectTimeoutException;
    invoke-virtual {v2}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    goto :goto_1

    .line 236
    .end local v2           #e:Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_1
    move-exception v2

    .line 237
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 238
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v2

    .line 239
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 240
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 241
    .local v2, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 243
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v13

    goto :goto_1

    .line 242
    :catch_5
    move-exception v13

    goto :goto_1

    .line 210
    :catch_6
    move-exception v13

    goto/16 :goto_0

    .line 209
    :catch_7
    move-exception v13

    goto/16 :goto_0
.end method

.method public downloadAD(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 310
    .local v0, ad:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/hf/http/HFWeatherHttp;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, channel:Ljava/lang/String;
    const-string v8, "http://app.weathercn.com/getdata/getandroidad?channel=%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 312
    .local v7, urlStr:Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 313
    .local v4, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {p0, p1}, Lcom/hf/http/HFWeatherHttp;->initHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v5

    .line 314
    .local v5, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v5, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 315
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_0

    .line 316
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 317
    .local v3, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 318
    sget-boolean v8, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v8, :cond_0

    .line 319
    const-string v8, "downloadAD"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "value = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 333
    .end local v1           #channel:Ljava/lang/String;
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #urlStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 323
    :catch_0
    move-exception v2

    .line 324
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 325
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v2

    .line 326
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 327
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 328
    .local v2, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 331
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v8

    goto :goto_0

    .line 329
    :catch_4
    move-exception v8

    goto :goto_0
.end method

.method public getAdSwitch(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    .line 342
    :try_start_0
    invoke-direct {p0, p1}, Lcom/hf/http/HFWeatherHttp;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, channel:Ljava/lang/String;
    const-string v8, "http://app.weathercn.com/getdata/getisad?channel=%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 344
    .local v7, urlStr:Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 345
    .local v4, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {p0, p1}, Lcom/hf/http/HFWeatherHttp;->initHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v5

    .line 346
    .local v5, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v5, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 347
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_0

    .line 348
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 349
    .local v3, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, ad:Ljava/lang/String;
    const-string v8, "getAdSwitch"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 364
    .end local v0           #ad:Ljava/lang/String;
    .end local v1           #channel:Ljava/lang/String;
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #urlStr:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 353
    :catch_0
    move-exception v2

    .line 354
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 364
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 355
    :catch_1
    move-exception v2

    .line 356
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 357
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 358
    .local v2, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 361
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v8

    goto :goto_1

    .line 359
    :catch_4
    move-exception v8

    goto :goto_1
.end method

.method public getIntentBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "url"
    .parameter "imageName"

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 162
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 163
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {p0, p1}, Lcom/hf/http/HFWeatherHttp;->initHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 164
    .local v3, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 165
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_1

    .line 167
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 168
    .local v4, in:Ljava/io/InputStream;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 169
    invoke-static {p1, v4, p3}, Lcom/hf/utils/Util;->writeToFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v6

    .line 170
    .local v6, writeSuccess:Z
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 171
    if-nez v6, :cond_0

    .line 172
    const/4 v7, 0x0

    .line 190
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #writeSuccess:Z
    :goto_0
    return-object v7

    .line 175
    .restart local v2       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #writeSuccess:Z
    :cond_0
    invoke-virtual {p1, p3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #writeSuccess:Z
    :cond_1
    :goto_1
    move-object v7, v0

    .line 190
    goto :goto_0

    .line 177
    .restart local v2       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    :cond_2
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    goto :goto_1

    .line 181
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 182
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 183
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 184
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 185
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 186
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 187
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v7

    goto :goto_1
.end method

.method public getIntentBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "context"
    .parameter "url"

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, bitmap:Landroid/graphics/drawable/Drawable;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 280
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {p0, p1}, Lcom/hf/http/HFWeatherHttp;->initHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 281
    .local v3, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 282
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 284
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 285
    .local v4, in:Ljava/io/InputStream;
    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 297
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-object v0

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 290
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 291
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 292
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 293
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 294
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v6

    goto :goto_0
.end method

.method public queryProvinceWeather(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .parameter "context"
    .parameter "provinceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/CFWeather;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v5, 0x0

    .line 110
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CFWeather;>;"
    const-string v13, "http://app.weathercn.com/getdata/getprovinceforecast?pid=%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 111
    .local v10, url:Ljava/lang/String;
    sget-boolean v13, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v13, :cond_0

    .line 112
    const-string v13, "queryProvinceWeather"

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-direct/range {p0 .. p1}, Lcom/hf/http/HFWeatherHttp;->initHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v4

    .line 119
    .local v4, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v4, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 120
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_1

    .line 121
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 122
    .local v9, stream:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v11

    .line 123
    .local v11, xmlFactory:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v11}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v7

    .line 124
    .local v7, saxParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v12

    .line 125
    .local v12, xmlReader:Lorg/xml/sax/XMLReader;
    new-instance v3, Lcom/hf/utils/ProvinceWeatherHandler;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/hf/utils/ProvinceWeatherHandler;-><init>(Landroid/content/Context;)V

    .line 126
    .local v3, handler:Lcom/hf/utils/ProvinceWeatherHandler;
    invoke-interface {v12, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 127
    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8, v9}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 128
    .local v8, source:Lorg/xml/sax/InputSource;
    invoke-interface {v12, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 129
    invoke-virtual {v3}, Lcom/hf/utils/ProvinceWeatherHandler;->getmList()Ljava/util/List;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v5

    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #handler:Lcom/hf/utils/ProvinceWeatherHandler;
    .end local v4           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #saxParser:Ljavax/xml/parsers/SAXParser;
    .end local v8           #source:Lorg/xml/sax/InputSource;
    .end local v9           #stream:Ljava/io/InputStream;
    .end local v11           #xmlFactory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v12           #xmlReader:Lorg/xml/sax/XMLReader;
    :cond_1
    :goto_0
    move-object v13, v5

    .line 147
    :goto_1
    return-object v13

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 133
    const/4 v13, 0x0

    goto :goto_1

    .line 134
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 135
    .local v1, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 136
    const/4 v13, 0x0

    goto :goto_1

    .line 137
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v1

    .line 138
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 139
    const/4 v13, 0x0

    goto :goto_1

    .line 140
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 141
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v13, 0x0

    goto :goto_1

    .line 142
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 143
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_5
    move-exception v1

    .line 145
    .local v1, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0
.end method
