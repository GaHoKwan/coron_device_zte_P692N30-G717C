.class public Lcom/plugin/installapk/newrttc_v2/b;
.super Ljava/lang/Thread;


# instance fields
.field private a:Lcom/autonavi/trafficradar/TrafficRadar;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:[B

.field private f:I

.field private g:I

.field private h:Lcom/plugin/installapk/newrttc_v2/f;


# direct methods
.method public constructor <init>(Lcom/autonavi/trafficradar/TrafficRadar;IILjava/lang/String;Ljava/lang/String;[BILcom/plugin/installapk/newrttc_v2/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->g:I

    iput-object p1, p0, Lcom/plugin/installapk/newrttc_v2/b;->a:Lcom/autonavi/trafficradar/TrafficRadar;

    iput p2, p0, Lcom/plugin/installapk/newrttc_v2/b;->b:I

    iput p3, p0, Lcom/plugin/installapk/newrttc_v2/b;->c:I

    iput-object p4, p0, Lcom/plugin/installapk/newrttc_v2/b;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/plugin/installapk/newrttc_v2/b;->e:[B

    iput p7, p0, Lcom/plugin/installapk/newrttc_v2/b;->f:I

    iput-object p8, p0, Lcom/plugin/installapk/newrttc_v2/b;->h:Lcom/plugin/installapk/newrttc_v2/f;

    return-void
.end method

.method private a()V
    .locals 8

    const/4 v7, 0x2

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_0
    sget-boolean v0, Lcom/plugin/installapk/newrttc_v2/k;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi_newRttc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HttpRequest]1 httpPost   url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/plugin/installapk/newrttc_v2/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->d:Ljava/lang/String;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->f:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->e:[B

    if-nez v0, :cond_5

    :cond_1
    const-string v0, "nContent-Length"

    const-string v4, "0"

    invoke-virtual {v3, v0, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    sget-boolean v2, Lcom/plugin/installapk/newrttc_v2/k;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "autonavi_newRttc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HttpRequest]2 httpPost   redictURL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Location"

    invoke-interface {v0, v4}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "autonavi_newRttc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HttpRequest]3 httpPost   getStatusLine:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/16 v2, 0x400

    new-array v2, v2, [B

    new-instance v3, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_7

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/plugin/installapk/newrttc_v2/k;->a:Z

    if-eqz v2, :cond_3

    const-string v2, "autonavi_newRttc"

    const-string v3, "[HttpRequest] httpPost \u8bf7\u6c42\u8fde\u63a5\u5931\u8d25  "

    invoke-static {v2, v3, v0}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->h:Lcom/plugin/installapk/newrttc_v2/f;

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/newrttc_v2/f;->a(Z)V

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->h:Lcom/plugin/installapk/newrttc_v2/f;

    invoke-virtual {v0}, Lcom/plugin/installapk/newrttc_v2/f;->a()V

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->a:Lcom/autonavi/trafficradar/TrafficRadar;

    iget v1, p0, Lcom/plugin/installapk/newrttc_v2/b;->b:I

    invoke-virtual {v0, v1, v7}, Lcom/autonavi/trafficradar/TrafficRadar;->setNetRequestState(II)V

    sget-boolean v0, Lcom/plugin/installapk/newrttc_v2/k;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "autonavi_newRttc"

    const-string v1, "[HttpRequest] httpPost setNetRequestState   FAIL "

    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    :try_start_1
    const-string v0, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v0, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->f:I

    iget-object v4, p0, Lcom/plugin/installapk/newrttc_v2/b;->e:[B

    array-length v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v5, v4, [B

    move v0, v1

    :goto_3
    if-ge v0, v4, :cond_6

    iget-object v6, p0, Lcom/plugin/installapk/newrttc_v2/b;->e:[B

    aget-byte v6, v6, v0

    aput-byte v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, v5}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->a:Lcom/autonavi/trafficradar/TrafficRadar;

    iget v2, p0, Lcom/plugin/installapk/newrttc_v2/b;->b:I

    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/autonavi/trafficradar/TrafficRadar;->receiveNetData(I[BI)V

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->a:Lcom/autonavi/trafficradar/TrafficRadar;

    iget v2, p0, Lcom/plugin/installapk/newrttc_v2/b;->b:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/autonavi/trafficradar/TrafficRadar;->setNetRequestState(II)V

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->h:Lcom/plugin/installapk/newrttc_v2/f;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/plugin/installapk/newrttc_v2/f;->a(Z)V

    :goto_4
    sget-boolean v0, Lcom/plugin/installapk/newrttc_v2/k;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "autonavi_newRttc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HttpRequest]httpPost  receiveNetData OK "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->a:Lcom/autonavi/trafficradar/TrafficRadar;

    iget v2, p0, Lcom/plugin/installapk/newrttc_v2/b;->b:I

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Lcom/autonavi/trafficradar/TrafficRadar;->setNetRequestState(II)V

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->h:Lcom/plugin/installapk/newrttc_v2/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/plugin/installapk/newrttc_v2/f;->a(Z)V

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->h:Lcom/plugin/installapk/newrttc_v2/f;

    invoke-virtual {v0}, Lcom/plugin/installapk/newrttc_v2/f;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private b()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->available()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/plugin/installapk/newrttc_v2/k;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "autonavi_newRttc"

    const-string v2, "[HttpRequest]httpGet setNetRequestState error"

    invoke-static {v1, v2, v0}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->a:Lcom/autonavi/trafficradar/TrafficRadar;

    iget v1, p0, Lcom/plugin/installapk/newrttc_v2/b;->b:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/trafficradar/TrafficRadar;->setNetRequestState(II)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/b;->a:Lcom/autonavi/trafficradar/TrafficRadar;

    iget v2, p0, Lcom/plugin/installapk/newrttc_v2/b;->b:I

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/trafficradar/TrafficRadar;->receiveNetData(I[BI)V

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->a:Lcom/autonavi/trafficradar/TrafficRadar;

    iget v1, p0, Lcom/plugin/installapk/newrttc_v2/b;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/trafficradar/TrafficRadar;->setNetRequestState(II)V

    sget-boolean v0, Lcom/plugin/installapk/newrttc_v2/k;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "autonavi_newRttc"

    const-string v1, "[HttpRequest]httpGet setNetRequestState OK"

    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/plugin/installapk/newrttc_v2/b;->g:I

    if-lez v0, :cond_0

    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/b;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/plugin/installapk/newrttc_v2/b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/plugin/installapk/newrttc_v2/b;->b()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/plugin/installapk/newrttc_v2/b;->a()V

    goto :goto_1
.end method
