.class public Lgl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private a:Landroid/os/Handler;

.field private a:Lgh;

.field private a:Ljava/lang/String;

.field private a:Z

.field private a:[B

.field private b:I

.field private b:Ljava/lang/String;

.field private c:I

.field private c:Ljava/lang/String;

.field private d:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[BZLgh;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lgl;->h:Ljava/lang/String;

    .line 93
    iput-object p12, p0, Lgl;->a:Lgh;

    .line 94
    invoke-virtual {p12}, Lgh;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lgl;->a:Landroid/os/Handler;

    .line 97
    invoke-virtual {p12}, Lgh;->b()I

    move-result v0

    iput v0, p0, Lgl;->d:I

    .line 99
    iput-object p1, p0, Lgl;->a:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lgl;->b:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lgl;->c:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lgl;->d:Ljava/lang/String;

    .line 103
    iput-object p5, p0, Lgl;->e:Ljava/lang/String;

    .line 104
    iput p6, p0, Lgl;->a:I

    .line 105
    iput p7, p0, Lgl;->b:I

    .line 106
    iput-object p8, p0, Lgl;->f:Ljava/lang/String;

    .line 107
    iput-object p9, p0, Lgl;->g:Ljava/lang/String;

    .line 108
    iput-object p10, p0, Lgl;->a:[B

    .line 109
    iput p13, p0, Lgl;->c:I

    .line 110
    iput-boolean p11, p0, Lgl;->a:Z

    .line 111
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 77
    const/16 v2, 0xa28

    new-array v2, v2, [C

    .line 79
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 80
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/URL;I)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 378
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 379
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 380
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 383
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 386
    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 390
    if-gez p2, :cond_0

    .line 391
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 397
    :goto_0
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 400
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 402
    const-string v1, "Accept-Charset"

    const-string v2, "GBK"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v1, "S-COOKIE"

    invoke-static {}, Lsa;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 410
    return-object v0

    .line 393
    :cond_0
    iget v1, p0, Lgl;->d:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lgl;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgl;->a:Lgh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgl;->a:Lgh;

    invoke-virtual {v0}, Lgh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lgl;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 369
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 370
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 372
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x4

    .line 114
    const/4 v0, 0x0

    .line 118
    iget v1, p0, Lgl;->b:I

    if-gez v1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget v1, p0, Lgl;->c:I

    if-ne v1, v11, :cond_d

    .line 125
    :try_start_0
    iget v1, p0, Lgl;->d:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 126
    iget-object v1, p0, Lgl;->a:Lgh;

    invoke-virtual {v1}, Lgh;->a()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    move v2, v0

    .line 140
    :goto_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd=speechreco&imei_no="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&type_no="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&base_no="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&start_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgl;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sequence_no="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgl;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&voice_length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgl;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&result_amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgl;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&cancel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&package_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&input_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget v1, Lcom/sohu/inputmethod/sogou/SogouIME;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&action_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget v1, Lcom/sohu/inputmethod/sogou/SogouIME;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&net_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgl;->a:Lgh;

    invoke-virtual {v1}, Lgh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://speech.sogou.com/index.cgi?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lgl;->a:I

    invoke-direct {p0, v1, v0}, Lgl;->a(Ljava/net/URL;I)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 156
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 159
    const-string v1, "voice_content="

    .line 161
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lgl;->a:[B

    if-eqz v1, :cond_2

    .line 164
    iget-object v1, p0, Lgl;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 167
    :cond_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 169
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 171
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 173
    iget v1, p0, Lgl;->a:I

    if-gez v1, :cond_3

    .line 174
    iget-object v1, p0, Lgl;->a:Lgh;

    invoke-virtual {v1, v0}, Lgh;->a(I)V

    .line 177
    :cond_3
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_9

    .line 178
    iget-boolean v0, p0, Lgl;->a:Z

    if-nez v0, :cond_0

    .line 180
    const-wide/16 v0, 0x0

    .line 182
    iget v4, p0, Lgl;->a:I

    if-gez v4, :cond_4

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 186
    :cond_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 188
    const-string v5, "GBK"

    invoke-direct {p0, v4, v5}, Lgl;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 191
    iget v4, p0, Lgl;->a:I

    if-gez v4, :cond_5

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 193
    sget-object v4, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v4

    iget v8, v4, Lamo;->cI:I

    int-to-long v8, v8

    sub-long v0, v6, v0

    add-long/2addr v0, v8

    long-to-int v0, v0

    iput v0, v4, Lamo;->cI:I

    .line 195
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cJ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cJ:I

    .line 199
    :cond_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 202
    new-instance v0, Lgp;

    invoke-direct {v0}, Lgp;-><init>()V

    .line 203
    invoke-virtual {v0, v5}, Lgp;->a(Ljava/lang/String;)Lgp;

    .line 207
    invoke-virtual {v0}, Lgp;->a()I

    move-result v1

    if-gez v1, :cond_6

    .line 208
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lgl;->a(I)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7

    goto/16 :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 253
    invoke-direct {p0, v10}, Lgl;->a(I)V

    goto/16 :goto_0

    .line 129
    :catch_1
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 210
    :cond_6
    :try_start_2
    iget v1, p0, Lgl;->a:I

    if-gez v1, :cond_0

    .line 213
    invoke-virtual {v0}, Lgp;->a()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lgp;->a()I

    move-result v1

    if-eq v1, v11, :cond_7

    invoke-virtual {v0}, Lgp;->b()I

    move-result v1

    if-gtz v1, :cond_8

    .line 216
    :cond_7
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lgt;->f:J

    .line 217
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lgl;->a(I)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_7

    goto/16 :goto_0

    .line 255
    :catch_2
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 259
    if-lt v2, v13, :cond_b

    .line 260
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 261
    invoke-direct {p0, v11}, Lgl;->a(I)V

    goto/16 :goto_0

    .line 219
    :cond_8
    :try_start_3
    iget-object v1, p0, Lgl;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgl;->a:Lgh;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgl;->a:Lgh;

    invoke-virtual {v1}, Lgh;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lgl;->a:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 224
    invoke-virtual {v0}, Lgp;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_0

    .line 266
    :catch_3
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 269
    invoke-direct {p0, v12}, Lgl;->a(I)V

    goto/16 :goto_0

    .line 234
    :cond_9
    if-lt v2, v13, :cond_a

    .line 235
    :try_start_4
    iget-boolean v0, p0, Lgl;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgl;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgl;->a:Lgh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgl;->a:Lgh;

    invoke-virtual {v0}, Lgh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lgl;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 241
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 242
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_0

    .line 271
    :catch_4
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 274
    invoke-direct {p0, v10}, Lgl;->a(I)V

    goto/16 :goto_0

    .line 246
    :cond_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 295
    goto/16 :goto_1

    .line 264
    :cond_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 295
    goto/16 :goto_1

    .line 276
    :catch_5
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 279
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 280
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lgl;->a(I)V

    goto/16 :goto_0

    .line 282
    :cond_c
    invoke-direct {p0, v12}, Lgl;->a(I)V

    goto/16 :goto_0

    .line 285
    :catch_6
    move-exception v0

    .line 287
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 288
    invoke-direct {p0, v10}, Lgl;->a(I)V

    goto/16 :goto_0

    .line 290
    :catch_7
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 293
    invoke-direct {p0, v10}, Lgl;->a(I)V

    goto/16 :goto_0

    :cond_d
    move v2, v0

    goto/16 :goto_1
.end method
