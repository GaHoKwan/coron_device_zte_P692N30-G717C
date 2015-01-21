.class public Lcom/zte/retrieve/http/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;
    }
.end annotation


# static fields
.field private static final CB_TRANS_MODE_HTTP:I = 0x11

.field private static final CB_TRANS_MODE_HTTPS:I = 0x12

.field private static final CONTENTTYPE:Ljava/lang/String; = "text/xml;charset=\"utf-8\""

.field private static final HDR_KEY_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final HTTPS_SCHEME:Ljava/lang/String; = "https"

.field public static final HTTP_GET_METHOD:I = 0x2

.field public static final HTTP_POST_METHOD:I = 0x1

.field private static final TIME_OUT:I = 0xea60


# instance fields
.field private mContext:Landroid/content/Context;

.field private useJson:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/zte/retrieve/http/HttpUtils;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "isJson"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/zte/retrieve/http/HttpUtils;->mContext:Landroid/content/Context;

    .line 84
    iput-boolean p2, p0, Lcom/zte/retrieve/http/HttpUtils;->useJson:Z

    .line 85
    return-void
.end method

.method private addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 422
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 430
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private createHttpObjects(Ljava/lang/String;)Lcom/zte/retrieve/http/HttpObjects;
    .locals 7
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v1, Lcom/zte/retrieve/http/HttpObjects;

    invoke-direct {v1}, Lcom/zte/retrieve/http/HttpObjects;-><init>()V

    .line 155
    .local v1, httpObj:Lcom/zte/retrieve/http/HttpObjects;
    invoke-direct {p0, p1}, Lcom/zte/retrieve/http/HttpUtils;->getTransMode(Ljava/lang/String;)I

    move-result v2

    .line 156
    .local v2, mode:I
    const/16 v3, 0x12

    if-ne v3, v2, :cond_0

    .line 157
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v3, v1, Lcom/zte/retrieve/http/HttpObjects;->mHttpParams:Lorg/apache/http/params/HttpParams;

    .line 158
    iget-object v3, v1, Lcom/zte/retrieve/http/HttpObjects;->mHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {p0, v3}, Lcom/zte/retrieve/http/HttpUtils;->getHttpsClient(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/retrieve/http/HttpObjects;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 160
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, hostUrl:Ljava/net/URI;
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v5

    const-string v6, "https"

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v3, v1, Lcom/zte/retrieve/http/HttpObjects;->mHttpHost:Lorg/apache/http/HttpHost;

    .line 169
    :goto_0
    return-object v1

    .line 163
    .end local v0           #hostUrl:Ljava/net/URI;
    :cond_0
    invoke-direct {p0}, Lcom/zte/retrieve/http/HttpUtils;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/retrieve/http/HttpObjects;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 164
    iget-object v3, v1, Lcom/zte/retrieve/http/HttpObjects;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/retrieve/http/HttpObjects;->mHttpParams:Lorg/apache/http/params/HttpParams;

    .line 166
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 167
    .restart local v0       #hostUrl:Ljava/net/URI;
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v5

    const-string v6, "http"

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v3, v1, Lcom/zte/retrieve/http/HttpObjects;->mHttpHost:Lorg/apache/http/HttpHost;

    goto :goto_0
.end method

.method private getHttpAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 408
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 409
    .local v1, locale:Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, v1}, Lcom/zte/retrieve/http/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 412
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 414
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v2}, Lcom/zte/retrieve/http/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 418
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 3

    .prologue
    const v2, 0xea60

    .line 345
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 346
    .local v0, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 347
    .local v1, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 348
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 349
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 350
    const-string v2, "HttpUtils_getHttpClient:createHttpClient"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 351
    return-object v0
.end method

