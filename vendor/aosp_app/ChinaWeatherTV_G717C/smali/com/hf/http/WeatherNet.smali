.class public Lcom/hf/http/WeatherNet;
.super Ljava/lang/Object;
.source "WeatherNet.java"


# static fields
.field private static final CONNECTION_MAX_TIME:I = 0x4e20

.field private static final CONNECTION_TIME_OUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "WeatherNet"

.field private static final WARNING_URL:Ljava/lang/String; = "http://app.weathercn.com/getdata/getalert?sid=%s"

.field private static final WEATHER_URL_CHINA:Ljava/lang/String; = "http://app.weathercn.com/getdata/getguoneiforecastzusk?cid=%s"

.field private static final WEATHER_URL_FOREIGN:Ljava/lang/String; = "http://app.weathercn.com/getdata/getguowaiforecast?cid=%s"

.field private static mInstance:Lcom/hf/http/WeatherNet;


# instance fields
.field public mCancle:Z

.field private mHttpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-direct {p0}, Lcom/hf/http/WeatherNet;->initHttp()V

    .line 59
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hf/http/WeatherNet;
    .locals 2

    .prologue
    .line 62
    const-class v1, Lcom/hf/http/WeatherNet;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hf/http/WeatherNet;->mInstance:Lcom/hf/http/WeatherNet;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/hf/http/WeatherNet;

    invoke-direct {v0}, Lcom/hf/http/WeatherNet;-><init>()V

    sput-object v0, Lcom/hf/http/WeatherNet;->mInstance:Lcom/hf/http/WeatherNet;

    .line 66
    :cond_0
    sget-object v0, Lcom/hf/http/WeatherNet;->mInstance:Lcom/hf/http/WeatherNet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initHttp()V
    .locals 4

    .prologue
    const/16 v3, 0x2710

    .line 69
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/hf/http/WeatherNet;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 70
    iget-object v0, p0, Lcom/hf/http/WeatherNet;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 71
    iget-object v0, p0, Lcom/hf/http/WeatherNet;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.connection.timeout"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 72
    return-void
.end method

