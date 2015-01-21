.class public Lcom/farben/faq/common/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/farben/faq/common/f;->a:Z

    const-class v0, Lcom/farben/faq/common/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Landroid/app/Activity;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "&rt="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u53d1\u9001\u6570\u636e\u8bf7\u6c42\u5730\u5740:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v0, "PHONEAGENT"

    invoke-static {p2}, Lcom/farben/faq/common/a;->i(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IMEI"

    invoke-static {p2}, Lcom/farben/faq/common/a;->h(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VERSION"

    invoke-static {p2}, Lcom/farben/faq/common/a;->g(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "INNERVERSION"

    invoke-static {p2}, Lcom/farben/faq/common/a;->f(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    invoke-static {p1}, Lcom/farben/faq/common/f;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    invoke-static {p2}, Lcom/farben/faq/common/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/net/Proxy;

    invoke-direct {v0}, Landroid/net/Proxy;-><init>()V

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v7

    invoke-direct {v0, v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :goto_1
    const-string v6, "http.route.default-proxy"

    invoke-interface {v5, v6, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string v0, "\u53d1\u9001\u6570\u636e\u65f6\u63a5\u5165\u65b9\u5f0f\uff1a WAP"

    sget-object v6, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/16 v0, 0x1770

    invoke-static {v5, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v0, 0x2710

    invoke-static {v5, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-interface {v4, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4e0b\u8f7d\u65f6\u54cd\u5e94\u7801:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_5

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    invoke-static {v4}, Lcom/farben/faq/common/f;->a([Lorg/apache/http/Header;)Z

    move-result v4

    if-nez v4, :cond_4

    :goto_3
    return-object v1

    :cond_1
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v6, "10.0.0.172"

    const/16 v7, 0x50

    invoke-direct {v0, v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u53d1\u9001\u6570\u636e\u65f6\u51fa\u9519\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v4, v0, v5}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    instance-of v4, v0, Ljava/net/SocketTimeoutException;

    if-nez v4, :cond_2

    instance-of v0, v0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_5

    :cond_2
    add-int/lit8 v0, v2, 0x1

    const/4 v2, 0x3

    if-gt v0, v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\u53d1\u9001\u6570\u636e\u65f6\u8bf7\u6c42\u5931\u8d25\u8d85\u65f6,\u91cd\u65b0\u8bf7\u6c42\u6b21\u6570"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/farben/faq/common/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string v0, "\u53d1\u9001\u6570\u636e\u65f6\u63a5\u5165\u65b9\u5f0f\uff1a \u975e WAP"

    sget-object v6, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u53d1\u9001\u6570\u636e\u65f6\u54cd\u5e94\u7ed3\u679c\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    move-object v1, v0

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_4
.end method

.method private static a(Ljava/util/Map;)Ljava/util/List;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 12

    const/4 v3, 0x0

    const/4 v11, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    move v6, v2

    move-object v4, v3

    :goto_0
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/farben/faq/common/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/net/Proxy;

    invoke-direct {v0}, Landroid/net/Proxy;-><init>()V

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    if-eq v0, v11, :cond_1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/net/Proxy;

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v10

    invoke-direct {v8, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v7, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :goto_1
    invoke-virtual {v5, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v5, "\u53d1\u9001\u6570\u636e\u65f6\u63a5\u5165\u65b9\u5f0f\uff1aWAP"

    sget-object v7, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/16 v5, 0x1770

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u4e0b\u8f7d\u65f6\u54cd\u5e94\u7801:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xc8

    if-ne v5, v7, :cond_c

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    :goto_3
    invoke-virtual {v5, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-ne v3, v11, :cond_7

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    :cond_0
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v1

    :goto_5
    return v0

    :cond_1
    :try_start_4
    new-instance v0, Ljava/net/Proxy;

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v8, Ljava/net/InetSocketAddress;

    const-string v9, "10.0.0.172"

    const/16 v10, 0x50

    invoke-direct {v8, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v7, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_6
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "\u83b7\u53d6\u5e7f\u544a\u51fa\u9519:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v5, v0, v7}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    instance-of v5, v0, Ljava/net/SocketTimeoutException;

    if-nez v5, :cond_2

    instance-of v0, v0, Lorg/apache/http/conn/ConnectTimeoutException;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_a

    :cond_2
    add-int/lit8 v5, v6, 0x1

    const/4 v0, 0x3

    if-le v5, v0, :cond_8

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    :cond_3
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move v0, v2

    goto :goto_5

    :cond_4
    :try_start_7
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v5, "\u53d1\u9001\u6570\u636e\u65f6\u63a5\u5165\u65b9\u5f0f\uff1a \u975e WAP"

    sget-object v7, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v3, :cond_5

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_6
    :goto_8
    throw v0

    :cond_7
    const/4 v7, 0x0

    :try_start_9
    invoke-virtual {v4, v0, v7, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    goto :goto_6

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v0, v1

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v0, v2

    goto :goto_5

    :cond_8
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "\u83b7\u53d6\u5e7f\u544a\u51fa\u9519\u65f6\u8bf7\u6c42\u5931\u8d25\u8d85\u65f6,\u91cd\u65b0\u8bf7\u6c42\u6b21\u6570"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/farben/faq/common/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v3, :cond_9

    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    :cond_9
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    move v6, v5

    goto/16 :goto_0

    :cond_a
    if-eqz v3, :cond_b

    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    :cond_b
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    move v0, v2

    goto/16 :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_5

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v6, v0, v7}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v6, v5

    goto/16 :goto_0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object v4, v5

    goto/16 :goto_7

    :catch_7
    move-exception v0

    move-object v4, v5

    goto/16 :goto_6

    :cond_c
    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_4

    :cond_d
    move v6, v5

    goto/16 :goto_0

    :cond_e
    move v0, v2

    goto/16 :goto_5

    :cond_f
    move v0, v1

    goto/16 :goto_5
.end method

.method private static a([Lorg/apache/http/Header;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_6

    array-length v1, p0

    if-lez v1, :cond_6

    array-length v5, p0

    move v4, v2

    move-object v1, v0

    :goto_0
    if-lt v4, v5, :cond_2

    :goto_1
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v0, :cond_5

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ErrorCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "FaqStateCode:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_2
    return v0

    :cond_2
    aget-object v6, p0, v4

    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ErrorCode"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FAQStateCode"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;)[Ljava/lang/String;
    .locals 12

    const/4 v10, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "&rt="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bf7\u6c42\u5730\u5740:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v1, "PHONEAGENT"

    invoke-static {p1}, Lcom/farben/faq/common/a;->i(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IMEI"

    invoke-static {p1}, Lcom/farben/faq/common/a;->h(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VERSION"

    invoke-static {p1}, Lcom/farben/faq/common/a;->g(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "INNERVERSION"

    invoke-static {p1}, Lcom/farben/faq/common/a;->f(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    :goto_0
    :try_start_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    invoke-static {p1}, Lcom/farben/faq/common/a;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Landroid/net/Proxy;

    invoke-direct {v3}, Landroid/net/Proxy;-><init>()V

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    if-eq v3, v10, :cond_1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "\u4ee3\u7406host="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ";port="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v8

    invoke-direct {v3, v7, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :goto_1
    const-string v7, "http.route.default-proxy"

    invoke-interface {v5, v7, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string v3, "\u8bf7\u6c42\u6570\u636e\u65f6\u63a5\u5165\u65b9\u5f0f\uff1a WAP"

    sget-object v7, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/16 v3, 0x1770

    invoke-static {v5, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v3, 0x2710

    invoke-static {v5, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-interface {v4, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4e0b\u8f7d\u65f6\u54cd\u5e94\u7801:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_11

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-static {v3}, Lcom/farben/faq/common/f;->a([Lorg/apache/http/Header;)Z

    move-result v3

    if-nez v3, :cond_8

    :goto_3
    return-object v2

    :cond_1
    new-instance v3, Lorg/apache/http/HttpHost;

    const-string v7, "10.0.0.172"

    const/16 v8, 0x50

    invoke-direct {v3, v7, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v4, v2

    move-object v5, v2

    :goto_4
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u83b7\u53d6\u6570\u636e\u65f6\u51fa\u9519:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v7, v3, v8}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    instance-of v7, v3, Ljava/net/SocketTimeoutException;

    if-nez v7, :cond_2

    instance-of v3, v3, Lorg/apache/http/conn/ConnectTimeoutException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_f

    :cond_2
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x3

    if-le v0, v3, :cond_d

    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_4
    :goto_5
    move-object v2, v1

    goto :goto_3

    :cond_5
    :try_start_3
    const-string v3, "\u53d1\u9001\u6570\u636e\u65f6\u63a5\u5165\u65b9\u5f0f\uff1a \u975e WAP"

    sget-object v7, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v2

    :goto_6
    if-eqz v2, :cond_6

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_7
    :goto_7
    throw v0

    :cond_8
    :try_start_5
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_11

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    const/16 v3, 0x400

    :try_start_7
    new-array v3, v3, [B

    :goto_8
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v5, v3, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    if-ne v8, v10, :cond_c

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([B)V

    const/4 v8, 0x0

    aput-object v1, v3, v8

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u54cd\u5e94\u7ed3\u679c\uff1a"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "currenttime"

    invoke-interface {v7, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-object v1, v1, v8

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "\u54cd\u5e94\u66f4\u65b0\u65f6\u95f4\uff1a"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :cond_9
    move-object v1, v3

    :cond_a
    :goto_9
    if-eqz v4, :cond_b

    :try_start_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_b
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5173\u95ed\u6d41\u65f6\u51fa\u9519:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    const/4 v9, 0x0

    :try_start_a
    invoke-virtual {v4, v3, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_8

    :catch_2
    move-exception v3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5173\u95ed\u6d41\u65f6\u51fa\u9519:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "\u83b7\u53d6\u6570\u636e\u65f6\u8bf7\u6c42\u5931\u8d25\u8d85\u65f6,\u91cd\u65b0\u8bf7\u6c42\u6b21\u6570"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/farben/faq/common/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v4, :cond_e

    :try_start_c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_e
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5173\u95ed\u6d41\u65f6\u51fa\u9519:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    if-eqz v4, :cond_10

    :try_start_d
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_10
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_5

    :catch_5
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5173\u95ed\u6d41\u65f6\u51fa\u9519:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_6
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5173\u95ed\u6d41\u65f6\u51fa\u9519:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/farben/faq/common/f;->b:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v4

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    goto/16 :goto_6

    :catch_7
    move-exception v1

    move-object v11, v1

    move-object v1, v3

    move-object v3, v11

    goto/16 :goto_4

    :catch_8
    move-exception v3

    move-object v4, v2

    goto/16 :goto_4

    :cond_11
    move-object v4, v2

    move-object v5, v2

    goto/16 :goto_9
.end method
