.class final Ltmsdk/fg/module/urlcheck/a;
.super Ltmsdk/fg/creator/BaseManagerF;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/fg/module/urlcheck/a$1;,
        Ltmsdk/fg/module/urlcheck/a$a;
    }
.end annotation


# instance fields
.field private FA:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ltmsdkobf/ch;",
            ">;"
        }
    .end annotation
.end field

.field private FB:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ltmsdkobf/ch;",
            ">;"
        }
    .end annotation
.end field

.field private FC:J

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ltmsdk/fg/creator/BaseManagerF;-><init>()V

    .line 65
    return-void
.end method

.method private a(Ljava/lang/String;Ltmsdk/fg/module/urlcheck/a$a;)I
    .locals 24
    .parameter "url"
    .parameter "fileInfo"

    .prologue
    .line 219
    const/16 v7, -0xbb8

    .line 221
    .local v7, err:I
    new-instance v12, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v12}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 222
    .local v12, httpParams:Lorg/apache/http/params/HttpParams;
    const/16 v22, 0x2710

    move/from16 v0, v22

    invoke-static {v12, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 223
    const/16 v22, 0x4e20

    move/from16 v0, v22

    invoke-static {v12, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 224
    const/16 v22, 0x1000

    move/from16 v0, v22

    invoke-static {v12, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 225
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-static {v12, v0}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 227
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 229
    .local v9, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkType()Ltmsdkobf/t;

    move-result-object v15

    .line 230
    .local v15, networkType:Ltmsdkobf/t;
    sget-object v22, Ltmsdkobf/t;->bb:Ltmsdkobf/t;

    move-object/from16 v0, v22

    if-ne v15, v0, :cond_0

    .line 231
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v8

    .line 232
    .local v8, host:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v16

    .line 233
    .local v16, port:I
    new-instance v17, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v8, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 234
    .local v17, proxy:Lorg/apache/http/HttpHost;
    invoke-interface {v9}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v22

    const-string v23, "http.route.default-proxy"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 237
    .end local v8           #host:Ljava/lang/String;
    .end local v16           #port:I
    .end local v17           #proxy:Lorg/apache/http/HttpHost;
    :cond_0
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v11}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 238
    .local v11, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const/4 v14, 0x0

    .line 239
    .local v14, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 241
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v22, Ljava/net/URI;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 243
    invoke-interface {v9, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 245
    .local v13, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    .line 246
    .local v19, statusCode:I
    const/16 v22, 0xc8

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    const/16 v22, 0xce

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 247
    move/from16 v0, v19

    rsub-int v7, v0, -0xbb8

    .line 249
    :cond_1
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 250
    .local v10, httpEntity:Lorg/apache/http/HttpEntity;
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p2

    iput v0, v1, Ltmsdk/fg/module/urlcheck/a$a;->length:I

    .line 251
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    .line 252
    const/16 v22, 0x400

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 253
    .local v20, temp:[B
    const/4 v5, 0x0

    .line 254
    .local v5, dataLen:I
    const/16 v18, -0x1

    .line 255
    .local v18, readLen:I
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 256
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .local v4, baos:Ljava/io/ByteArrayOutputStream;
    :goto_0
    const/16 v22, 0x800

    move/from16 v0, v22

    if-ge v5, v0, :cond_3

    :try_start_1
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/InputStream;->read([B)I

    move-result v18

    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 257
    add-int v22, v5, v18

    const/16 v23, 0x800

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_2

    move/from16 v21, v18

    .line 258
    .local v21, writeLen:I
    :goto_1
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v4, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 259
    add-int v5, v5, v21

    .line 260
    goto :goto_0

    .line 257
    .end local v21           #writeLen:I
    :cond_2
    rsub-int v0, v5, 0x800

    move/from16 v21, v0

    goto :goto_1

    .line 261
    :cond_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ltmsdkobf/kd;->v([B)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    iput-object v0, v1, Ltmsdk/fg/module/urlcheck/a$a;->FD:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d

    .line 263
    const/4 v7, 0x0

    .line 274
    if-eqz v14, :cond_4

    .line 276
    :try_start_2
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 281
    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    .line 283
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 289
    :cond_5
    :goto_3
    invoke-interface {v9}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v3, v4

    .line 292
    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #dataLen:I
    .end local v10           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v13           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v18           #readLen:I
    .end local v19           #statusCode:I
    .end local v20           #temp:[B
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :goto_4
    return v7

    .line 277
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #dataLen:I
    .restart local v10       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v13       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v18       #readLen:I
    .restart local v19       #statusCode:I
    .restart local v20       #temp:[B
    :catch_0
    move-exception v6

    .line 278
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 284
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 285
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 264
    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #dataLen:I
    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v13           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v18           #readLen:I
    .end local v19           #statusCode:I
    .end local v20           #temp:[B
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v6

    .line 265
    .local v6, e:Ljava/net/URISyntaxException;
    :goto_5
    const/16 v7, -0xbed

    .line 266
    :try_start_4
    invoke-virtual {v6}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 274
    if-eqz v14, :cond_6

    .line 276
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 281
    .end local v6           #e:Ljava/net/URISyntaxException;
    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 283
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 289
    :cond_7
    :goto_7
    invoke-interface {v9}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    .line 277
    .restart local v6       #e:Ljava/net/URISyntaxException;
    :catch_3
    move-exception v6

    .line 278
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 284
    .end local v6           #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 285
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 267
    .end local v6           #e:Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 268
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    :goto_8
    const/16 v7, -0xbeb

    .line 269
    :try_start_7
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 274
    if-eqz v14, :cond_8

    .line 276
    :try_start_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 281
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    :cond_8
    :goto_9
    if-eqz v3, :cond_9

    .line 283
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 289
    :cond_9
    :goto_a
    invoke-interface {v9}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    .line 277
    .restart local v6       #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_6
    move-exception v6

    .line 278
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 284
    .end local v6           #e:Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 285
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 270
    .end local v6           #e:Ljava/io/IOException;
    :catch_8
    move-exception v6

    .line 271
    .restart local v6       #e:Ljava/io/IOException;
    :goto_b
    const/16 v7, -0xbf0

    .line 272
    :try_start_a
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 274
    if-eqz v14, :cond_a

    .line 276
    :try_start_b
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 281
    :cond_a
    :goto_c
    if-eqz v3, :cond_b

    .line 283
    :try_start_c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 289
    :cond_b
    :goto_d
    invoke-interface {v9}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    .line 277
    :catch_9
    move-exception v6

    .line 278
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 284
    :catch_a
    move-exception v6

    .line 285
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 274
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v22

    :goto_e
    if-eqz v14, :cond_c

    .line 276
    :try_start_d
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 281
    :cond_c
    :goto_f
    if-eqz v3, :cond_d

    .line 283
    :try_start_e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 289
    :cond_d
    :goto_10
    invoke-interface {v9}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v22

    .line 277
    :catch_b
    move-exception v6

    .line 278
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 284
    .end local v6           #e:Ljava/io/IOException;
    :catch_c
    move-exception v6

    .line 285
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 274
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #e:Ljava/io/IOException;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #dataLen:I
    .restart local v10       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v13       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v18       #readLen:I
    .restart local v19       #statusCode:I
    .restart local v20       #temp:[B
    :catchall_1
    move-exception v22

    move-object v3, v4

    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_e

    .line 270
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_d
    move-exception v6

    move-object v3, v4

    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_b

    .line 267
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_e
    move-exception v6

    move-object v3, v4

    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .line 264
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_f
    move-exception v6

    move-object v3, v4

    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5
.end method

.method private fY()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ltmsdk/fg/module/urlcheck/a;->FA:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ltmsdk/fg/module/urlcheck/a;->FB:Ljava/util/LinkedHashMap;

    .line 93
    return-void
.end method

.method private hM()V
    .locals 14

    .prologue
    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 331
    .local v0, currentTime:J
    iget-wide v8, p0, Ltmsdk/fg/module/urlcheck/a;->FC:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    iget-wide v8, p0, Ltmsdk/fg/module/urlcheck/a;->FC:J

    sub-long v8, v0, v8

    const-wide/32 v10, 0x1499700

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v5, removeds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v9, p0, Ltmsdk/fg/module/urlcheck/a;->FB:Ljava/util/LinkedHashMap;

    monitor-enter v9

    .line 345
    :try_start_0
    iget-object v8, p0, Ltmsdk/fg/module/urlcheck/a;->FB:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 346
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 347
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 348
    .local v6, timeKey:J
    iput-wide v6, p0, Ltmsdk/fg/module/urlcheck/a;->FC:J

    .line 349
    sub-long v10, v0, v6

    const-wide/32 v12, 0x1499700

    cmp-long v8, v10, v12

    if-ltz v8, :cond_2

    .line 350
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 351
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 356
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v6           #timeKey:J
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_2
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 358
    .local v4, removeKey:Ljava/lang/Long;
    iget-object v8, p0, Ltmsdk/fg/module/urlcheck/a;->FA:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 360
    .end local v4           #removeKey:Ljava/lang/Long;
    :cond_3
    iget-object v8, p0, Ltmsdk/fg/module/urlcheck/a;->FA:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 361
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Ltmsdk/fg/module/urlcheck/a;->FC:J

    goto :goto_0
.end method


# virtual methods
.method public checkApkUrl(Ljava/lang/String;)I
    .locals 12
    .parameter "url"

    .prologue
    .line 302
    const/4 v7, -0x2

    .line 303
    .local v7, err:I
    new-instance v8, Ltmsdk/fg/module/urlcheck/a$a;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v1}, Ltmsdk/fg/module/urlcheck/a$a;-><init>(Ltmsdk/fg/module/urlcheck/a;Ltmsdk/fg/module/urlcheck/a$1;)V

    .line 304
    .local v8, fileInfo:Ltmsdk/fg/module/urlcheck/a$a;
    invoke-direct {p0, p1, v8}, Ltmsdk/fg/module/urlcheck/a;->a(Ljava/lang/String;Ltmsdk/fg/module/urlcheck/a$a;)I

    move-result v7

    if-nez v7, :cond_0

    .line 305
    new-instance v0, Ltmsdkobf/g;

    const/16 v1, 0xd

    const-string v2, "1.0.0"

    iget-object v3, p0, Ltmsdk/fg/module/urlcheck/a;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltmsdk/common/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "guid"

    const-string v5, "ua"

    invoke-direct/range {v0 .. v5}, Ltmsdkobf/g;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .local v0, browserClient:Ltmsdkobf/g;
    new-instance v6, Ltmsdkobf/i;

    iget-object v1, v8, Ltmsdk/fg/module/urlcheck/a$a;->FD:Ljava/lang/String;

    iget v2, v8, Ltmsdk/fg/module/urlcheck/a$a;->length:I

    invoke-direct {v6, p1, v1, v2}, Ltmsdkobf/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 313
    .local v6, browserUrl:Ltmsdkobf/i;
    new-instance v10, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v10}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 314
    .local v10, resultRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/h;>;"
    const-class v1, Ltmsdkobf/lk;

    invoke-static {v1}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v11

    check-cast v11, Ltmsdkobf/lk;

    .line 315
    .local v11, wupSessionManager:Ltmsdkobf/lk;
    invoke-virtual {v11, v0, v6, v10}, Ltmsdkobf/lk;->a(Ltmsdkobf/g;Ltmsdkobf/i;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v7

    if-nez v7, :cond_0

    .line 316
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltmsdkobf/h;

    .line 317
    .local v9, result:Ltmsdkobf/h;
    if-eqz v9, :cond_0

    .line 318
    const-string v1, "checkApkUrl"

    invoke-virtual {v9}, Ltmsdkobf/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    .end local v0           #browserClient:Ltmsdkobf/g;
    .end local v6           #browserUrl:Ltmsdkobf/i;
    .end local v9           #result:Ltmsdkobf/h;
    .end local v10           #resultRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/h;>;"
    .end local v11           #wupSessionManager:Ltmsdkobf/lk;
    :cond_0
    return v7
.end method

.method public checkUrl(Ljava/lang/String;)Ltmsdk/common/module/urlcheck/UrlCheckResult;
    .locals 11
    .parameter "url"

    .prologue
    .line 106
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 107
    :cond_0
    new-instance v7, Ltmsdk/common/module/urlcheck/UrlCheckResult;

    const/16 v8, -0x3ee

    invoke-direct {v7, v8}, Ltmsdk/common/module/urlcheck/UrlCheckResult;-><init>(I)V

    .line 135
    :goto_0
    return-object v7

    .line 110
    :cond_1
    invoke-direct {p0}, Ltmsdk/fg/module/urlcheck/a;->hM()V

    .line 111
    iget-object v7, p0, Ltmsdk/fg/module/urlcheck/a;->FA:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltmsdkobf/ch;

    .line 112
    .local v5, info:Ltmsdkobf/ch;
    invoke-virtual {v5}, Ltmsdkobf/ch;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 113
    new-instance v7, Ltmsdk/common/module/urlcheck/UrlCheckResult;

    invoke-direct {v7, v5}, Ltmsdk/common/module/urlcheck/UrlCheckResult;-><init>(Ltmsdkobf/ch;)V

    goto :goto_0

    .line 118
    .end local v5           #info:Ltmsdkobf/ch;
    :cond_3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 119
    .local v0, checkRsp:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/ch;>;"
    const-class v7, Ltmsdkobf/lk;

    invoke-static {v7}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v7

    check-cast v7, Ltmsdkobf/lk;

    invoke-virtual {v7, p1, v0}, Ltmsdkobf/lk;->a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v6

    .line 120
    .local v6, ret:I
    if-nez v6, :cond_6

    .line 121
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/ch;

    .line 122
    .local v1, checkRst:Ltmsdkobf/ch;
    if-nez v1, :cond_4

    .line 123
    new-instance v7, Ltmsdk/common/module/urlcheck/UrlCheckResult;

    const/16 v8, -0x138e

    invoke-direct {v7, v8}, Ltmsdk/common/module/urlcheck/UrlCheckResult;-><init>(I)V

    goto :goto_0

    .line 125
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 126
    .local v2, currentTime:J
    iget-object v7, p0, Ltmsdk/fg/module/urlcheck/a;->FA:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v8, p0, Ltmsdk/fg/module/urlcheck/a;->FB:Ljava/util/LinkedHashMap;

    monitor-enter v8

    .line 128
    :try_start_0
    iget-object v7, p0, Ltmsdk/fg/module/urlcheck/a;->FB:Ljava/util/LinkedHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-wide v7, p0, Ltmsdk/fg/module/urlcheck/a;->FC:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 131
    iput-wide v2, p0, Ltmsdk/fg/module/urlcheck/a;->FC:J

    .line 133
    :cond_5
    new-instance v7, Ltmsdk/common/module/urlcheck/UrlCheckResult;

    invoke-direct {v7, v1}, Ltmsdk/common/module/urlcheck/UrlCheckResult;-><init>(Ltmsdkobf/ch;)V

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 135
    .end local v1           #checkRst:Ltmsdkobf/ch;
    .end local v2           #currentTime:J
    :cond_6
    new-instance v7, Ltmsdk/common/module/urlcheck/UrlCheckResult;

    invoke-direct {v7, v6}, Ltmsdk/common/module/urlcheck/UrlCheckResult;-><init>(I)V

    goto :goto_0
.end method

.method public checkUrlEx(Ljava/util/List;)Ljava/util/Map;
    .locals 22
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltmsdk/common/module/urlcheck/UrlCheckResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_2

    .line 151
    :cond_0
    new-instance v16, Ljava/util/HashMap;

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 205
    :cond_1
    return-object v16

    .line 153
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    .line 154
    .local v12, len:I
    new-instance v16, Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 155
    .local v16, rsts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ltmsdk/common/module/urlcheck/UrlCheckResult;>;"
    new-instance v5, Ljava/util/ArrayList;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .local v5, cloudReqUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 158
    .local v11, isChecked:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v12, :cond_6

    .line 159
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 161
    .local v3, checkUrl:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Ltmsdk/fg/module/urlcheck/a;->hM()V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/fg/module/urlcheck/a;->FA:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ltmsdkobf/ch;

    .line 163
    .local v10, info:Ltmsdkobf/ch;
    invoke-virtual {v10}, Ltmsdkobf/ch;->getUrl()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 164
    new-instance v18, Ltmsdk/common/module/urlcheck/UrlCheckResult;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Ltmsdk/common/module/urlcheck/UrlCheckResult;-><init>(Ltmsdkobf/ch;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/4 v11, 0x1

    .line 169
    .end local v10           #info:Ltmsdkobf/ch;
    :cond_4
    if-eqz v11, :cond_5

    .line 170
    const/4 v11, 0x0

    .line 158
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 174
    :cond_5
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    .end local v3           #checkUrl:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    if-eqz v18, :cond_1

    .line 181
    new-instance v15, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v15}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 182
    .local v15, rspTemplateRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/at;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    .line 183
    const-class v18, Ltmsdkobf/lk;

    invoke-static/range {v18 .. v18}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v18

    check-cast v18, Ltmsdkobf/lk;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v15}, Ltmsdkobf/lk;->a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I

    .line 184
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 185
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ltmsdkobf/at;

    .line 187
    .local v14, rspTemplate:Ltmsdkobf/at;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ltmsdkobf/at;->p()Ljava/util/ArrayList;

    move-result-object v4

    .local v4, cloudCheckRsps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ch;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-eqz v18, :cond_1

    .line 190
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 193
    .local v13, rspSize:I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v13, :cond_1

    .line 194
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ltmsdkobf/ch;

    .line 195
    .local v17, tempRsp:Ltmsdkobf/ch;
    move-object/from16 v0, v17

    iget-object v0, v0, Ltmsdkobf/ch;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ltmsdk/common/module/urlcheck/UrlCheckResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ltmsdk/common/module/urlcheck/UrlCheckResult;-><init>(Ltmsdkobf/ch;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 197
    .local v6, currentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/fg/module/urlcheck/a;->FA:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v18, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/fg/module/urlcheck/a;->FB:Ljava/util/LinkedHashMap;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 199
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/fg/module/urlcheck/a;->FB:Ljava/util/LinkedHashMap;

    move-object/from16 v18, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    move-object/from16 v0, p0

    iget-wide v0, v0, Ltmsdk/fg/module/urlcheck/a;->FC:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_7

    .line 202
    move-object/from16 v0, p0

    iput-wide v6, v0, Ltmsdk/fg/module/urlcheck/a;->FC:J

    .line 193
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 200
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 87
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 88
    return-void
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    iput-object p1, p0, Ltmsdk/fg/module/urlcheck/a;->mContext:Landroid/content/Context;

    .line 79
    :try_start_0
    invoke-direct {p0}, Ltmsdk/fg/module/urlcheck/a;->fY()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