.method private replaceWeatherFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "newFileName"
    .parameter "oldFileName"

    .prologue
    .line 339
    invoke-virtual {p1, p3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 340
    .local v1, oldfile:Ljava/io/File;
    invoke-virtual {p1, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 341
    .local v0, newfile:Ljava/io/File;
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 342
    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 343
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_0

    .line 344
    const-string v2, "WeatherNet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "path = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    return-void
.end method

.method private setParams(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 75
    invoke-static {p1}, Lcom/hf/utils/Util;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 76
    .local v1, net_type:I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 77
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, proxyHost:Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v2

    .line 83
    .local v2, port:I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v3, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 86
    .local v0, httpHost:Lorg/apache/http/HttpHost;
    iget-object v4, p0, Lcom/hf/http/WeatherNet;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 94
    .end local v0           #httpHost:Lorg/apache/http/HttpHost;
    .end local v2           #port:I
    .end local v3           #proxyHost:Ljava/lang/String;
    :goto_0
    return-void

    .line 88
    .restart local v2       #port:I
    .restart local v3       #proxyHost:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/hf/http/WeatherNet;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0

    .line 91
    .end local v2           #port:I
    .end local v3           #proxyHost:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/hf/http/WeatherNet;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized queryWarning(Landroid/content/Context;Lcom/hf/model/CityModel;)Ljava/util/List;
    .locals 21
    .parameter "context"
    .parameter "city"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hf/model/CityModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/WarningModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    monitor-enter p0

    if-nez p2, :cond_1

    .line 235
    const/4 v6, 0x0

    .line 331
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v6

    .line 237
    :cond_1
    const/4 v6, 0x0

    .line 238
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    const/4 v14, 0x0

    .line 239
    .local v14, urlStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 241
    .local v3, changed:Z
    :try_start_0
    const-string v17, "http://app.weathercn.com/getdata/getalert?sid=%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/hf/model/CityModel;->stationId:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 247
    :try_start_1
    sget-boolean v17, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v17, :cond_2

    .line 248
    const-string v17, "WeatherNet"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "urlStr = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 251
    const/4 v6, 0x0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v4

    .line 243
    .local v4, e:Ljava/lang/NullPointerException;
    const/4 v6, 0x0

    goto :goto_0

    .line 244
    .end local v4           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v4

    .line 245
    .local v4, e:Ljava/util/IllegalFormatException;
    const/4 v6, 0x0

    goto :goto_0

    .line 253
    .end local v4           #e:Ljava/util/IllegalFormatException;
    :cond_3
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v14}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    .local v5, get:Lorg/apache/http/client/methods/HttpGet;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/http/WeatherNet;->mHttpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/hf/http/WeatherNet;->initHttp()V

    .line 259
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/hf/http/WeatherNet;->setParams(Landroid/content/Context;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/http/WeatherNet;->mHttpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 261
    .local v13, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 263
    .local v8, newFileName:Ljava/lang/String;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Lcom/hf/utils/Util;->writeToFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v16

    .line 264
    .local v16, writeSuccess:Z
    if-eqz v16, :cond_5

    .line 265
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/hf/utils/Util;->readWeatherFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/hf/utils/Util;->parseWarning(Landroid/content/Context;Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v6

    .line 267
    :cond_5
    sget-boolean v17, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v17, :cond_6

    .line 268
    const-string v17, "getWarningList"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_6
    if-nez v6, :cond_9

    .line 272
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 304
    .end local v8           #newFileName:Ljava/lang/String;
    .end local v16           #writeSuccess:Z
    :cond_7
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 308
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    :goto_2
    if-eqz v6, :cond_d

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_d

    .line 309
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 310
    .local v12, preference:Landroid/content/SharedPreferences;
    const v17, 0x7f080137

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 312
    .local v15, warningSwitch:Ljava/lang/String;
    sget-boolean v17, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v17, :cond_8

    .line 313
    const-string v17, "searchWeather"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "warning = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_8
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 317
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/hf/model/CityModel;->isDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 318
    if-eqz v3, :cond_0

    .line 319
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v6, v1}, Lcom/hf/manager/WeatherNotifyManager;->showWarnNotification(Landroid/content/Context;Ljava/util/List;Lcom/hf/model/CityModel;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 234
    .end local v5           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v12           #preference:Landroid/content/SharedPreferences;
    .end local v15           #warningSwitch:Ljava/lang/String;
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 274
    .restart local v5       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #newFileName:Ljava/lang/String;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #writeSuccess:Z
    :cond_9
    const v17, 0x7f080121

    const/16 v18, 0x1

    :try_start_4
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 277
    .local v10, oldFileName:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 278
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 279
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_1

    .line 293
    .end local v8           #newFileName:Ljava/lang/String;
    .end local v10           #oldFileName:Ljava/lang/String;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #writeSuccess:Z
    :catch_2
    move-exception v4

    .line 294
    .local v4, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_5
    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 304
    :try_start_6
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 282
    .end local v4           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v8       #newFileName:Ljava/lang/String;
    .restart local v10       #oldFileName:Ljava/lang/String;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #writeSuccess:Z
    :cond_a
    :try_start_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 283
    .local v7, newFile:Ljava/io/File;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 284
    .local v9, oldFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v17

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v19

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 285
    .local v11, poor:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-le v11, v0, :cond_b

    const/4 v3, 0x1

    .line 287
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v10}, Lcom/hf/http/WeatherNet;->replaceWeatherFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_1

    .line 295
    .end local v7           #newFile:Ljava/io/File;
    .end local v8           #newFileName:Ljava/lang/String;
    .end local v9           #oldFile:Ljava/io/File;
    .end local v10           #oldFileName:Ljava/lang/String;
    .end local v11           #poor:I
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #writeSuccess:Z
    :catch_3
    move-exception v4

    .line 296
    .local v4, e:Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 304
    :try_start_9
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 285
    .end local v4           #e:Ljava/io/IOException;
    .restart local v7       #newFile:Ljava/io/File;
    .restart local v8       #newFileName:Ljava/lang/String;
    .restart local v9       #oldFile:Ljava/io/File;
    .restart local v10       #oldFileName:Ljava/lang/String;
    .restart local v11       #poor:I
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #writeSuccess:Z
    :cond_b
    const/4 v3, 0x0

    goto :goto_3

    .line 297
    .end local v7           #newFile:Ljava/io/File;
    .end local v8           #newFileName:Ljava/lang/String;
    .end local v9           #oldFile:Ljava/io/File;
    .end local v10           #oldFileName:Ljava/lang/String;
    .end local v11           #poor:I
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #writeSuccess:Z
    :catch_4
    move-exception v4

    .line 298
    .local v4, e:Ljava/lang/IllegalArgumentException;
    :try_start_a
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 304
    :try_start_b
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 299
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v4

    .line 300
    .local v4, e:Ljava/lang/IllegalStateException;
    :try_start_c
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 304
    :try_start_d
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 301
    .end local v4           #e:Ljava/lang/IllegalStateException;
    :catch_6
    move-exception v4

    .line 302
    .local v4, e:Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 304
    :try_start_f
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto/16 :goto_2

    .line 303
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v17

    .line 304
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 305
    throw v17

    .line 323
    .restart local v12       #preference:Landroid/content/SharedPreferences;
    .restart local v15       #warningSwitch:Ljava/lang/String;
    :cond_c
    if-eqz v3, :cond_0

    .line 324
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v6, v1}, Lcom/hf/manager/WeatherNotifyManager;->showWarnNotification(Landroid/content/Context;Ljava/util/List;Lcom/hf/model/CityModel;)V

    goto/16 :goto_0

    .line 328
    .end local v12           #preference:Landroid/content/SharedPreferences;
    .end local v15           #warningSwitch:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/hf/manager/WeatherNotifyManager;->cancleNotification(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized queryWeather(Ljava/lang/String;Landroid/content/Context;)Lcom/hf/model/WeatherModel;
    .locals 16
    .parameter "cityID"
    .parameter "context"

    .prologue
    .line 103
    monitor-enter p0

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/hf/http/WeatherNet;->mCancle:Z

    .line 104
    invoke-static/range {p2 .. p2}, Lcom/hf/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-nez v13, :cond_0

    .line 108
    const/4 v5, 0x0

    .line 222
    :goto_0
    monitor-exit p0

    return-object v5

    .line 110
    :cond_0
    const/4 v11, 0x0

    .line 112
    .local v11, urlStr:Ljava/lang/String;
    :try_start_1
    const-string v13, "0101"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 113
    const-string v13, "http://app.weathercn.com/getdata/getguoneiforecastzusk?cid=%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 126
    :goto_1
    :try_start_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    if-eqz v13, :cond_2

    .line 127
    const/4 v5, 0x0

    goto :goto_0

    .line 115
    :cond_1
    :try_start_3
    const-string v13, "http://app.weathercn.com/getdata/getguowaiforecast?cid=%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/IllegalFormatException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v11

    goto :goto_1

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, e:Ljava/lang/NullPointerException;
    const/4 v5, 0x0

    goto :goto_0

    .line 119
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 120
    .local v2, e:Ljava/util/IllegalFormatException;
    const/4 v5, 0x0

    goto :goto_0

    .line 130
    .end local v2           #e:Ljava/util/IllegalFormatException;
    :cond_2
    :try_start_4
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    .local v4, get:Lorg/apache/http/client/methods/HttpGet;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hf/http/WeatherNet;->mHttpClient:Lorg/apache/http/client/HttpClient;

    if-nez v13, :cond_3

    .line 133
    invoke-direct/range {p0 .. p0}, Lcom/hf/http/WeatherNet;->initHttp()V

    .line 135
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/hf/http/WeatherNet;->setParams(Landroid/content/Context;)V

    .line 136
    new-instance v9, Lcom/hf/http/WeatherNet$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v4}, Lcom/hf/http/WeatherNet$1;-><init>(Lcom/hf/http/WeatherNet;Lorg/apache/http/client/methods/HttpGet;)V

    .line 144
    .local v9, task:Ljava/util/TimerTask;
    new-instance v10, Ljava/util/Timer;

    invoke-direct {v10}, Ljava/util/Timer;-><init>()V

    .line 145
    .local v10, timer:Ljava/util/Timer;
    const-wide/16 v13, 0x4e20

    invoke-virtual {v10, v9, v13, v14}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hf/http/WeatherNet;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v13, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 147
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_7

    .line 148
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 149
    .local v8, stream:Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, fileName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v0, v8, v3}, Lcom/hf/utils/Util;->writeToFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v12

    .line 151
    .local v12, writeSuccess:Z
    invoke-virtual {v10}, Ljava/util/Timer;->cancel()V

    .line 152
    const/4 v10, 0x0

    .line 153
    invoke-virtual {v9}, Ljava/util/TimerTask;->cancel()Z

    .line 154
    const/4 v9, 0x0

    .line 159
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 160
    const/4 v8, 0x0

    .line 161
    if-nez v12, :cond_4

    .line 162
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 163
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    .line 219
    :goto_2
    :try_start_6
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 164
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 166
    :cond_4
    :try_start_7
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/hf/utils/Util;->readWeatherFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 168
    if-nez v8, :cond_5

    .line 169
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 170
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_2

    .line 191
    .end local v3           #fileName:Ljava/lang/String;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #stream:Ljava/io/InputStream;
    .end local v9           #task:Ljava/util/TimerTask;
    .end local v10           #timer:Ljava/util/Timer;
    .end local v12           #writeSuccess:Z
    :catch_2
    move-exception v2

    .line 192
    .local v2, e:Ljava/net/SocketException;
    :try_start_8
    const-string v13, "hf-exception"

    invoke-virtual {v2}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/hf/data/LogTag;->writeExToSDCard(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 219
    :try_start_9
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 222
    .end local v2           #e:Ljava/net/SocketException;
    :goto_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 175
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #stream:Ljava/io/InputStream;
    .restart local v9       #task:Ljava/util/TimerTask;
    .restart local v10       #timer:Ljava/util/Timer;
    .restart local v12       #writeSuccess:Z
    :cond_5
    :try_start_a
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v8, v1}, Lcom/hf/utils/Util;->parseWeatherFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Lcom/hf/model/WeatherModel;

    move-result-object v5

    .line 176
    .local v5, model:Lcom/hf/model/WeatherModel;
    if-nez v5, :cond_6

    .line 177
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 178
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 219
    :try_start_b
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 179
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 181
    :cond_6
    const v13, 0x7f080124

    const/4 v14, 0x1

    :try_start_c
    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 182
    .local v6, oldFileName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3, v6}, Lcom/hf/http/WeatherNet;->replaceWeatherFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 219
    :try_start_d
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 103
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #model:Lcom/hf/model/WeatherModel;
    .end local v6           #oldFileName:Ljava/lang/String;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #stream:Ljava/io/InputStream;
    .end local v9           #task:Ljava/util/TimerTask;
    .end local v10           #timer:Ljava/util/Timer;
    .end local v11           #urlStr:Ljava/lang/String;
    .end local v12           #writeSuccess:Z
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 186
    .restart local v4       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v9       #task:Ljava/util/TimerTask;
    .restart local v10       #timer:Ljava/util/Timer;
    .restart local v11       #urlStr:Ljava/lang/String;
    :cond_7
    :try_start_e
    invoke-virtual {v10}, Ljava/util/Timer;->cancel()V

    .line 187
    const/4 v10, 0x0

    .line 188
    invoke-virtual {v9}, Ljava/util/TimerTask;->cancel()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 219
    :try_start_f
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_3

    .line 194
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #task:Ljava/util/TimerTask;
    .end local v10           #timer:Ljava/util/Timer;
    :catch_3
    move-exception v2

    .line 195
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_10
    const-string v13, "hf-exception"

    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/hf/data/LogTag;->writeExToSDCard(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 219
    :try_start_11
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_3

    .line 197
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_4
    move-exception v2

    .line 198
    .local v2, e:Ljava/net/SocketTimeoutException;
    :try_start_12
    const-string v13, "hf-exception"

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/hf/data/LogTag;->writeExToSDCard(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 219
    :try_start_13
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_3

    .line 200
    .end local v2           #e:Ljava/net/SocketTimeoutException;
    :catch_5
    move-exception v2

    .line 201
    .local v2, e:Ljava/io/IOException;
    :try_start_14
    const-string v13, "hf-exception"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/hf/data/LogTag;->writeExToSDCard(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 219
    :try_start_15
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_3

    .line 203
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 204
    .local v2, e:Ljava/lang/IllegalArgumentException;
    :try_start_16
    const-string v13, "hf-exception"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/hf/data/LogTag;->writeExToSDCard(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 219
    :try_start_17
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_3

    .line 206
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v2

    .line 207
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_18
    const-string v13, "hf-exception"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/hf/data/LogTag;->writeExToSDCard(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 219
    :try_start_19
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_3

    .line 209
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_8
    move-exception v2

    .line 210
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_1a
    const-string v13, "hf-exception"

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/hf/data/LogTag;->writeExToSDCard(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 219
    :try_start_1b
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_3

    .line 212
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_9
    move-exception v2

    .line 213
    .local v2, e:Ljava/lang/reflect/UndeclaredThrowableException;
    :try_start_1c
    const-string v13, "hf-exception"

    invoke-virtual {v2}, Ljava/lang/reflect/UndeclaredThrowableException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/hf/data/LogTag;->writeExToSDCard(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 219
    :try_start_1d
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto/16 :goto_3

    .line 215
    .end local v2           #e:Ljava/lang/reflect/UndeclaredThrowableException;
    :catch_a
    move-exception v2

    .line 216
    .local v2, e:Ljava/lang/Exception;
    :try_start_1e
    const-string v13, "hf-exception"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/hf/data/LogTag;->writeExToSDCard(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 219
    :try_start_1f
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto/16 :goto_3

    .line 218
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v13

    .line 219
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 220
    throw v13
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
.end method

.method public stopQuery()V
    .locals 2

    .prologue
    .line 354
    const-string v0, "WeatherNet"

    const-string v1, "cancle query weather"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hf/http/WeatherNet;->mCancle:Z

    .line 356
    iget-object v0, p0, Lcom/hf/http/WeatherNet;->mHttpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/hf/http/WeatherNet;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hf/http/WeatherNet;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 362
    :cond_0
    return-void
.end method
