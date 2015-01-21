.class Lcom/baidu/pcs/BaiduPCSDownloader;
.super Lcom/baidu/pcs/BaiduPCSActionBase;
.source "BaiduPCSDownloader.java"


# static fields
.field private static final AccessReadWrite:Ljava/lang/String; = "rw"

.field private static final ContentLength:Ljava/lang/String; = "Content-Length"

.field private static final Key_Type:Ljava/lang/String; = "type"

.field private static final Key_ZIPContent:Ljava/lang/String; = "zipcontent"

.field private static final Key_ZIPName:Ljava/lang/String; = "zipname"

.field private static final MaxPieceSize:I = 0xc800

.field private static final Split_File:Ljava/lang/String; = "/"

.field private static final Value_Method:Ljava/lang/String; = "download"

.field private static final Value_Method_BatchDownload:Ljava/lang/String; = "batchdownload"

.field private static final Value_Method_Streaming:Ljava/lang/String; = "streaming"

.field private static final mfCommand:Ljava/lang/String; = "file"

.field private static final msCommand:Ljava/lang/String; = "stream"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;-><init>()V

    return-void
.end method

.method private downloadFileFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 8
    .parameter "source"
    .parameter "target"
    .parameter "command"
    .parameter "type"
    .parameter "listener"

    .prologue
    .line 88
    const/4 v3, 0x0

    .line 90
    .local v3, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const-string v0, "download"

    .line 96
    .local v0, method:Ljava/lang/String;
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 97
    const-string v0, "streaming"

    .line 98
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "type"

    invoke-direct {v5, v6, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "method"

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSDownloader;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "path"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://pcs.baidu.com/rest/2.0/pcs/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSDownloader;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, url:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, request:Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {p0, v2, p2, p5}, Lcom/baidu/pcs/BaiduPCSDownloader;->startDownloading(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v3

    .line 112
    .end local v0           #method:Ljava/lang/String;
    .end local v1           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v2           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #url:Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_2

    .line 113
    new-instance v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    .end local v3           #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    invoke-direct {v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    .line 116
    .restart local v3       #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :cond_2
    return-object v3
.end method

.method private startDownloading(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 26
    .parameter "request"
    .parameter "target"
    .parameter "listener"

    .prologue
    .line 124
    new-instance v17, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct/range {v17 .. v17}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    .line 127
    .local v17, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/pcs/BaiduPCSDownloader;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v16

    .line 129
    .local v16, response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    if-eqz v16, :cond_2

    .line 131
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 133
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 135
    const-wide/16 v18, 0x0

    .line 138
    .local v18, size:J
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    move-object/from16 v24, v0

    const-string v25, "Content-Length"

    invoke-interface/range {v24 .. v25}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v15

    .line 139
    .local v15, requestHeaders:[Lorg/apache/http/Header;
    array-length v0, v15

    move/from16 v24, v0

    if-lez v24, :cond_0

    .line 140
    const/16 v24, 0x0

    aget-object v24, v15, v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 144
    :cond_0
    const/16 v24, 0xc8

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 146
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string v24, "rw"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-direct {v14, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .local v14, out:Ljava/io/RandomAccessFile;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 149
    .local v11, inputStream:Ljava/io/InputStream;
    if-eqz v14, :cond_2

    if-eqz v11, :cond_2

    .line 150
    const/16 v22, 0x1

    .line 151
    .local v22, success:Z
    const-wide/16 v20, 0x0

    .line 152
    .local v20, startMS:J
    const-wide/16 v5, 0x0

    .line 155
    .local v5, doneLength:J
    const v24, 0xc800

    move/from16 v0, v24

    new-array v3, v0, [B

    .line 157
    .local v3, buffer:[B
    const/4 v4, 0x0

    .line 158
    .local v4, count:I
    :cond_1
    :goto_0
    const/16 v24, 0x0

    array-length v0, v3

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_4

    .line 186
    :goto_1
    if-eqz v22, :cond_7

    .line 187
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/FileDescriptor;->sync()V

    .line 188
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 195
    :goto_2
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    .end local v3           #buffer:[B
    .end local v4           #count:I
    .end local v5           #doneLength:J
    .end local v11           #inputStream:Ljava/io/InputStream;
    .end local v14           #out:Ljava/io/RandomAccessFile;
    .end local v15           #requestHeaders:[Lorg/apache/http/Header;
    .end local v16           #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    .end local v18           #size:J
    .end local v20           #startMS:J
    .end local v22           #success:Z
    :cond_2
    :goto_3
    move-object/from16 v0, v17

    iget v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 215
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v23, tempFile:Ljava/io/File;
    if-eqz v23, :cond_3

    .line 218
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 219
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 224
    .end local v23           #tempFile:Ljava/io/File;
    :cond_3
    return-object v17

    .line 160
    .restart local v3       #buffer:[B
    .restart local v4       #count:I
    .restart local v5       #doneLength:J
    .restart local v11       #inputStream:Ljava/io/InputStream;
    .restart local v14       #out:Ljava/io/RandomAccessFile;
    .restart local v15       #requestHeaders:[Lorg/apache/http/Header;
    .restart local v16       #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    .restart local v18       #size:J
    .restart local v20       #startMS:J
    .restart local v22       #success:Z
    :cond_4
    const/16 v24, 0x0

    :try_start_1
    move/from16 v0, v24

    invoke-virtual {v14, v3, v0, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 161
    int-to-long v0, v4

    move-wide/from16 v24, v0

    add-long v5, v5, v24

    .line 164
    if-eqz p3, :cond_1

    .line 166
    const-wide/16 v24, 0x0

    cmp-long v24, v18, v24

    if-lez v24, :cond_5

    cmp-long v24, v5, v18

    if-ltz v24, :cond_5

    .line 167
    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/baidu/pcs/BaiduPCSStatusListener;->onProgress(JJ)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 204
    .end local v3           #buffer:[B
    .end local v4           #count:I
    .end local v5           #doneLength:J
    .end local v11           #inputStream:Ljava/io/InputStream;
    .end local v14           #out:Ljava/io/RandomAccessFile;
    .end local v15           #requestHeaders:[Lorg/apache/http/Header;
    .end local v16           #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    .end local v18           #size:J
    .end local v20           #startMS:J
    .end local v22           #success:Z
    :catch_0
    move-exception v8

    .line 206
    .local v8, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_3

    .line 169
    .end local v8           #e1:Ljava/io/FileNotFoundException;
    .restart local v3       #buffer:[B
    .restart local v4       #count:I
    .restart local v5       #doneLength:J
    .restart local v11       #inputStream:Ljava/io/InputStream;
    .restart local v14       #out:Ljava/io/RandomAccessFile;
    .restart local v15       #requestHeaders:[Lorg/apache/http/Header;
    .restart local v16       #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    .restart local v18       #size:J
    .restart local v20       #startMS:J
    .restart local v22       #success:Z
    :cond_5
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/pcs/BaiduPCSStatusListener;->progressInterval()J

    move-result-wide v12

    .line 170
    .local v12, interval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 173
    .local v9, endMS:J
    sub-long v24, v9, v20

    cmp-long v24, v24, v12

    if-lez v24, :cond_6

    .line 174
    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/baidu/pcs/BaiduPCSStatusListener;->onProgress(JJ)V

    .line 178
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/pcs/BaiduPCSStatusListener;->toContinue()Z

    move-result v24

    if-nez v24, :cond_1

    .line 179
    const/16 v22, 0x0

    .line 180
    goto :goto_1

    .line 191
    .end local v9           #endMS:J
    .end local v12           #interval:J
    :cond_7
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 192
    const-string v24, "User stops downloading"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 207
    .end local v3           #buffer:[B
    .end local v4           #count:I
    .end local v5           #doneLength:J
    .end local v11           #inputStream:Ljava/io/InputStream;
    .end local v14           #out:Ljava/io/RandomAccessFile;
    .end local v15           #requestHeaders:[Lorg/apache/http/Header;
    .end local v16           #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    .end local v18           #size:J
    .end local v20           #startMS:J
    .end local v22           #success:Z
    :catch_1
    move-exception v7

    .line 209
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto/16 :goto_3

    .line 199
    .end local v7           #e:Ljava/io/IOException;
    .restart local v15       #requestHeaders:[Lorg/apache/http/Header;
    .restart local v16       #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    .restart local v18       #size:J
    :cond_8
    :try_start_3
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-super {v0, v1}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseSimplefiedResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v17

    goto/16 :goto_3
.end method


# virtual methods
.method public batchDownloadFiles(Ljava/util/List;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 10
    .parameter
    .parameter "target"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/baidu/pcs/BaiduPCSStatusListener;",
            ")",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, sources:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 53
    .local v5, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSDownloader;->getAccessToken()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "method"

    const-string v9, "batchdownload"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v7, "zipcontent"

    invoke-virtual {p0, p1, v7}, Lcom/baidu/pcs/BaiduPCSDownloader;->buildBodyParamsWithList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 62
    .local v2, pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v7, "/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, file:Ljava/lang/String;
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "zipname"

    invoke-direct {v7, v8, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "https://pcs.baidu.com/rest/2.0/pcs/file?"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/baidu/pcs/BaiduPCSDownloader;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, url:Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 69
    .local v4, post:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v7, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v8, p0, Lcom/baidu/pcs/BaiduPCSDownloader;->Encoding_UTF8:Ljava/lang/String;

    invoke-direct {v7, v2, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 70
    invoke-direct {p0, v4, p2, p3}, Lcom/baidu/pcs/BaiduPCSDownloader;->startDownloading(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 77
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v4           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v6           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 78
    new-instance v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    .end local v5           #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    invoke-direct {v5}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    .line 81
    .restart local v5       #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :cond_1
    return-object v5

    .line 71
    .restart local v1       #file:Ljava/lang/String;
    .restart local v2       #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v3       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .restart local v4       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v6       #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 6
    .parameter "source"
    .parameter "target"
    .parameter "listener"

    .prologue
    .line 30
    const-string v3, "file"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/pcs/BaiduPCSDownloader;->downloadFileFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public downloadFileFromStream(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 6
    .parameter "source"
    .parameter "target"
    .parameter "listener"

    .prologue
    .line 36
    const-string v3, "stream"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/pcs/BaiduPCSDownloader;->downloadFileFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public downloadFileWithSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 6
    .parameter "source"
    .parameter "target"
    .parameter "type"
    .parameter "listener"

    .prologue
    .line 43
    const-string v3, "file"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/pcs/BaiduPCSDownloader;->downloadFileFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method