.method private getHttpRequest(Landroid/content/Context;Lorg/apache/http/params/HttpParams;Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;)Lorg/apache/http/HttpRequest;
    .locals 6
    .parameter "context"
    .parameter "params"
    .parameter "httpUtilsParams"

    .prologue
    .line 319
    const/4 v2, 0x0

    .line 320
    .local v2, req:Lorg/apache/http/HttpRequest;
    invoke-virtual {p3}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getMethod()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HttpUtils_getHttpRequest:Unknown HTTP method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getMethod()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 336
    const-string v4, ". Must be one of POST["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] or GET["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 335
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    .line 337
    const/4 v3, 0x0

    .line 341
    :goto_0
    return-object v3

    .line 322
    :pswitch_0
    new-instance v0, Lcom/zte/retrieve/http/HttpProgressCallbackEntity;

    invoke-virtual {p3}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getToken()J

    move-result-wide v3

    .line 323
    invoke-virtual {p3}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getData()[B

    move-result-object v5

    .line 322
    invoke-direct {v0, p1, v3, v4, v5}, Lcom/zte/retrieve/http/HttpProgressCallbackEntity;-><init>(Landroid/content/Context;J[B)V

    .line 325
    .local v0, entity:Lcom/zte/retrieve/http/HttpProgressCallbackEntity;
    const-string v3, "text/xml;charset=\"utf-8\""

    invoke-virtual {v0, v3}, Lcom/zte/retrieve/http/HttpProgressCallbackEntity;->setContentType(Ljava/lang/String;)V

    .line 327
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p3}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 328
    .local v1, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 329
    move-object v2, v1

    .line 339
    .end local v0           #entity:Lcom/zte/retrieve/http/HttpProgressCallbackEntity;
    .end local v1           #post:Lorg/apache/http/client/methods/HttpPost;
    :goto_1
    invoke-interface {v2, p2}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 340
    const-string v3, "Accept-Language"

    invoke-direct {p0}, Lcom/zte/retrieve/http/HttpUtils;->getHttpAcceptLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 341
    goto :goto_0

    .line 332
    :pswitch_1
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    .end local v2           #req:Lorg/apache/http/HttpRequest;
    invoke-virtual {p3}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 333
    .restart local v2       #req:Lorg/apache/http/HttpRequest;
    goto :goto_1

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getHttpsClient(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
    .locals 7
    .parameter "params"

    .prologue
    const v3, 0xea60

    .line 355
    invoke-static {p1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 356
    invoke-static {p1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 358
    const-string v3, "http.protocol.expect-continue"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 359
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {p1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 360
    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 362
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 363
    .local v2, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 364
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    new-instance v5, Lcom/zte/retrieve/http/EasySSLSocketFactory;

    invoke-direct {v5}, Lcom/zte/retrieve/http/EasySSLSocketFactory;-><init>()V

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 366
    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v0, p1, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 367
    .local v0, cm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 368
    .local v1, httpClient:Lorg/apache/http/client/HttpClient;
    return-object v1
.end method

.method private getTransMode(Ljava/lang/String;)I
    .locals 3
    .parameter "url"

    .prologue
    .line 174
    const/16 v0, 0x11

    .line 176
    .local v0, mode:I
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, pref:Ljava/lang/String;
    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    const/16 v0, 0x12

    .line 182
    :goto_0
    return v0

    .line 180
    :cond_0
    const/16 v0, 0x11

    goto :goto_0
.end method

.method private handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3
    .parameter "exception"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HttpUtils_handleHttpConnectionException:Url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/net/SocketTimeoutException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    new-instance v0, Ljava/io/IOException;

    .end local v0           #e:Ljava/io/IOException;
    const-string v1, "Socket time out"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 399
    .restart local v0       #e:Ljava/io/IOException;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 400
    throw v0

    .line 397
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .end local v0           #e:Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .restart local v0       #e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private readChunkedDataFromEntity(Landroid/content/Context;Lcom/zte/retrieve/http/HttpResult;Lorg/apache/http/HttpEntity;)V
    .locals 0
    .parameter "context"
    .parameter "httpResult"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    return-void
.end method

.method private readDataFromEntity(Lcom/zte/retrieve/http/HttpResult;Lorg/apache/http/HttpEntity;)V
    .locals 10
    .parameter "httpResult"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, inputStream:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 235
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 237
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 238
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 239
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_1
    const-string v4, ""

    .line 240
    .local v4, result:Ljava/lang/String;
    const-string v1, ""

    .line 241
    .local v1, line:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 242
    .local v5, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 246
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 247
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1, v4}, Lcom/zte/retrieve/http/HttpResult;->setResData(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 260
    .end local v1           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #result:Ljava/lang/String;
    .end local v5           #sb:Ljava/lang/StringBuffer;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :cond_0
    if-eqz v2, :cond_1

    .line 261
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 262
    const/4 v2, 0x0

    .line 264
    :cond_1
    if-eqz v0, :cond_2

    .line 265
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 266
    const/4 v0, 0x0

    .line 268
    :cond_2
    if-eqz p2, :cond_3

    .line 269
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 272
    :cond_3
    return-void

    .line 244
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #result:Ljava/lang/String;
    .restart local v5       #sb:Ljava/lang/StringBuffer;
    :cond_4
    :try_start_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 259
    .end local v1           #line:Ljava/lang/String;
    .end local v4           #result:Ljava/lang/String;
    .end local v5           #sb:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v6

    move-object v2, v3

    .line 260
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v2, :cond_5

    .line 261
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 262
    const/4 v2, 0x0

    .line 264
    :cond_5
    if-eqz v0, :cond_6

    .line 265
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 266
    const/4 v0, 0x0

    .line 268
    :cond_6
    if-eqz p2, :cond_7

    .line 269
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 271
    :cond_7
    throw v6

    .line 259
    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method private readDataFromServer(Landroid/content/Context;Lcom/zte/retrieve/http/HttpResult;Lorg/apache/http/HttpResponse;Lorg/apache/http/StatusLine;)Lcom/zte/retrieve/http/HttpResult;
    .locals 4
    .parameter "context"
    .parameter "httpResult"
    .parameter "response"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-interface {p4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 199
    .local v1, statusCode:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HttpUtils_readDataFromServer:statusCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 201
    const/16 v2, 0xc8

    if-eq v2, v1, :cond_1

    .line 202
    invoke-virtual {p2, v1}, Lcom/zte/retrieve/http/HttpResult;->setStatusCode(I)V

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server Response is err. status code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 221
    :cond_0
    :goto_0
    return-object p2

    .line 207
    :cond_1
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 208
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_2

    .line 209
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    invoke-direct {p0, p1, p2, v0}, Lcom/zte/retrieve/http/HttpUtils;->readChunkedDataFromEntity(Landroid/content/Context;Lcom/zte/retrieve/http/HttpResult;Lorg/apache/http/HttpEntity;)V

    .line 217
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/zte/retrieve/http/HttpUtils;->useJson:Z

    if-nez v2, :cond_0

    .line 220
    invoke-virtual {p2}, Lcom/zte/retrieve/http/HttpResult;->getResData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/zte/retrieve/http/HttpResult;->setStatusCode(I)V

    goto :goto_0

    .line 212
    :cond_3
    invoke-direct {p0, p2, v0}, Lcom/zte/retrieve/http/HttpUtils;->readDataFromEntity(Lcom/zte/retrieve/http/HttpResult;Lorg/apache/http/HttpEntity;)V

    goto :goto_1
.end method

.method private setHttpProxy(ZLjava/lang/String;ILorg/apache/http/params/HttpParams;)V
    .locals 1
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"
    .parameter "params"

    .prologue
    .line 306
    if-eqz p1, :cond_0

    .line 307
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p2, p3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {p4, v0}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 309
    :cond_0
    return-void
.end method


# virtual methods
.method public getResponseCode(Ljava/lang/String;)I
    .locals 8
    .parameter "httpsUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 88
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 89
    .local v2, sslContext:Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    new-array v4, v7, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    new-instance v6, Lcom/zte/retrieve/http/MyTrustManager;

    invoke-direct {v6}, Lcom/zte/retrieve/http/MyTrustManager;-><init>()V

    aput-object v6, v4, v5

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 91
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 92
    new-instance v3, Lcom/zte/retrieve/http/MyHostnameVerifier;

    invoke-direct {v3}, Lcom/zte/retrieve/http/MyHostnameVerifier;-><init>()V

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 93
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 94
    .local v0, conn:Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v0, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 95
    invoke-virtual {v0, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 96
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 98
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    .line 99
    .local v1, resCode:I
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 101
    return v1
.end method

.method public httpConnection(Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;)Lcom/zte/retrieve/http/HttpResult;
    .locals 11
    .parameter "httpUtilsParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v2, Lcom/zte/retrieve/http/HttpResult;

    invoke-direct {v2}, Lcom/zte/retrieve/http/HttpResult;-><init>()V

    .line 118
    .local v2, httpResult:Lcom/zte/retrieve/http/HttpResult;
    invoke-virtual {p1}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getUrl()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 119
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "URL must not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->printParams()V

    .line 124
    :try_start_0
    invoke-virtual {p1}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/zte/retrieve/http/HttpUtils;->createHttpObjects(Ljava/lang/String;)Lcom/zte/retrieve/http/HttpObjects;

    move-result-object v1

    .line 126
    .local v1, httpObj:Lcom/zte/retrieve/http/HttpObjects;
    iget-object v7, p0, Lcom/zte/retrieve/http/HttpUtils;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/zte/retrieve/http/HttpObjects;->mHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {p0, v7, v8, p1}, Lcom/zte/retrieve/http/HttpUtils;->getHttpRequest(Landroid/content/Context;Lorg/apache/http/params/HttpParams;Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;)Lorg/apache/http/HttpRequest;

    move-result-object v4

    .line 127
    .local v4, req:Lorg/apache/http/HttpRequest;
    invoke-virtual {p1}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->isProxySet()Z

    move-result v7

    invoke-virtual {p1}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getProxyHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getProxyPort()I

    move-result v9

    .line 128
    iget-object v10, v1, Lcom/zte/retrieve/http/HttpObjects;->mHttpParams:Lorg/apache/http/params/HttpParams;

    .line 127
    invoke-direct {p0, v7, v8, v9, v10}, Lcom/zte/retrieve/http/HttpUtils;->setHttpProxy(ZLjava/lang/String;ILorg/apache/http/params/HttpParams;)V

    .line 130
    iget-object v7, v1, Lcom/zte/retrieve/http/HttpObjects;->mHttpClient:Lorg/apache/http/client/HttpClient;

    iget-object v8, v1, Lcom/zte/retrieve/http/HttpObjects;->mHttpHost:Lorg/apache/http/HttpHost;

    invoke-interface {v7, v8, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 132
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 133
    .local v6, status:Lorg/apache/http/StatusLine;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "HttpUtils_httpConnection:http transaction httpConnection status="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 134
    iget-object v7, p0, Lcom/zte/retrieve/http/HttpUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7, v2, v5, v6}, Lcom/zte/retrieve/http/HttpUtils;->readDataFromServer(Landroid/content/Context;Lcom/zte/retrieve/http/HttpResult;Lorg/apache/http/HttpResponse;Lorg/apache/http/StatusLine;)Lcom/zte/retrieve/http/HttpResult;

    move-result-object v3

    .line 136
    .local v3, httpres:Lcom/zte/retrieve/http/HttpResult;
    iget-object v7, v1, Lcom/zte/retrieve/http/HttpObjects;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 149
    .end local v1           #httpObj:Lcom/zte/retrieve/http/HttpObjects;
    .end local v3           #httpres:Lcom/zte/retrieve/http/HttpResult;
    .end local v4           #req:Lorg/apache/http/HttpRequest;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #status:Lorg/apache/http/StatusLine;
    :goto_0
    return-object v3

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {p1}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v7}, Lcom/zte/retrieve/http/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 149
    .end local v0           #e:Ljava/net/URISyntaxException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {p1}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v7}, Lcom/zte/retrieve/http/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    .line 142
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v7}, Lcom/zte/retrieve/http/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    .line 144
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 145
    .local v0, e:Ljava/net/SocketException;
    invoke-virtual {p1}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v7}, Lcom/zte/retrieve/http/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    .line 146
    .end local v0           #e:Ljava/net/SocketException;
    :catch_4
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v7}, Lcom/zte/retrieve/http/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public writeToCacheFile(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 8
    .parameter "content"
    .parameter "cache"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 373
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 374
    .local v0, buf:Ljava/io/BufferedOutputStream;
    new-array v4, v6, [B

    .line 375
    .local v4, temp:[B
    const/4 v2, 0x0

    .line 376
    .local v2, iCount:I
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 377
    .local v1, dis:Ljava/io/DataInputStream;
    invoke-virtual {v1, v4, v7, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    .line 378
    .local v3, iRead:I
    :goto_0
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 386
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 387
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 388
    return v2

    .line 379
    :cond_0
    invoke-virtual {v0, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 380
    add-int/lit8 v2, v2, 0x1

    .line 382
    const/16 v5, 0x1f40

    if-ne v2, v5, :cond_1

    .line 383
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 384
    :cond_1
    invoke-virtual {v1, v4, v7, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    goto :goto_0
.end method
