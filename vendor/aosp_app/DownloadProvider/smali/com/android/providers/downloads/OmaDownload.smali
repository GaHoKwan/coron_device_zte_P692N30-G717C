.class public Lcom/android/providers/downloads/OmaDownload;
.super Ljava/lang/Object;
.source "OmaDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/OmaDownload$DDHandler;
    }
.end annotation


# static fields
.field private static final OMADL_INSTANCE:Lcom/android/providers/downloads/OmaDownload; = null

.field private static final SUPPORTED_DDVERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "OmaDownload"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/android/providers/downloads/OmaDownload;

    invoke-direct {v0}, Lcom/android/providers/downloads/OmaDownload;-><init>()V

    sput-object v0, Lcom/android/providers/downloads/OmaDownload;->OMADL_INSTANCE:Lcom/android/providers/downloads/OmaDownload;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method

.method protected static installNotify(Lcom/android/providers/downloads/OmaDescription;Landroid/os/Handler;)I
    .locals 18
    .parameter "component"
    .parameter "handler"

    .prologue
    .line 92
    const/4 v1, -0x1

    .line 93
    .local v1, ack:I
    const/4 v11, 0x0

    .line 94
    .local v11, release:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/OmaDescription;->getInstallNotifyUrl()Ljava/net/URL;

    move-result-object v14

    .line 96
    .local v14, url:Ljava/net/URL;
    if-eqz v14, :cond_6

    .line 97
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 98
    .local v3, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v14}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v15}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 101
    .local v10, postRequest:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    invoke-virtual {v10}, Lorg/apache/http/message/AbstractHttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    .line 102
    .local v9, params:Lorg/apache/http/params/HttpParams;
    const/4 v15, 0x0

    invoke-static {v9, v15}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 103
    new-instance v15, Lorg/apache/http/entity/StringEntity;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/OmaDescription;->getStatusCode()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/providers/downloads/OmaStatusHandler;->statusCodeToString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n\r"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    .end local v9           #params:Lorg/apache/http/params/HttpParams;
    :goto_0
    new-instance v15, Lcom/android/providers/downloads/OmaDownload$1;

    invoke-direct {v15}, Lcom/android/providers/downloads/OmaDownload$1;-><init>()V

    invoke-virtual {v3, v15}, Lorg/apache/http/impl/client/AbstractHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 120
    :try_start_1
    invoke-virtual {v3, v10}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 122
    .local v12, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 123
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 126
    const/16 v15, 0xc8

    if-eq v1, v15, :cond_0

    const/16 v15, 0xca

    if-eq v1, v15, :cond_0

    const/16 v15, 0xc9

    if-eq v1, v15, :cond_0

    const/16 v15, 0xcf

    if-eq v1, v15, :cond_0

    const/16 v15, 0xcb

    if-eq v1, v15, :cond_0

    const/16 v15, 0xcc

    if-eq v1, v15, :cond_0

    const/16 v15, 0xce

    if-eq v1, v15, :cond_0

    const/16 v15, 0xcd

    if-ne v1, v15, :cond_1

    .line 130
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/OmaDescription;->getStatusCode()I

    move-result v15

    const/16 v16, 0x384

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 131
    const/4 v11, 0x1

    .line 135
    :cond_1
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v6

    .line 136
    .local v6, entity:Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_3

    .line 137
    const/4 v7, 0x0

    .line 139
    .local v7, inputStream:Ljava/io/InputStream;
    :try_start_2
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 140
    if-eqz v7, :cond_7

    .line 141
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 144
    .local v2, br:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, s:Ljava/lang/String;
    if-eqz v13, :cond_7

    .line 145
    const-string v15, "DownloadManager/OMA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Response: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 150
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v13           #s:Ljava/lang/String;
    :catchall_0
    move-exception v15

    if-eqz v7, :cond_2

    .line 151
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 153
    :cond_2
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 150
    throw v15
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 157
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v4

    .line 158
    .local v4, e:Lorg/apache/http/conn/ConnectTimeoutException;
    const-string v15, "DownloadManager/OMA"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/OmaDescription;->getStatusCode()I

    move-result v15

    const/16 v16, 0x384

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 162
    const/4 v11, 0x1

    .line 175
    .end local v4           #e:Lorg/apache/http/conn/ConnectTimeoutException;
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 176
    invoke-virtual {v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 184
    .end local v3           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v10           #postRequest:Lorg/apache/http/client/methods/HttpPost;
    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    .line 185
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 186
    .local v8, mg:Landroid/os/Message;
    iput v11, v8, Landroid/os/Message;->arg1:I

    .line 187
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    .end local v8           #mg:Landroid/os/Message;
    :cond_5
    return v11

    .line 105
    .restart local v3       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v10       #postRequest:Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v5

    .line 107
    .local v5, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 164
    .end local v5           #e1:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v4

    .line 165
    .local v4, e:Lorg/apache/http/NoHttpResponseException;
    const-string v15, "DownloadManager/OMA"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/OmaDescription;->getStatusCode()I

    move-result v15

    const/16 v16, 0x384

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 169
    const/4 v11, 0x1

    goto :goto_2

    .line 171
    .end local v4           #e:Lorg/apache/http/NoHttpResponseException;
    :catch_3
    move-exception v4

    .line 172
    .local v4, e:Ljava/io/IOException;
    const-string v15, "DownloadManager/OMA"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    goto :goto_2

    .line 179
    .end local v3           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4           #e:Ljava/io/IOException;
    .end local v10           #postRequest:Lorg/apache/http/client/methods/HttpPost;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/OmaDescription;->getStatusCode()I

    move-result v15

    const/16 v16, 0x384

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 180
    const/4 v11, 0x1

    goto :goto_3

    .line 150
    .restart local v3       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6       #entity:Lorg/apache/http/HttpEntity;
    .restart local v7       #inputStream:Ljava/io/InputStream;
    .restart local v10       #postRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v12       #response:Lorg/apache/http/HttpResponse;
    :cond_7
    if-eqz v7, :cond_8

    .line 151
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 153
    :cond_8
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2
.end method

.method protected static parseXml(Ljava/net/URL;Ljava/io/File;Lcom/android/providers/downloads/OmaDescription;)I
    .locals 15
    .parameter "ddUrl"
    .parameter "file"
    .parameter "component"

    .prologue
    .line 201
    const/4 v5, 0x0

    .line 204
    .local v5, sReader:Ljava/io/BufferedReader;
    const/16 v12, 0x384

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/providers/downloads/OmaDescription;->setStatusCode(I)V

    .line 206
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p0, :cond_2

    .line 207
    :cond_0
    const/16 v12, 0x38a

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/providers/downloads/OmaDescription;->setStatusCode(I)V

    .line 255
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/providers/downloads/OmaDescription;->getStatusCode()I

    move-result v12

    return v12

    .line 210
    :cond_2
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v5           #sReader:Ljava/io/BufferedReader;
    .local v6, sReader:Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    new-instance v12, Lcom/android/providers/downloads/OmaDownload$DDHandler;

    sget-object v13, Lcom/android/providers/downloads/OmaDownload;->OMADL_INSTANCE:Lcom/android/providers/downloads/OmaDownload;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p2

    invoke-direct {v12, v13, p0, v0}, Lcom/android/providers/downloads/OmaDownload$DDHandler;-><init>(Lcom/android/providers/downloads/OmaDownload;Ljava/net/URL;Lcom/android/providers/downloads/OmaDescription;)V

    invoke-static {v6, v12}, Landroid/util/Xml;->parse(Ljava/io/Reader;Lorg/xml/sax/ContentHandler;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v6

    .line 252
    .end local v6           #sReader:Ljava/io/BufferedReader;
    .restart local v5       #sReader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    .line 213
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v12, "DownloadManager/OMA"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .end local v5           #sReader:Ljava/io/BufferedReader;
    .restart local v6       #sReader:Ljava/io/BufferedReader;
    goto :goto_1

    .line 218
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 220
    .local v1, e:Ljava/io/IOException;
    const-string v12, "DownloadManager/OMA"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 252
    .end local v6           #sReader:Ljava/io/BufferedReader;
    .restart local v5       #sReader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 221
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #sReader:Ljava/io/BufferedReader;
    .restart local v6       #sReader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 223
    .local v1, e:Lorg/xml/sax/SAXException;
    const-string v12, "DownloadManager/OMA"

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/16 v12, 0x38a

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/providers/downloads/OmaDescription;->setStatusCode(I)V

    .line 229
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 231
    .end local v6           #sReader:Ljava/io/BufferedReader;
    .restart local v5       #sReader:Ljava/io/BufferedReader;
    :cond_3
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, strLine:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 232
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 234
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 235
    .local v9, strBuffer:Ljava/lang/StringBuffer;
    const-string v7, "<installNotifyURI>"

    .line 236
    .local v7, startTag:Ljava/lang/String;
    const-string v3, "</installNotifyURI>"

    .line 237
    .local v3, endTag:Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 238
    .local v8, startTagPos:I
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 240
    .local v4, endTagPos:I
    const/4 v12, -0x1

    if-eq v8, v12, :cond_3

    const/4 v12, -0x1

    if-eq v4, v12, :cond_3

    .line 241
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v10, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 242
    const-string v12, "DownloadManager/OMA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "install notify URI: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 244
    .local v11, url:Ljava/net/URL;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/providers/downloads/OmaDescription;->setInstallNotifyUrl(Ljava/net/URL;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 248
    .end local v3           #endTag:Ljava/lang/String;
    .end local v4           #endTagPos:I
    .end local v7           #startTag:Ljava/lang/String;
    .end local v8           #startTagPos:I
    .end local v9           #strBuffer:Ljava/lang/StringBuffer;
    .end local v10           #strLine:Ljava/lang/String;
    .end local v11           #url:Ljava/net/URL;
    :catch_3
    move-exception v2

    .line 250
    .local v2, e1:Ljava/io/IOException;
    :goto_2
    const-string v12, "DownloadManager/OMA"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 248
    .end local v2           #e1:Ljava/io/IOException;
    .end local v5           #sReader:Ljava/io/BufferedReader;
    .restart local v6       #sReader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v5, v6

    .end local v6           #sReader:Ljava/io/BufferedReader;
    .restart local v5       #sReader:Ljava/io/BufferedReader;
    goto :goto_2
.end method
