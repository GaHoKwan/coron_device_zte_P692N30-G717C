.class Lcom/autonavi/xm/util/HttpHandler$HttpRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mIsRunning:Z

.field private final mRequestCode:I

.field private final mRequestContent:Ljava/lang/String;

.field private final mRequestMethod:Ljava/lang/String;

.field private final mResponseType:I

.field private final mUrlStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/autonavi/xm/util/HttpHandler;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/util/HttpHandler;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mRequestMethod:Ljava/lang/String;

    iput p3, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mResponseType:I

    iput-object p4, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mUrlStr:Ljava/lang/String;

    iput-object p5, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mRequestContent:Ljava/lang/String;

    iput p6, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mRequestCode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mIsRunning:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mIsRunning:Z

    return-void
.end method

.method public run()V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mUrlStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mRequestMethod:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v4, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mRequestContent:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iget-boolean v2, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_a

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v4

    :try_start_3
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    iget v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mResponseType:I

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mIsRunning:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    iget v3, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mRequestCode:I

    invoke-virtual {v1, v3, v2}, Lcom/autonavi/xm/util/HttpHandler;->onResponse(ILjava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_4
    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :cond_5
    :try_start_6
    iget v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mResponseType:I

    if-ne v1, v6, :cond_3

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_3
    iget-boolean v5, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mIsRunning:Z

    if-eqz v5, :cond_9

    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_9

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v3, v4

    :goto_4
    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :catch_0
    move-exception v1

    :goto_5
    :try_start_8
    iget-boolean v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mIsRunning:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    iget v2, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mRequestCode:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xm/util/HttpHandler;->onError(II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_8
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :cond_9
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-boolean v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mIsRunning:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    iget v5, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mRequestCode:I

    invoke-virtual {v1, v5, v3}, Lcom/autonavi/xm/util/HttpHandler;->onResponse(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :cond_a
    :try_start_a
    iget-boolean v2, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mIsRunning:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    iget v3, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mRequestCode:I

    invoke-virtual {v2, v3, v1}, Lcom/autonavi/xm/util/HttpHandler;->onResponseFail(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_6
    :try_start_b
    iget-boolean v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mIsRunning:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    iget v2, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mRequestCode:I

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xm/util/HttpHandler;->onError(II)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_b
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v0, v3

    :goto_7
    :try_start_c
    iget-boolean v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mIsRunning:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    iget v2, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mRequestCode:I

    const/4 v3, -0x3

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xm/util/HttpHandler;->onError(II)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_c
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-object v0, v3

    :goto_8
    :try_start_d
    iget-boolean v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mIsRunning:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    iget v2, p0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;->mRequestCode:I

    const/4 v3, -0x3

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xm/util/HttpHandler;->onError(II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_d
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :goto_9
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    throw v0

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v0, v3

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v0, v3

    goto/16 :goto_5

    :catchall_3
    move-exception v1

    move-object v2, v3

    goto/16 :goto_4

    :catchall_4
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_4
.end method
