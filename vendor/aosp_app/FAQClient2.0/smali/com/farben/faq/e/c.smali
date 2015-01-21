.class final Lcom/farben/faq/e/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/farben/faq/e/a;


# direct methods
.method constructor <init>(Lcom/farben/faq/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)J
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v4, v0

    :goto_0
    const/4 v0, 0x3

    if-lt v4, v0, :cond_1

    move-wide v0, v1

    :cond_0
    :goto_1
    return-wide v0

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {v0}, Lcom/farben/faq/e/a;->i(Lcom/farben/faq/e/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/farben/faq/common/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/net/Proxy;

    invoke-direct {v0}, Landroid/net/Proxy;-><init>()V

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v9

    invoke-direct {v7, v8, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v6, v7}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :goto_2
    invoke-virtual {v5, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "\u8f6f\u4ef6\u5305\u5347\u7ea7\u65f6\u63a5\u5165\u70b9\u4e3a:WAP"

    invoke-static {}, Lcom/farben/faq/e/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v0

    :goto_3
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    int-to-long v0, v0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :cond_2
    :try_start_3
    new-instance v0, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v7, Ljava/net/InetSocketAddress;

    const-string v8, "10.0.0.172"

    const/16 v9, 0x50

    invoke-direct {v7, v8, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v6, v7}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_4
    add-int/lit8 v3, v4, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v4, v3

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    const-string v3, "\u8f6f\u4ef6\u5305\u5347\u7ea7\u65f6\u63a5\u5165\u70b9\u4e3a:\u975eWAP"

    invoke-static {}, Lcom/farben/faq/e/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v3, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_5

    :catch_1
    move-exception v3

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v0, v3

    goto :goto_4

    :cond_5
    move v4, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 17

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {v1}, Lcom/farben/faq/e/a;->g(Lcom/farben/faq/e/a;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "faqclient.apk"

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {v1}, Lcom/farben/faq/e/a;->h(Lcom/farben/faq/e/a;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/farben/faq/e/c;->a(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u6253\u5370\u4e0b\u8f7d\u5730\u5740:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {v7}, Lcom/farben/faq/e/a;->h(Lcom/farben/faq/e/a;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-wide v5

    :cond_0
    cmp-long v7, v5, v10

    if-nez v7, :cond_4

    const/4 v1, 0x1

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/farben/faq/e/a;->a(Lcom/farben/faq/e/a;I[F)V

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/farben/faq/e/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    cmp-long v7, v10, v5

    if-gez v7, :cond_18

    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-wide/16 v5, 0x0

    move-wide v6, v5

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    const-wide/16 v12, 0x0

    invoke-static {v1, v12, v13}, Lcom/farben/faq/e/a;->a(Lcom/farben/faq/e/a;J)V

    new-instance v5, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {v1}, Lcom/farben/faq/e/a;->h(Lcom/farben/faq/e/a;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {v1}, Lcom/farben/faq/e/a;->i(Lcom/farben/faq/e/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/farben/faq/common/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Landroid/net/Proxy;

    invoke-direct {v1}, Landroid/net/Proxy;-><init>()V

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    const/4 v12, -0x1

    if-eq v1, v12, :cond_9

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/net/Proxy;

    sget-object v12, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v13, Ljava/net/InetSocketAddress;

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v15

    invoke-direct {v13, v14, v15}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v12, v13}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :goto_3
    invoke-virtual {v5, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    const-string v2, "\u8f6f\u4ef6\u5305\u5347\u7ea7\u65f6\u63a5\u5165\u70b9\u4e3a:WAP"

    invoke-static {}, Lcom/farben/faq/e/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    move-object v2, v1

    :goto_4
    :try_start_4
    const-string v1, "User-Agent"

    const-string v5, "NetFox"

    invoke-virtual {v2, v1, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RANGE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "bytes="

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "-"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1770

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x2710

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {v4}, Lcom/farben/faq/e/a;->g(Lcom/farben/faq/e/a;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_5
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v4, v9, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    :try_start_6
    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {v1, v6, v7}, Lcom/farben/faq/e/a;->b(Lcom/farben/faq/e/a;J)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/farben/faq/e/a;->c(Lcom/farben/faq/e/a;J)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u5f00\u59cb\u4e0b\u8f7d\u65f6\u95f4:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {v3}, Lcom/farben/faq/e/a;->e(Lcom/farben/faq/e/a;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/farben/faq/e/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {v1, v10, v11}, Lcom/farben/faq/e/a;->d(Lcom/farben/faq/e/a;J)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u6587\u4ef6\u957f\u5ea6:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {v3}, Lcom/farben/faq/e/a;->d(Lcom/farben/faq/e/a;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/farben/faq/e/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {v3}, Lcom/farben/faq/e/a;->a(Lcom/farben/faq/e/a;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result v3

    if-eqz v3, :cond_b

    const-wide/16 v6, 0x3e8

    :try_start_7
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_1
    move-exception v3

    :try_start_8
    const-string v6, "DownloadTask"

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    :goto_6
    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5347\u7ea7\u5305\u4e0b\u8f7d\u5931\u8d25:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/farben/faq/e/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    instance-of v5, v1, Ljava/net/SocketTimeoutException;

    if-nez v5, :cond_6

    instance-of v1, v1, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v1, :cond_15

    :cond_6
    add-int/lit8 v5, v8, 0x1

    const/4 v1, 0x3

    if-le v5, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {v1}, Lcom/farben/faq/e/a;->j(Lcom/farben/faq/e/a;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v1, 0x3

    if-eqz v2, :cond_7

    :try_start_a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_8
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/farben/faq/e/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    :try_start_b
    new-instance v1, Ljava/net/Proxy;

    sget-object v12, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v13, Ljava/net/InetSocketAddress;

    const-string v14, "10.0.0.172"

    const/16 v15, 0x50

    invoke-direct {v13, v14, v15}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v12, v13}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto/16 :goto_3

    :catch_4
    move-exception v1

    goto :goto_6

    :cond_a
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :try_start_c
    const-string v2, "\u8f6f\u4ef6\u5305\u5347\u7ea7\u65f6\u63a5\u5165\u70b9\u4e3a:\u975eWAP"

    invoke-static {}, Lcom/farben/faq/e/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    move-object v2, v1

    goto/16 :goto_4

    :cond_b
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {v3}, Lcom/farben/faq/e/a;->b(Lcom/farben/faq/e/a;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v1, "\u4e0b\u8f7d\u7ebf\u7a0b\u9000\u51fa"

    invoke-static {}, Lcom/farben/faq/e/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    :cond_c
    const/4 v1, 0x1

    if-eqz v2, :cond_d

    :try_start_e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/farben/faq/e/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const/4 v3, 0x0

    const/16 v6, 0x400

    :try_start_f
    invoke-virtual {v5, v1, v3, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {v6}, Lcom/farben/faq/e/a;->f(Lcom/farben/faq/e/a;)J

    move-result-wide v12

    int-to-long v14, v3

    add-long/2addr v12, v14

    invoke-static {v6, v12, v13}, Lcom/farben/faq/e/a;->a(Lcom/farben/faq/e/a;J)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {v6}, Lcom/farben/faq/e/a;->c(Lcom/farben/faq/e/a;)J

    move-result-wide v12

    int-to-long v14, v3

    add-long/2addr v12, v14

    invoke-static {v6, v12, v13}, Lcom/farben/faq/e/a;->b(Lcom/farben/faq/e/a;J)V

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_5

    :catchall_0
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    :goto_7
    if-eqz v2, :cond_f

    :try_start_10
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    :cond_11
    :goto_8
    throw v1

    :cond_12
    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "\u8bf7\u6c42\u5931\u8d25,\u91cd\u65b0\u8bf7\u6c42\u6b21\u6570"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/farben/faq/e/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/farben/faq/common/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v2, :cond_13

    :try_start_12
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_13
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_14
    if-eqz v4, :cond_19

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    move v8, v5

    goto/16 :goto_0

    :cond_15
    :try_start_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/farben/faq/e/c;->a:Lcom/farben/faq/e/a;

    invoke-static {v1}, Lcom/farben/faq/e/a;->j(Lcom/farben/faq/e/a;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    const/4 v1, 0x2

    if-eqz v2, :cond_16

    :try_start_14
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_16
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_17
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/farben/faq/e/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/farben/faq/e/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v1, v7}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v8, v5

    goto/16 :goto_0

    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/farben/faq/e/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_8

    :catchall_1
    move-exception v1

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    goto/16 :goto_7

    :catchall_3
    move-exception v1

    move-object v4, v5

    goto/16 :goto_7

    :catch_9
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    goto/16 :goto_6

    :catch_a
    move-exception v1

    move-object v4, v5

    goto/16 :goto_6

    :cond_18
    move-wide v6, v5

    goto/16 :goto_2

    :cond_19
    move v8, v5

    goto/16 :goto_0
.end method
