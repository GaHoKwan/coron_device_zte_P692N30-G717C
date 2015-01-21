.class Lcom/autonavi/xmgd/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private d:[B

.field private final e:I

.field private final f:I

.field private synthetic g:Lcom/autonavi/xmgd/c/a;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/c/a;Ljava/lang/String;III)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/c/f;->d:[B

    iput-object p2, p0, Lcom/autonavi/xmgd/c/f;->a:Ljava/lang/String;

    iput p3, p0, Lcom/autonavi/xmgd/c/f;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/c/f;->c:I

    iput p4, p0, Lcom/autonavi/xmgd/c/f;->e:I

    mul-int/lit16 v0, p5, 0x3e8

    iput v0, p0, Lcom/autonavi/xmgd/c/f;->f:I

    return-void
.end method

.method constructor <init>(Lcom/autonavi/xmgd/c/a;Ljava/lang/String;[BIII)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/c/f;->d:[B

    iput-object p2, p0, Lcom/autonavi/xmgd/c/f;->a:Ljava/lang/String;

    iput p4, p0, Lcom/autonavi/xmgd/c/f;->b:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/xmgd/c/f;->c:I

    iput-object p3, p0, Lcom/autonavi/xmgd/c/f;->d:[B

    iput p5, p0, Lcom/autonavi/xmgd/c/f;->e:I

    mul-int/lit16 v0, p6, 0x3e8

    iput v0, p0, Lcom/autonavi/xmgd/c/f;->f:I

    return-void
.end method

.method private a()V
    .locals 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v0}, Lcom/autonavi/xmgd/c/a;->a(Lcom/autonavi/xmgd/c/a;)Ljava/net/Proxy;

    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/autonavi/xmgd/c/f;->a:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget v3, p0, Lcom/autonavi/xmgd/c/f;->f:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/autonavi/xmgd/c/f;->f:I

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget v3, p0, Lcom/autonavi/xmgd/c/f;->f:I

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v3, 0x400

    invoke-direct {v5, v3}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    const/16 v3, 0x400

    new-array v6, v3, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move v3, v2

    :goto_0
    :try_start_2
    invoke-virtual {v4, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-eqz v8, :cond_3

    sget-boolean v6, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v6, :cond_1

    const-string v6, "autonavi60"

    const-string v7, "[HTTPService] wa, interrupted!"

    invoke-static {v6, v7}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    new-instance v2, Lcom/autonavi/xmgd/c/d;

    iget-object v4, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v5

    invoke-direct {v2, v4, v5, v3}, Lcom/autonavi/xmgd/c/d;-><init>(Lcom/autonavi/xmgd/c/a;[BI)V

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v1}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x8

    iget v4, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v5, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v2}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_3
    return-void

    :cond_3
    add-int/2addr v3, v7

    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v5, v6, v8, v7}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    iget-object v7, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v7}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    iget v9, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v10, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    iget-object v8, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v8}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_5
    iget-object v6, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v6}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    iget v8, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v9, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-virtual {v6, v7, v8, v9, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v6, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v6}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v1}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x1

    iget v4, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v5, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v2}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    iget-object v2, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v2}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    iget v4, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v5, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v2}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_5
    :try_start_7
    iget-object v1, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v1}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    iget v4, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v5, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v1}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    :catch_3
    move-exception v0

    :goto_6
    :try_start_8
    iget-object v1, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v1}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    iget v4, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v5, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v1}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    :goto_7
    :try_start_9
    iget-object v1, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v1}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    iget v4, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v5, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v1}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    :catch_5
    move-exception v0

    :goto_8
    :try_start_a
    iget-object v1, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v1}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    iget v4, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v5, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v1}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :goto_9
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_9

    :catch_6
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_8

    :catch_7
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_7

    :catch_8
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_6

    :catch_9
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_5

    :catch_a
    move-exception v0

    move-object v1, v3

    goto/16 :goto_4
.end method

