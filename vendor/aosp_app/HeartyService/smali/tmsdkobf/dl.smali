.class public final Ltmsdkobf/dl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static jO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Ltmsdkobf/dl;->jO:I

    .line 22
    return-void
.end method

.method private static O()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdkobf/dn;
        }
    .end annotation

    .prologue
    .line 477
    :try_start_0
    invoke-static {}, Ltmsdkobf/dw;->N()Landroid/content/Context;

    move-result-object v2

    .line 478
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 477
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 479
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 480
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 481
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 482
    const-string v2, "wifi"

    .line 489
    :goto_0
    return-object v2

    .line 484
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, netType:Ljava/lang/String;
    invoke-static {v0}, Ltmsdkobf/gf;->as(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
    new-instance v2, Ltmsdkobf/dn;

    invoke-direct {v2}, Ltmsdkobf/dn;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 492
    .end local v0           #netType:Ljava/lang/String;
    :catch_0
    move-exception v2

    new-instance v2, Ltmsdkobf/dn;

    invoke-direct {v2}, Ltmsdkobf/dn;-><init>()V

    throw v2

    .line 489
    .restart local v0       #netType:Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;
    .locals 8
    .parameter "urlStr"
    .parameter "isRetried"

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 56
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .local v0, url:Ljava/net/URL;
    invoke-static {p1}, Ltmsdkobf/dw;->d(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    .end local v0           #url:Ljava/net/URL;
    :goto_0
    return-object v1

    .line 57
    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v1, v2

    .line 59
    goto :goto_0

    .line 66
    .restart local v0       #url:Ljava/net/URL;
    :catch_1
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 68
    goto :goto_0

    .line 73
    :cond_0
    sget v1, Ltmsdkobf/dl;->jO:I

    if-nez v1, :cond_2

    .line 75
    sget-boolean v1, Ltmsdkobf/dl;->a:Z

    if-nez v1, :cond_2

    sput-boolean v3, Ltmsdkobf/dl;->a:Z

    :try_start_2
    new-instance v3, Ljava/net/URL;

    const-string v1, "http://ls.map.soso.com/monitor/monitor.html"

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    if-ne v1, v6, :cond_1

    const/16 v1, 0x50

    :cond_1
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v4, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v1, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :try_start_3
    invoke-virtual {v3, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v3, 0x3a98

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v3, 0xafc8

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v3, "User-Agent"

    const-string v4, "QQ Map Mobile"

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-static {v1}, Ltmsdkobf/dl;->a(Ljava/net/HttpURLConnection;)Z

    move-result v3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    invoke-static {v3}, Ltmsdkobf/dl;->av(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    :cond_2
    :goto_2
    :try_start_5
    sget v1, Ltmsdkobf/dl;->jO:I

    packed-switch v1, :pswitch_data_0

    .line 85
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    if-ne v1, v6, :cond_3

    const/16 v1, 0x50

    :cond_3
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v1, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 75
    :catch_2
    move-exception v1

    sput-boolean v4, Ltmsdkobf/dl;->a:Z

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    :try_start_6
    invoke-static {v3}, Ltmsdkobf/dl;->av(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v3

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x2

    invoke-static {v1}, Ltmsdkobf/dl;->av(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw p0

    .line 82
    :pswitch_0
    :try_start_8
    invoke-static {v0, p0}, Ltmsdkobf/dl;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v1

    goto/16 :goto_0

    .line 87
    :catch_4
    move-exception v1

    .line 88
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 89
    goto/16 :goto_0

    .line 75
    :catchall_1
    move-exception p0

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v1, v3

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v3, v2

    goto :goto_3

    .line 80
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 10
    .parameter "url"
    .parameter "urlStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 530
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    .line 531
    .local v3, proxyHost:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    .line 532
    .local v4, proxyPort:I
    if-ne v4, v9, :cond_0

    .line 533
    const/16 v4, 0x50

    .line 536
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, host:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v2

    .line 538
    .local v2, port:I
    if-ne v2, v9, :cond_1

    .line 539
    const/16 v2, 0x50

    .line 543
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_2

    .line 544
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 551
    .local v5, tempStr:Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .local v6, tempUrl:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 558
    .local v0, conn:Ljava/net/HttpURLConnection;
    const-string v7, "X-Online-Host"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .end local v6           #tempUrl:Ljava/net/URL;
    :goto_1
    return-object v0

    .line 546
    .end local v5           #tempStr:Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #tempStr:Ljava/lang/String;
    goto :goto_0

    .line 553
    :catch_0
    move-exception v7

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Ltmsdkobf/dj;Ljava/net/HttpURLConnection;Z)Ltmsdkobf/dx;
    .locals 13
    .parameter "canceler"
    .parameter "con"
    .parameter "isGetOrPost"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v2, 0x0

    .line 286
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ltmsdkobf/dx;

    invoke-direct {v4}, Ltmsdkobf/dx;-><init>()V

    .line 287
    .local v4, response:Ltmsdkobf/dx;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, contentType:Ljava/lang/String;
    const-string v7, "GBK"

    if-eqz v0, :cond_0

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v10, :cond_a

    :cond_0
    :goto_1
    iput-object v7, v4, Ltmsdkobf/dx;->jP:Ljava/lang/String;

    .line 289
    if-eqz p2, :cond_3

    .line 290
    if-eqz v0, :cond_c

    const-string v7, "vnd.wap.wml"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_3

    .line 291
    if-eqz p0, :cond_1

    .line 292
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 295
    if-eqz p0, :cond_2

    .line 296
    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 299
    if-eqz p0, :cond_3

    .line 300
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 306
    if-eqz p0, :cond_4

    .line 307
    :cond_4
    if-eqz v2, :cond_8

    .line 311
    const/4 v7, 0x0

    new-array v7, v7, [B

    iput-object v7, v4, Ltmsdkobf/dx;->jR:[B

    .line 312
    const/4 v6, 0x0

    .line 313
    .local v6, total:I
    const/16 v7, 0x400

    new-array v1, v7, [B

    .line 316
    .local v1, data_atime:[B
    :cond_5
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 317
    .local v3, len:I
    if-lez v3, :cond_6

    .line 318
    add-int/2addr v6, v3

    .line 319
    new-array v5, v6, [B

    .line 320
    .local v5, temp:[B
    iget-object v7, v4, Ltmsdkobf/dx;->jR:[B

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v4, Ltmsdkobf/dx;->jR:[B

    array-length v10, v10

    invoke-static {v7, v8, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    const/4 v7, 0x0

    iget-object v8, v4, Ltmsdkobf/dx;->jR:[B

    array-length v8, v8

    invoke-static {v1, v7, v5, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    iput-object v5, v4, Ltmsdkobf/dx;->jR:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    .end local v5           #temp:[B
    :cond_6
    if-eqz p0, :cond_7

    .line 325
    :cond_7
    if-gtz v3, :cond_5

    .line 331
    .end local v1           #data_atime:[B
    .end local v3           #len:I
    .end local v6           #total:I
    :cond_8
    if-eqz v2, :cond_9

    .line 333
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 329
    :cond_9
    :goto_3
    return-object v4

    .line 288
    :cond_a
    :try_start_2
    aget-object v11, v9, v8

    const-string v12, "charset"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    const-string v8, "="

    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    const/4 v7, 0x1

    aget-object v7, v8, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    goto :goto_1

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 290
    :cond_c
    const/4 v7, 0x0

    goto :goto_2

    .line 330
    .end local v0           #contentType:Ljava/lang/String;
    .end local v4           #response:Ltmsdkobf/dx;
    :catchall_0
    move-exception v7

    .line 331
    if-eqz v2, :cond_d

    .line 333
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 337
    :cond_d
    :goto_4
    throw v7

    .restart local v0       #contentType:Ljava/lang/String;
    .restart local v4       #response:Ltmsdkobf/dx;
    :catch_0
    move-exception v7

    goto :goto_3

    .end local v0           #contentType:Ljava/lang/String;
    .end local v4           #response:Ltmsdkobf/dx;
    :catch_1
    move-exception v8

    goto :goto_4
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZLtmsdkobf/dj;)Ltmsdkobf/dx;
    .locals 10
    .parameter "isGetOrPost"
    .parameter "url"
    .parameter "userAgent"
    .parameter "host"
    .parameter "postData"
    .parameter "keepAlive"
    .parameter "isRetried"
    .parameter "canceler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Ltmsdkobf/dl;->O()Ljava/lang/String;

    .line 157
    const/4 v1, 0x0

    .line 160
    .local v1, con:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 162
    .local v3, out:Ljava/io/DataOutputStream;
    :try_start_0
    move/from16 v0, p6

    invoke-static {p1, v0}, Ltmsdkobf/dl;->a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 164
    if-eqz p7, :cond_0

    .line 167
    :cond_0
    invoke-static {p3}, Ltmsdkobf/gf;->as(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 172
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p3

    .line 173
    invoke-static {p3}, Ltmsdkobf/gf;->as(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 180
    :cond_1
    :goto_0
    if-eqz p0, :cond_e

    .line 181
    const-string v7, "GET"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 185
    :goto_1
    invoke-static {}, Ltmsdkobf/dv;->R()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 186
    invoke-static {}, Ltmsdkobf/dv;->Y()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 187
    const-string v7, "User-Agent"

    invoke-virtual {v1, v7, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 189
    if-eqz p0, :cond_f

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 190
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 191
    if-eqz p5, :cond_2

    .line 192
    const-string v7, "Connection"

    const-string v8, "Keep-Alive"

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_2
    if-eqz p7, :cond_3

    .line 195
    :cond_3
    invoke-static {v1}, Ltmsdkobf/dv;->b(Ljava/net/HttpURLConnection;)V

    .line 199
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 200
    invoke-static {}, Ltmsdkobf/dv;->Q()V

    .line 201
    if-eqz p7, :cond_4

    .line 202
    :cond_4
    if-nez p0, :cond_5

    if-eqz p4, :cond_5

    array-length v7, p4

    if-eqz v7, :cond_5

    .line 206
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ltmsdkobf/di; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltmsdkobf/dk; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 207
    .end local v3           #out:Ljava/io/DataOutputStream;
    .local v4, out:Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual {v4, p4}, Ljava/io/DataOutputStream;->write([B)V

    .line 208
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 209
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ltmsdkobf/di; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ltmsdkobf/dk; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 210
    const/4 v3, 0x0

    .line 212
    .end local v4           #out:Ljava/io/DataOutputStream;
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :cond_5
    if-eqz p7, :cond_6

    .line 213
    :cond_6
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 217
    .local v5, rc:I
    if-eqz p7, :cond_7

    .line 218
    :cond_7
    const/16 v7, 0xc8

    if-eq v5, v7, :cond_8

    .line 222
    const/16 v7, 0xce

    if-ne v5, v7, :cond_11

    .line 223
    :cond_8
    invoke-static {}, Ltmsdkobf/dv;->U()V

    .line 224
    move-object/from16 v0, p7

    invoke-static {v0, v1, p0}, Ltmsdkobf/dl;->a(Ltmsdkobf/dj;Ljava/net/HttpURLConnection;Z)Ltmsdkobf/dx;

    move-result-object v6

    .line 225
    .local v6, response:Ltmsdkobf/dx;
    if-eqz v6, :cond_10

    iget-object v7, v6, Ltmsdkobf/dx;->jR:[B

    if-eqz v7, :cond_10

    iget-object v7, v6, Ltmsdkobf/dx;->jR:[B

    array-length v7, v7

    :goto_3
    invoke-static {v7}, Ltmsdkobf/dv;->av(I)V

    .line 227
    if-eqz p7, :cond_9

    .line 228
    :cond_9
    iget-object v7, v6, Ltmsdkobf/dx;->jR:[B

    array-length v7, v7

    int-to-float v7, v7

    invoke-static {v7}, Ltmsdkobf/dw;->a(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ltmsdkobf/di; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ltmsdkobf/dk; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 267
    if-eqz v1, :cond_a

    .line 271
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    :cond_a
    return-object v6

    .line 177
    .end local v5           #rc:I
    .end local v6           #response:Ltmsdkobf/dx;
    :cond_b
    :try_start_3
    const-string v7, "Host"

    invoke-virtual {v1, v7, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ltmsdkobf/di; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ltmsdkobf/dk; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 248
    :catch_0
    move-exception v2

    .line 249
    .local v2, e:Ltmsdkobf/di;
    :goto_4
    const/4 v7, 0x1

    :try_start_4
    invoke-static {v7}, Ltmsdkobf/dv;->c(Z)V

    .line 251
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 266
    .end local v2           #e:Ltmsdkobf/di;
    :catchall_0
    move-exception v7

    .line 267
    :goto_5
    if-eqz v3, :cond_c

    .line 268
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 270
    :cond_c
    if-eqz v1, :cond_d

    .line 271
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    :cond_d
    throw v7

    .line 183
    :cond_e
    :try_start_5
    const-string v7, "POST"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ltmsdkobf/di; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ltmsdkobf/dk; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 252
    :catch_1
    move-exception v2

    .line 253
    .local v2, e:Ltmsdkobf/dk;
    :goto_6
    const/4 v7, 0x1

    :try_start_6
    invoke-static {v7}, Ltmsdkobf/dv;->c(Z)V

    .line 255
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 189
    .end local v2           #e:Ltmsdkobf/dk;
    :cond_f
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 226
    .restart local v5       #rc:I
    .restart local v6       #response:Ltmsdkobf/dx;
    :cond_10
    const/4 v7, 0x0

    goto :goto_3

    .line 234
    .end local v6           #response:Ltmsdkobf/dx;
    :cond_11
    const/16 v7, 0xca

    if-eq v5, v7, :cond_12

    .line 235
    const/16 v7, 0xc9

    if-eq v5, v7, :cond_12

    .line 236
    const/16 v7, 0xcc

    if-eq v5, v7, :cond_12

    .line 237
    const/16 v7, 0xcd

    if-eq v5, v7, :cond_12

    .line 238
    const/16 v7, 0x130

    if-eq v5, v7, :cond_12

    .line 239
    const/16 v7, 0x131

    if-eq v5, v7, :cond_12

    .line 240
    const/16 v7, 0x198

    if-eq v5, v7, :cond_12

    .line 241
    const/16 v7, 0x1f6

    if-eq v5, v7, :cond_12

    .line 242
    const/16 v7, 0x1f8

    if-eq v5, v7, :cond_12

    .line 243
    const/16 v7, 0x1f7

    if-ne v5, v7, :cond_14

    .line 244
    :cond_12
    :try_start_7
    new-instance v7, Ljava/io/IOException;

    const-string v8, "doGetOrPost retry"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ltmsdkobf/di; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ltmsdkobf/dk; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 256
    .end local v5           #rc:I
    :catch_2
    move-exception v2

    .line 257
    .local v2, e:Ljava/lang/Exception;
    :goto_7
    if-eqz p7, :cond_13

    .line 258
    :cond_13
    const/4 v7, 0x0

    :try_start_8
    invoke-static {v7}, Ltmsdkobf/dv;->c(Z)V

    .line 265
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 246
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #rc:I
    :cond_14
    :try_start_9
    new-instance v7, Ltmsdkobf/dk;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "response code is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ltmsdkobf/dk;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ltmsdkobf/di; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ltmsdkobf/dk; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 266
    .end local v3           #out:Ljava/io/DataOutputStream;
    .end local v5           #rc:I
    .restart local v4       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #out:Ljava/io/DataOutputStream;
    .restart local v3       #out:Ljava/io/DataOutputStream;
    goto :goto_5

    .line 256
    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v4       #out:Ljava/io/DataOutputStream;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4           #out:Ljava/io/DataOutputStream;
    .restart local v3       #out:Ljava/io/DataOutputStream;
    goto :goto_7

    .line 252
    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v4       #out:Ljava/io/DataOutputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #out:Ljava/io/DataOutputStream;
    .restart local v3       #out:Ljava/io/DataOutputStream;
    goto :goto_6

    .line 248
    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v4       #out:Ljava/io/DataOutputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #out:Ljava/io/DataOutputStream;
    .restart local v3       #out:Ljava/io/DataOutputStream;
    goto :goto_4
.end method

.method private static a(Ljava/net/HttpURLConnection;)Z
    .locals 5
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    const/4 v1, 0x0

    .line 447
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 448
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 451
    const-string v4, "text/html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 464
    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 452
    :cond_0
    const/4 v2, 0x0

    .line 462
    :cond_1
    :goto_0
    return v2

    .line 455
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 456
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    if-gtz v3, :cond_3

    .line 460
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 461
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 462
    .local v2, isValidate:Z
    if-eqz v1, :cond_1

    .line 465
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 457
    .end local v2           #isValidate:Z
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 463
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v3

    .line 464
    if-eqz v1, :cond_4

    .line 465
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 467
    :cond_4
    throw v3
.end method

.method private static av(I)V
    .locals 1
    .parameter "wapApproach"

    .prologue
    .line 368
    sget v0, Ltmsdkobf/dl;->jO:I

    if-ne v0, p0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 371
    :cond_0
    sput p0, Ltmsdkobf/dl;->jO:I

    goto :goto_0
.end method
