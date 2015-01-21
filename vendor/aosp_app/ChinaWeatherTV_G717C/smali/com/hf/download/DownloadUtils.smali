.class public Lcom/hf/download/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileSizeWithURL(Landroid/content/Context;Ljava/lang/String;)I
    .locals 12
    .parameter "context"
    .parameter "urlStr"

    .prologue
    .line 19
    const/4 v6, 0x0

    .line 20
    .local v6, size:I
    const/4 v2, 0x0

    .line 23
    .local v2, http:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 25
    .local v7, url:Ljava/net/URL;
    invoke-static {p0}, Lcom/hf/utils/Util;->getNetworkType(Landroid/content/Context;)I

    move-result v3

    .line 26
    .local v3, netType:I
    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    .line 27
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, proxyHost:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 29
    new-instance v4, Ljava/net/Proxy;

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v9, Ljava/net/InetSocketAddress;

    .line 30
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v11

    invoke-direct {v9, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 29
    invoke-direct {v4, v8, v9}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 31
    .local v4, proxy:Ljava/net/Proxy;
    invoke-virtual {v7, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 38
    .end local v4           #proxy:Ljava/net/Proxy;
    .end local v5           #proxyHost:Ljava/lang/String;
    :goto_0
    const/16 v8, 0x1388

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 39
    const-string v8, "GET"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 43
    const-string v8, "Charset"

    const-string v9, "UTF-8"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v8, "Connection"

    const-string v9, "Keep-Alive"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 47
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_3

    .line 48
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 58
    :goto_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 61
    .end local v3           #netType:I
    .end local v7           #url:Ljava/net/URL;
    :goto_2
    if-nez v6, :cond_0

    .line 62
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x4130000100000000L

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4140

    add-double/2addr v8, v10

    double-to-int v6, v8

    .line 66
    :cond_0
    return v6

    .line 33
    .restart local v3       #netType:I
    .restart local v5       #proxyHost:Ljava/lang/String;
    .restart local v7       #url:Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 35
    goto :goto_0

    .line 36
    .end local v5           #proxyHost:Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 50
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 52
    .end local v3           #netType:I
    .end local v7           #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 53
    .local v1, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 54
    :try_start_2
    sget-boolean v8, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v8, :cond_4

    .line 55
    const-string v8, "Exception"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :cond_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 57
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 58
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 59
    throw v8
.end method