.method private b()V
    .locals 14

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v0}, Lcom/autonavi/xmgd/c/a;->a(Lcom/autonavi/xmgd/c/a;)Ljava/net/Proxy;

    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/autonavi/xmgd/c/f;->a:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_20
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/c/f;->d:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Content-Length"

    invoke-virtual {v0, v4, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/autonavi/xmgd/c/f;->f:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/autonavi/xmgd/c/f;->f:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget v1, p0, Lcom/autonavi/xmgd/c/f;->f:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_21
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1d
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_14

    move-result-object v5

    :try_start_2
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_22
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1e
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_15

    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v1, p0, Lcom/autonavi/xmgd/c/f;->d:[B

    iget-object v1, p0, Lcom/autonavi/xmgd/c/f;->d:[B

    invoke-virtual {v4, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v8, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v1, 0x400

    invoke-direct {v8, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x800

    new-array v2, v2, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1f
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_1c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_16

    :goto_0
    :try_start_4
    invoke-virtual {v7, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-eqz v9, :cond_9

    sget-boolean v2, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v2, :cond_1

    const-string v2, "autonavi60"

    const-string v6, "[HTTPService] wa, interrupted!"

    invoke-static {v2, v6}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1f
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_19

    :cond_1
    const/4 v1, 0x1

    :cond_2
    move v6, v3

    move v3, v1

    :goto_1
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v8}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    const-string v7, "UTF-8"

    invoke-direct {v2, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    const-string v1, "GBK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "gbk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v8}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    const-string v7, "GBK"

    invoke-direct {v1, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v2, v1

    :cond_4
    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_5

    const-string v1, "autonavi60"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTTPService] responseStr = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v1, Lcom/autonavi/xmgd/c/d;

    iget-object v7, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    const-string v8, "GBK"

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v7, v2, v6}, Lcom/autonavi/xmgd/c/d;-><init>(Lcom/autonavi/xmgd/c/a;[BI)V

    :cond_6
    if-eqz v3, :cond_b

    iget-object v2, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v2}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    iget v6, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v7, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-virtual {v2, v3, v6, v7, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v2}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1f
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_1c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_16

    :goto_2
    if-eqz v5, :cond_7

    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_7
    :goto_3
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    :goto_5
    return-void

    :cond_9
    add-int/2addr v3, v6

    const/4 v9, 0x0

    :try_start_8
    invoke-virtual {v8, v2, v9, v6}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    iget-object v6, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v6}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v6

    const/4 v9, 0x2

    iget v10, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v11, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    iget-object v9, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v9}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_1f
    .catch Ljava/net/ProtocolException; {:try_start_8 .. :try_end_8} :catch_1c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_19

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_9
    sget-boolean v6, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v6, :cond_a

    const-string v6, "autonavi60"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTTPService] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v6, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v6}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v6

    const/4 v9, 0x3

    iget v10, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v11, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-virtual {v6, v9, v10, v11, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v6, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v6}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v6, v3

    move v3, v1

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v2}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    iget v6, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v7, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-virtual {v2, v3, v6, v7, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v2}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_1f
    .catch Ljava/net/ProtocolException; {:try_start_9 .. :try_end_9} :catch_1c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_16

    goto/16 :goto_2

    :catch_1
    move-exception v1

    move-object v2, v4

    move-object v3, v5

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_6
    :try_start_a
    iget-object v4, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v4}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    iget v6, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v7, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v4, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v4}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v3, :cond_c

    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :cond_d
    :goto_8
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v4, v2

    move-object v5, v3

    :goto_9
    :try_start_d
    iget-object v2, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v2}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    iget v6, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v7, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-virtual {v2, v3, v6, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v2}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v5, :cond_e

    :try_start_e
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    :cond_e
    :goto_a
    if-eqz v4, :cond_f

    :try_start_f
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    :cond_f
    :goto_b
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catch_9
    move-exception v0

    move-object v4, v2

    move-object v5, v3

    :goto_c
    :try_start_10
    iget-object v2, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v2}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    iget v6, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v7, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-virtual {v2, v3, v6, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v2}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v5, :cond_10

    :try_start_11
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    :cond_10
    :goto_d
    if-eqz v4, :cond_11

    :try_start_12
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    :cond_11
    :goto_e
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    :catch_c
    move-exception v0

    move-object v4, v2

    move-object v5, v3

    :goto_f
    :try_start_13
    iget-object v2, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v2}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    iget v6, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v7, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-virtual {v2, v3, v6, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v2}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v5, :cond_12

    :try_start_14
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    :cond_12
    :goto_10
    if-eqz v4, :cond_13

    :try_start_15
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    :cond_13
    :goto_11
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    :catch_f
    move-exception v0

    move-object v4, v2

    move-object v5, v3

    :goto_12
    :try_start_16
    iget-object v2, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v2}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    iget v6, p0, Lcom/autonavi/xmgd/c/f;->b:I

    iget v7, p0, Lcom/autonavi/xmgd/c/f;->e:I

    invoke-virtual {v2, v3, v6, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xmgd/c/f;->g:Lcom/autonavi/xmgd/c/a;

    invoke-static {v2}, Lcom/autonavi/xmgd/c/a;->b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    if-eqz v5, :cond_14

    :try_start_17
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10

    :cond_14
    :goto_13
    if-eqz v4, :cond_15

    :try_start_18
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11

    :cond_15
    :goto_14
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v5, v3

    :goto_15
    if-eqz v5, :cond_16

    :try_start_19
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_12

    :cond_16
    :goto_16
    if-eqz v4, :cond_17

    :try_start_1a
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_13

    :cond_17
    :goto_17
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_18
    throw v0

    :catch_12
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    :catch_13
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    :catchall_1
    move-exception v1

    move-object v4, v2

    move-object v5, v3

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_15

    :catchall_2
    move-exception v1

    move-object v4, v2

    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    goto :goto_15

    :catchall_3
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_15

    :catchall_4
    move-exception v0

    move-object v4, v2

    move-object v5, v3

    goto :goto_15

    :catchall_5
    move-exception v0

    goto :goto_15

    :catch_14
    move-exception v1

    move-object v4, v2

    move-object v5, v3

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_12

    :catch_15
    move-exception v1

    move-object v4, v2

    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    goto :goto_12

    :catch_16
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_12

    :catch_17
    move-exception v1

    move-object v4, v2

    move-object v5, v3

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_f

    :catch_18
    move-exception v1

    move-object v4, v2

    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    goto/16 :goto_f

    :catch_19
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_f

    :catch_1a
    move-exception v1

    move-object v4, v2

    move-object v5, v3

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_c

    :catch_1b
    move-exception v1

    move-object v4, v2

    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    goto/16 :goto_c

    :catch_1c
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_c

    :catch_1d
    move-exception v1

    move-object v4, v2

    move-object v5, v3

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_9

    :catch_1e
    move-exception v1

    move-object v4, v2

    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    goto/16 :goto_9

    :catch_1f
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_9

    :catch_20
    move-exception v0

    goto/16 :goto_6

    :catch_21
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_6

    :catch_22
    move-exception v1

    move-object v3, v5

    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    goto/16 :goto_6
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/autonavi/xmgd/c/f;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/c/f;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/c/f;->b()V

    goto :goto_0
.end method
