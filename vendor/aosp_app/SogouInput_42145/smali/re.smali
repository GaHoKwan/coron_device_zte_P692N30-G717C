.class final Lre;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lqy;


# direct methods
.method private constructor <init>(Lqy;)V
    .locals 0
    .parameter

    .prologue
    .line 1481
    iput-object p1, p0, Lre;->a:Lqy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lqy;Lcom/sohu/inputmethod/internet/BackgroundService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1481
    invoke-direct {p0, p1}, Lre;-><init>(Lqy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1484
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1485
    iget-object v0, p0, Lre;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1486
    const-string v1, "DictThread"

    invoke-virtual {v0, v6, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    .line 1487
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1489
    :cond_0
    :goto_0
    iget-object v0, p0, Lre;->a:Lqy;

    invoke-static {v0}, Lqy;->c(Lqy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1492
    iget-object v0, p0, Lre;->a:Lqy;

    invoke-static {v0}, Lqy;->c(Lqy;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1493
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1494
    iget-object v0, p0, Lre;->a:Lqy;

    invoke-static {v0}, Lqy;->c(Lqy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 1495
    iget v7, v0, Lsg;->b:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_1

    .line 1496
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1504
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1499
    :cond_2
    :try_start_1
    iget-object v0, p0, Lre;->a:Lqy;

    invoke-static {v0, v3}, Lqy;->a(Lqy;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1500
    iget-object v0, p0, Lre;->a:Lqy;

    invoke-static {v0}, Lqy;->c(Lqy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1501
    iget-object v0, p0, Lre;->a:Lqy;

    invoke-static {v0}, Lqy;->c(Lqy;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 1502
    iget v3, v0, Lsg;->b:I

    and-int/lit8 v3, v3, 0x4

    iput v3, v0, Lsg;->b:I

    move-object v7, v0

    .line 1504
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1505
    if-eqz v7, :cond_0

    .line 1506
    iget-object v0, v7, Lsg;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, v7, Lsg;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1508
    :cond_3
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v9}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 1510
    :try_start_2
    iget-object v0, v7, Lsg;->b:Ljava/lang/String;

    const-string v1, " "

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1511
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v9, v1}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1516
    :goto_3
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lre;->a:Lqy;

    invoke-static {v1}, Lqy;->a(Lqy;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v1

    invoke-virtual {v1}, Lsa;->a()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 1517
    iget-object v1, p0, Lre;->a:Lqy;

    invoke-static {v1}, Lqy;->a(Lqy;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v1

    invoke-virtual {v1, v9}, Lsa;->a(Lorg/apache/http/client/methods/HttpGet;)V

    .line 1523
    :try_start_3
    invoke-interface {v0, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1524
    new-instance v10, Ljava/io/File;

    iget-object v0, v7, Lsg;->c:Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1525
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1526
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 1529
    :cond_4
    const-string v0, "Content-Length"

    invoke-interface {v1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1530
    const-string v0, "Content-Length"

    invoke-interface {v1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1533
    :goto_4
    if-eqz v0, :cond_9

    .line 1534
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    .line 1535
    :try_start_4
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1536
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    invoke-direct {v1, v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1537
    const/16 v0, 0x400

    :try_start_6
    new-array v11, v0, [B

    move v0, v5

    .line 1541
    :goto_5
    iget v12, v7, Lsg;->b:I

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_5

    const/4 v12, 0x0

    const/16 v13, 0x400

    invoke-virtual {v3, v11, v12, v13}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    .line 1542
    const/4 v13, 0x0

    invoke-virtual {v1, v11, v13, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1543
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1544
    add-int/2addr v0, v12

    goto :goto_5

    .line 1513
    :catch_0
    move-exception v0

    .line 1514
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_3

    .line 1546
    :cond_5
    :try_start_7
    iget v0, v7, Lsg;->b:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_8

    .line 1547
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1548
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move v0, v5

    .line 1553
    :goto_6
    iget-boolean v9, v7, Lsg;->a:Z

    if-ne v9, v6, :cond_6

    if-ne v0, v6, :cond_6

    .line 1554
    invoke-static {}, Lrf;->a()Lrf;

    move-result-object v0

    invoke-virtual {v0, v7}, Lrf;->a(Lsg;)V

    .line 1557
    :cond_6
    iget-object v0, p0, Lre;->a:Lqy;

    invoke-static {v0}, Lqy;->c(Lqy;)Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1558
    :try_start_8
    iget v0, v7, Lsg;->b:I

    and-int/lit8 v0, v0, 0x8

    iput v0, v7, Lsg;->b:I

    .line 1559
    iget-object v0, p0, Lre;->a:Lqy;

    invoke-static {v0}, Lqy;->c(Lqy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1560
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1566
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1567
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1568
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1569
    :goto_7
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 1560
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 1561
    :catch_1
    move-exception v0

    .line 1562
    :goto_8
    :try_start_b
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 1566
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1567
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1568
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_7

    .line 1563
    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    .line 1564
    :goto_9
    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 1566
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1567
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1568
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_7

    .line 1566
    :catchall_2
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_a
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1567
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1568
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1569
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1566
    throw v0

    .line 1575
    :cond_7
    iget-object v0, p0, Lre;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)[Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1

    .line 1576
    :try_start_d
    iget-object v0, p0, Lre;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)[Ljava/lang/Thread;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 1577
    monitor-exit v1

    .line 1579
    return-void

    .line 1577
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v0

    .line 1566
    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_a

    :catchall_5
    move-exception v0

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object v2, v1

    goto :goto_a

    .line 1563
    :catch_3
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_9

    .line 1561
    :catch_6
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_8

    :catch_8
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :cond_8
    move v0, v6

    goto/16 :goto_6

    :cond_9
    move v0, v6

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_6

    :cond_a
    move v0, v5

    goto/16 :goto_4

    :cond_b
    move-object v7, v2

    goto/16 :goto_2
.end method
