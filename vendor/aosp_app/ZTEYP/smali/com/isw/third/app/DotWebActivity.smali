.class public Lcom/isw/third/app/DotWebActivity;
.super Landroid/app/Activity;
.source "DotWebActivity.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field callFlag:Ljava/lang/String;

.field dmUrl:Ljava/lang/String;

.field dotCommUrl:Ljava/lang/String;

.field dotMediaUrl:Ljava/lang/String;

.field dotmatch:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field id:Ljava/lang/String;

.field imsi:Ljava/lang/String;

.field input:Ljava/io/InputStream;

.field private myWebView:Landroid/webkit/WebView;

.field number:Ljava/lang/String;

.field output:Ljava/io/FileOutputStream;

.field pointbean:Lcom/isw/android/corp/bean/PointBean;

.field progressBar:Landroid/widget/ProgressBar;

.field sdcardDir:Ljava/io/File;

.field viewClient:Landroid/webkit/WebViewClient;

.field webUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "DotWebActivity"

    sput-object v0, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isw/third/app/DotWebActivity;->input:Ljava/io/InputStream;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/third/app/DotWebActivity;->id:Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/isw/third/app/DotWebActivity$1;

    invoke-direct {v0, p0}, Lcom/isw/third/app/DotWebActivity$1;-><init>(Lcom/isw/third/app/DotWebActivity;)V

    iput-object v0, p0, Lcom/isw/third/app/DotWebActivity;->viewClient:Landroid/webkit/WebViewClient;

    .line 349
    new-instance v0, Lcom/isw/third/app/DotWebActivity$2;

    invoke-direct {v0, p0}, Lcom/isw/third/app/DotWebActivity$2;-><init>(Lcom/isw/third/app/DotWebActivity;)V

    iput-object v0, p0, Lcom/isw/third/app/DotWebActivity;->handler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method private DownLoadImage(Ljava/lang/String;)Z
    .locals 16
    .parameter "id"

    .prologue
    .line 256
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->pointbean:Lcom/isw/android/corp/bean/PointBean;

    iget-object v9, v12, Lcom/isw/android/corp/bean/PointBean;->imagePath:Ljava/lang/String;

    .line 257
    .local v9, path:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 258
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->pointbean:Lcom/isw/android/corp/bean/PointBean;

    iget-object v12, v12, Lcom/isw/android/corp/bean/PointBean;->imagePath:Ljava/lang/String;

    invoke-direct {v5, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 259
    .local v5, httpRequest:Lorg/apache/http/client/methods/HttpGet;
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 261
    .local v7, httpclient:Lorg/apache/http/client/HttpClient;
    :try_start_0
    invoke-interface {v7, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 262
    .local v6, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_0

    .line 264
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 263
    invoke-static {v12}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v10

    .line 265
    .local v10, resultSet:[B
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/isw/third/app/DotWebActivity;->input:Ljava/io/InputStream;

    .line 267
    sget-object v12, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "size:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isw/third/app/DotWebActivity;->input:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->available()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    .line 271
    .local v11, state:Ljava/lang/String;
    const-string v12, "mounted"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 272
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/isw/third/app/DotWebActivity;->sdcardDir:Ljava/io/File;

    .line 273
    new-instance v8, Ljava/io/FileOutputStream;

    .line 274
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isw/third/app/DotWebActivity;->sdcardDir:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".jpg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 273
    invoke-direct {v8, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 275
    .local v8, output:Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 276
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 277
    .local v2, count:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->input:Ljava/io/InputStream;

    invoke-virtual {v12, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v12, -0x1

    if-ne v2, v12, :cond_3

    .line 280
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->input:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 281
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 295
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v8           #output:Ljava/io/FileOutputStream;
    .end local v10           #resultSet:[B
    .end local v11           #state:Ljava/lang/String;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->input:Ljava/io/InputStream;

    if-eqz v12, :cond_1

    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->input:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 298
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->output:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_2

    .line 299
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->output:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 309
    .end local v6           #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_2
    :goto_1
    const/4 v12, 0x1

    .end local v5           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #httpclient:Lorg/apache/http/client/HttpClient;
    :goto_2
    return v12

    .line 278
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v5       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v7       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v8       #output:Ljava/io/FileOutputStream;
    .restart local v10       #resultSet:[B
    .restart local v11       #state:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    :try_start_2
    invoke-virtual {v8, v1, v12, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 289
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v6           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #output:Ljava/io/FileOutputStream;
    .end local v10           #resultSet:[B
    .end local v11           #state:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 290
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_3
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->input:Ljava/io/InputStream;

    if-eqz v12, :cond_4

    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->input:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 298
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->output:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_2

    .line 299
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->output:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 301
    :catch_1
    move-exception v4

    .line 302
    .local v4, ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    sget-object v12, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "ex: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 295
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v6       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v10       #resultSet:[B
    .restart local v11       #state:Ljava/lang/String;
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->input:Ljava/io/InputStream;

    if-eqz v12, :cond_6

    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->input:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 298
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->output:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_7

    .line 299
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->output:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 283
    :cond_7
    :goto_3
    const/4 v12, 0x0

    goto :goto_2

    .line 301
    :catch_2
    move-exception v4

    .line 302
    .restart local v4       #ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    sget-object v12, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "ex: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 291
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v6           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v10           #resultSet:[B
    .end local v11           #state:Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 292
    .local v3, e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 295
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->input:Ljava/io/InputStream;

    if-eqz v12, :cond_8

    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->input:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 298
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->output:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_2

    .line 299
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isw/third/app/DotWebActivity;->output:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    .line 301
    :catch_4
    move-exception v4

    .line 302
    .restart local v4       #ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    sget-object v12, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "ex: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 293
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 295
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isw/third/app/DotWebActivity;->input:Ljava/io/InputStream;

    if-eqz v13, :cond_9

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isw/third/app/DotWebActivity;->input:Ljava/io/InputStream;

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 298
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isw/third/app/DotWebActivity;->output:Ljava/io/FileOutputStream;

    if-eqz v13, :cond_a

    .line 299
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isw/third/app/DotWebActivity;->output:Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 305
    :cond_a
    :goto_4
    throw v12

    .line 301
    :catch_5
    move-exception v4

    .line 302
    .restart local v4       #ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    sget-object v13, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ex: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 301
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v6       #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_6
    move-exception v4

    .line 302
    .restart local v4       #ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    sget-object v12, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "ex: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 307
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v5           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v7           #httpclient:Lorg/apache/http/client/HttpClient;
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_2
.end method

.method private static ShowNotification(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 9
    .parameter "ctx"
    .parameter "content"
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 385
    .line 386
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 385
    check-cast v2, Landroid/app/NotificationManager;

    .line 388
    .local v2, mNotificationManager:Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/Notification;

    invoke-static {p0}, Lcom/isw/third/app/DotWebActivity;->getIcon(Landroid/content/Context;)I

    move-result v4

    const-string v5, "\u4e0b\u8f7d\u63d0\u793a"

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 388
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 390
    .local v3, notification:Landroid/app/Notification;
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 391
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 392
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v4, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    invoke-static {p0, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 406
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const-string v4, "\u4e0b\u8f7d\u63d0\u793a"

    invoke-virtual {v3, p0, v4, p1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 407
    invoke-virtual {v2, p2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 408
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;)Lcom/isw/android/corp/bean/PointBean;
    .locals 1
    .parameter

    .prologue
    .line 312
    invoke-static {p0}, Lcom/isw/third/app/DotWebActivity;->parsePush(Ljava/lang/String;)Lcom/isw/android/corp/bean/PointBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/isw/third/app/DotWebActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/isw/third/app/DotWebActivity;->DownLoadImage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-static {p0, p1, p2}, Lcom/isw/third/app/DotWebActivity;->ShowNotification(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4(Lcom/isw/third/app/DotWebActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/isw/third/app/DotWebActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity;->myWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private static getIcon(Landroid/content/Context;)I
    .locals 8
    .parameter "ctx"

    .prologue
    .line 411
    const/4 v1, 0x0

    .line 412
    .local v1, icon:I
    const-string v3, ""

    .line 415
    .local v3, pkgName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 416
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 417
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 418
    .local v2, packInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v5, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v2           #packInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    sget-object v5, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[getIcon]pkgName: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", icon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return v1

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, ex:Ljava/lang/Exception;
    sget-object v5, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ex: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parsePush(Ljava/lang/String;)Lcom/isw/android/corp/bean/PointBean;
    .locals 13
    .parameter "xmlMessage"

    .prologue
    .line 313
    new-instance v0, Lcom/isw/android/corp/bean/PointBean;

    invoke-direct {v0}, Lcom/isw/android/corp/bean/PointBean;-><init>()V

    .line 315
    .local v0, bean:Lcom/isw/android/corp/bean/PointBean;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 316
    .local v2, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    .line 318
    .local v1, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 320
    const/4 v3, 0x0

    .line 321
    .local v3, doc:Lorg/w3c/dom/Document;
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 323
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    .line 325
    .local v6, root:Lorg/w3c/dom/Element;
    const-string v10, "u"

    invoke-interface {v6, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 326
    .local v7, t:Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_0

    .line 327
    const/4 v10, 0x0

    invoke-interface {v7, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 328
    .local v4, e:Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Text;

    .line 329
    .local v8, text:Lorg/w3c/dom/Text;
    if-eqz v8, :cond_0

    .line 330
    invoke-interface {v8}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/isw/android/corp/bean/PointBean;->imagePath:Ljava/lang/String;

    .line 334
    .end local v4           #e:Lorg/w3c/dom/Element;
    .end local v8           #text:Lorg/w3c/dom/Text;
    :cond_0
    const-string v10, "t"

    invoke-interface {v6, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 335
    .local v9, u:Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_1

    .line 336
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 337
    .restart local v4       #e:Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Text;

    .line 338
    .restart local v8       #text:Lorg/w3c/dom/Text;
    if-eqz v8, :cond_1

    .line 339
    invoke-interface {v8}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/isw/android/corp/bean/PointBean;->content:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v1           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3           #doc:Lorg/w3c/dom/Document;
    .end local v4           #e:Lorg/w3c/dom/Element;
    .end local v6           #root:Lorg/w3c/dom/Element;
    .end local v7           #t:Lorg/w3c/dom/NodeList;
    .end local v8           #text:Lorg/w3c/dom/Text;
    .end local v9           #u:Lorg/w3c/dom/NodeList;
    :cond_1
    :goto_0
    return-object v0

    .line 342
    :catch_0
    move-exception v5

    .line 343
    .local v5, ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 344
    sget-object v10, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "ex: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    sget-object v7, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/isw/third/app/DotWebActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :try_start_0
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 90
    .local v5, relativeLayout:Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 91
    const/4 v7, -0x1

    const/4 v8, -0x1

    .line 90
    invoke-direct {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v4, reLayoutParams_p:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/isw/third/app/DotWebActivity;->myWebView:Landroid/webkit/WebView;

    .line 93
    iget-object v7, p0, Lcom/isw/third/app/DotWebActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v7, Landroid/widget/ProgressBar;

    invoke-direct {v7, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/isw/third/app/DotWebActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 95
    iget-object v7, p0, Lcom/isw/third/app/DotWebActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 96
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 97
    const/4 v7, -0x2

    const/4 v8, -0x2

    .line 96
    invoke-direct {v3, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v3, reLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    .line 99
    const/4 v8, -0x1

    .line 98
    invoke-virtual {v3, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 100
    iget-object v7, p0, Lcom/isw/third/app/DotWebActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v7, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {p0, v5}, Lcom/isw/third/app/DotWebActivity;->setContentView(Landroid/view/View;)V

    .line 102
    iget-object v7, p0, Lcom/isw/third/app/DotWebActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 103
    .local v6, webSettings:Landroid/webkit/WebSettings;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 104
    iget-object v7, p0, Lcom/isw/third/app/DotWebActivity;->myWebView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/isw/third/app/DotWebActivity;->viewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 106
    invoke-virtual {p0}, Lcom/isw/third/app/DotWebActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7}, Lcom/isw/android/corp/util/DotInfoClient;->queryDotUrlInfo(Landroid/content/ContentResolver;)Lcom/isw/android/corp/bean/DotInfoBean;

    move-result-object v0

    .line 107
    .local v0, dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    if-nez v0, :cond_0

    .line 108
    sget-object v7, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    const-string v8, "dotinfo is null"

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/isw/third/app/DotWebActivity;->finish()V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/isw/third/app/DotWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 113
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "number"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/isw/third/app/DotWebActivity;->number:Ljava/lang/String;

    .line 114
    const-string v7, "callFlag"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/isw/third/app/DotWebActivity;->callFlag:Ljava/lang/String;

    .line 115
    sget-object v7, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "number"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/isw/third/app/DotWebActivity;->number:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v7, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "callFlag"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/isw/third/app/DotWebActivity;->callFlag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v7, v0, Lcom/isw/android/corp/bean/DotInfoBean;->dotCommUrl:Ljava/lang/String;

    iput-object v7, p0, Lcom/isw/third/app/DotWebActivity;->dotCommUrl:Ljava/lang/String;

    .line 119
    iget-object v7, p0, Lcom/isw/third/app/DotWebActivity;->dotmatch:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 120
    const-string v7, "http://a.zqlx.com:8200/dotinf"

    iput-object v7, p0, Lcom/isw/third/app/DotWebActivity;->dotCommUrl:Ljava/lang/String;

    .line 123
    :cond_1
    iget-object v7, v0, Lcom/isw/android/corp/bean/DotInfoBean;->imsi:Ljava/lang/String;

    iput-object v7, p0, Lcom/isw/third/app/DotWebActivity;->imsi:Ljava/lang/String;

    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/isw/third/app/DotWebActivity;->dotCommUrl:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "?p="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/isw/third/app/DotWebActivity;->number:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "imsi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/isw/third/app/DotWebActivity;->imsi:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&imei="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 125
    iget-object v8, v0, Lcom/isw/android/corp/bean/DotInfoBean;->imei:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "an="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/isw/android/corp/bean/DotInfoBean;->an:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "av="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/isw/android/corp/bean/DotInfoBean;->av:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "adccompany="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 126
    iget-object v8, v0, Lcom/isw/android/corp/bean/DotInfoBean;->adccompany:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ccs="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/isw/third/app/DotWebActivity;->callFlag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "model="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/isw/android/corp/bean/DotInfoBean;->model:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 124
    iput-object v7, p0, Lcom/isw/third/app/DotWebActivity;->webUrl:Ljava/lang/String;

    .line 127
    sget-object v7, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "webUrl:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/isw/third/app/DotWebActivity;->webUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "&an="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/isw/android/corp/bean/DotInfoBean;->an:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "av="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 130
    iget-object v8, v0, Lcom/isw/android/corp/bean/DotInfoBean;->av:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "adccompany="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/isw/android/corp/bean/DotInfoBean;->adccompany:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 131
    const-string v8, "&imei="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/isw/android/corp/bean/DotInfoBean;->imei:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "model="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/isw/android/corp/bean/DotInfoBean;->model:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ct="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 132
    const-string v8, "company"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 129
    iput-object v7, p0, Lcom/isw/third/app/DotWebActivity;->dmUrl:Ljava/lang/String;

    .line 134
    iget-object v7, v0, Lcom/isw/android/corp/bean/DotInfoBean;->dotMediaUrl:Ljava/lang/String;

    iput-object v7, p0, Lcom/isw/third/app/DotWebActivity;->dotMediaUrl:Ljava/lang/String;

    .line 135
    iget-object v7, p0, Lcom/isw/third/app/DotWebActivity;->dotMediaUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 136
    const-string v7, "http://a.zqlx.com:8200/dldi"

    iput-object v7, p0, Lcom/isw/third/app/DotWebActivity;->dotMediaUrl:Ljava/lang/String;

    .line 138
    :cond_2
    sget-object v7, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "dotMediaUrl:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/isw/third/app/DotWebActivity;->dotMediaUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v7, v0, Lcom/isw/android/corp/bean/DotInfoBean;->dotmatch:Ljava/lang/String;

    iput-object v7, p0, Lcom/isw/third/app/DotWebActivity;->dotmatch:Ljava/lang/String;

    .line 141
    iget-object v7, p0, Lcom/isw/third/app/DotWebActivity;->dotmatch:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 142
    const-string v7, "winksidotcoupon,zdwsdotcoupon"

    iput-object v7, p0, Lcom/isw/third/app/DotWebActivity;->dotmatch:Ljava/lang/String;

    .line 144
    :cond_3
    sget-object v7, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "dotmatch:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/isw/third/app/DotWebActivity;->dotmatch:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v7, p0, Lcom/isw/third/app/DotWebActivity;->myWebView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/isw/third/app/DotWebActivity;->webUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0           #dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #reLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #reLayoutParams_p:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #relativeLayout:Landroid/widget/RelativeLayout;
    .end local v6           #webSettings:Landroid/webkit/WebSettings;
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, e:Ljava/lang/Exception;
    sget-object v7, Lcom/isw/third/app/DotWebActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "e:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 376
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 378
    const/4 v0, 0x1

    .line 380
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public startLoadUrlTask()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 367
    return-void
.end method

.method public stopLoadUrlTask()V
    .locals 2

    .prologue
    .line 370
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 371
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 372
    iget-object v1, p0, Lcom/isw/third/app/DotWebActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 373
    return-void
.end method
