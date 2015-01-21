.class Lcom/baidu/pcs/BaiduPCSUploader;
.super Lcom/baidu/pcs/BaiduPCSActionBase;
.source "BaiduPCSUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;
    }
.end annotation


# static fields
.field private static final Key_BlockList:Ljava/lang/String; = "block_list"

.field private static final Key_Type:Ljava/lang/String; = "type"

.field private static final MaxPieceSize:I = 0x19000

.field private static final Max_Pieces:I = 0x400

.field private static final TmpFileName:Ljava/lang/String; = "upload.tmp"

.field private static final Value_Method_CreateSuperFile:Ljava/lang/String; = "createsuperfile"

.field private static final Value_Method_Upload:Ljava/lang/String; = "upload"

.field private static final Value_TmpFile:Ljava/lang/String; = "tmpfile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;-><init>()V

    return-void
.end method

.method private createSuperFile(Ljava/util/List;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 15
    .parameter
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, md5s:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v10}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    .line 244
    .local v10, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 245
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v7, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "method"

    const-string v14, "createsuperfile"

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSUploader;->getAccessToken()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "path"

    move-object/from16 v0, p2

    invoke-direct {v12, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "https://pcs.baidu.com/rest/2.0/pcs/file?"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/baidu/pcs/BaiduPCSUploader;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 252
    .local v11, url:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v1, bodyParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p1, :cond_0

    .line 255
    new-instance v4, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 256
    .local v4, json:Lorg/json/JSONArray;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 257
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONArray;>;"
    const-string v12, "block_list"

    invoke-interface {v5, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 261
    .local v6, md5list:Lorg/json/JSONObject;
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "param"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v4           #json:Lorg/json/JSONArray;
    .end local v5           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONArray;>;"
    .end local v6           #md5list:Lorg/json/JSONObject;
    :cond_0
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8, v11}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 266
    .local v8, post:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v12, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v13, "utf-8"

    invoke-direct {v12, v1, v13}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 268
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v12, 0x6

    if-lt v3, v12, :cond_2

    .line 296
    .end local v1           #bodyParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #i:I
    .end local v7           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v8           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v11           #url:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v10

    .line 270
    .restart local v1       #bodyParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v3       #i:I
    .restart local v7       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .restart local v8       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v11       #url:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v8}, Lcom/baidu/pcs/BaiduPCSUploader;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v9

    .line 272
    .local v9, response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    if-eqz v9, :cond_4

    .line 273
    iget-object v12, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v13, v9, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v13, v12, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 274
    iget-object v12, v9, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v12}, Lcom/baidu/pcs/BaiduPCSUploader;->parseFileInfo(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v10

    .line 276
    if-eqz v10, :cond_3

    iget-object v12, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v12, v12, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v12, :cond_1

    .line 281
    :cond_3
    add-int/lit8 v12, v3, 0x1

    mul-int/lit16 v12, v12, 0x3e8

    int-to-long v12, v12

    :try_start_1
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    :catch_0
    move-exception v2

    .line 284
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 290
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v3           #i:I
    .end local v9           #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    :catch_1
    move-exception v2

    .line 292
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    iget-object v12, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_1
.end method

.method private startUploadingByTask(Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 8
    .parameter "task"

    .prologue
    .line 43
    new-instance v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    .line 45
    .local v3, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    iget-object v4, p1, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->source:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->target:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->source:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p1, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->target:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 46
    new-instance v0, Ljava/io/File;

    iget-object v4, p1, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->source:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 51
    .local v1, length:J
    const-wide/32 v4, 0x19000

    cmp-long v4, v4, v1

    if-lez v4, :cond_1

    .line 52
    iget-object v4, p1, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->target:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/baidu/pcs/BaiduPCSUploader;->uploadFileInSinglePiece(Ljava/io/File;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v3

    .line 58
    :goto_0
    iget-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v4, :cond_0

    iget-object v4, p1, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    if-eqz v4, :cond_0

    .line 59
    iget-object v4, p1, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    invoke-virtual {v4, v1, v2, v1, v2}, Lcom/baidu/pcs/BaiduPCSStatusListener;->onProgress(JJ)V

    .line 64
    .end local v0           #file:Ljava/io/File;
    .end local v1           #length:J
    :cond_0
    return-object v3

    .line 55
    .restart local v0       #file:Ljava/io/File;
    .restart local v1       #length:J
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/baidu/pcs/BaiduPCSUploader;->uploadFileInMutiplePieces(Ljava/io/File;Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v3

    goto :goto_0
.end method

.method private uploadFileInMutiplePieces(Ljava/io/File;Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 25
    .parameter "file"
    .parameter "task"

    .prologue
    .line 101
    new-instance v19, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct/range {v19 .. v19}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    .line 103
    .local v19, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 105
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 107
    .local v14, length:J
    const/4 v13, 0x0

    .line 109
    .local v13, error:Z
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v17, md5s:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v21, "r"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-direct {v3, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .local v3, accFile:Ljava/io/RandomAccessFile;
    const-wide/16 v8, 0x0

    .line 115
    .local v8, doneLength:J
    const-wide/16 v4, 0x0

    .line 117
    .local v4, beginMS:J
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 118
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2, v14, v15}, Lcom/baidu/pcs/BaiduPCSStatusListener;->onProgress(JJ)V

    .line 121
    :cond_0
    const v16, 0x19000

    .line 122
    .local v16, maxSize:I
    const/4 v6, 0x1

    .line 124
    .local v6, bigger:I
    :goto_0
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x400

    mul-long v21, v21, v23

    cmp-long v21, v21, v14

    if-ltz v21, :cond_2

    .line 128
    move/from16 v0, v16

    new-array v7, v0, [B

    .line 130
    .local v7, bytes:[B
    :goto_1
    cmp-long v21, v8, v14

    if-ltz v21, :cond_3

    .line 177
    :goto_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 179
    if-nez v13, :cond_1

    .line 180
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->target:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/baidu/pcs/BaiduPCSUploader;->createSuperFile(Ljava/util/List;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v19

    .line 191
    .end local v3           #accFile:Ljava/io/RandomAccessFile;
    .end local v4           #beginMS:J
    .end local v6           #bigger:I
    .end local v7           #bytes:[B
    .end local v8           #doneLength:J
    .end local v13           #error:Z
    .end local v14           #length:J
    .end local v16           #maxSize:I
    .end local v17           #md5s:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_3
    return-object v19

    .line 125
    .restart local v3       #accFile:Ljava/io/RandomAccessFile;
    .restart local v4       #beginMS:J
    .restart local v6       #bigger:I
    .restart local v8       #doneLength:J
    .restart local v13       #error:Z
    .restart local v14       #length:J
    .restart local v16       #maxSize:I
    .restart local v17       #md5s:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v6, v6, 0x1

    mul-int/lit16 v0, v6, 0x400

    move/from16 v16, v0

    goto :goto_0

    .line 132
    .restart local v7       #bytes:[B
    :cond_3
    move/from16 v20, v16

    .line 133
    .local v20, toLength:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v21, v21, v8

    cmp-long v21, v21, v14

    if-lez v21, :cond_4

    .line 134
    sub-long v21, v14, v8

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v20, v0

    .line 137
    :cond_4
    move/from16 v0, v20

    move/from16 v1, v16

    if-ge v0, v1, :cond_5

    .line 138
    move/from16 v0, v20

    new-array v7, v0, [B

    .line 141
    :cond_5
    invoke-virtual {v3, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 142
    invoke-virtual {v3, v7}, Ljava/io/RandomAccessFile;->read([B)I

    .line 144
    const/16 v21, 0x0

    const-string v22, "upload.tmp"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v7, v1, v2}, Lcom/baidu/pcs/BaiduPCSUploader;->uploadPiece([BLjava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v18

    .line 146
    .local v18, result:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    move/from16 v21, v0

    if-nez v21, :cond_7

    .line 148
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->blockList:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 153
    .local v11, endMS:J
    sub-long v21, v11, v4

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    move-object/from16 v23, v0

    .line 154
    invoke-virtual/range {v23 .. v23}, Lcom/baidu/pcs/BaiduPCSStatusListener;->progressInterval()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-ltz v21, :cond_6

    .line 155
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9, v14, v15}, Lcom/baidu/pcs/BaiduPCSStatusListener;->onProgress(JJ)V

    .line 156
    move-wide v4, v11

    .line 159
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/baidu/pcs/BaiduPCSStatusListener;->toContinue()Z

    move-result v21

    if-nez v21, :cond_8

    .line 161
    const/4 v13, 0x1

    .line 162
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-object/from16 v21, v0

    const-string v22, "User stopped uploading"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 182
    .end local v3           #accFile:Ljava/io/RandomAccessFile;
    .end local v4           #beginMS:J
    .end local v6           #bigger:I
    .end local v7           #bytes:[B
    .end local v8           #doneLength:J
    .end local v11           #endMS:J
    .end local v16           #maxSize:I
    .end local v18           #result:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .end local v20           #toLength:I
    :catch_0
    move-exception v10

    .line 184
    .local v10, e:Ljava/io/FileNotFoundException;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-object/from16 v21, v0

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto/16 :goto_3

    .line 168
    .end local v10           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #accFile:Ljava/io/RandomAccessFile;
    .restart local v4       #beginMS:J
    .restart local v6       #bigger:I
    .restart local v7       #bytes:[B
    .restart local v8       #doneLength:J
    .restart local v16       #maxSize:I
    .restart local v18       #result:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .restart local v20       #toLength:I
    :cond_7
    :try_start_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 169
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    const/4 v13, 0x1

    .line 171
    goto/16 :goto_2

    .line 174
    :cond_8
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v8, v8, v21

    goto/16 :goto_1

    .line 185
    .end local v3           #accFile:Ljava/io/RandomAccessFile;
    .end local v4           #beginMS:J
    .end local v6           #bigger:I
    .end local v7           #bytes:[B
    .end local v8           #doneLength:J
    .end local v16           #maxSize:I
    .end local v18           #result:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .end local v20           #toLength:I
    :catch_1
    move-exception v10

    .line 187
    .local v10, e:Ljava/io/IOException;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-object/from16 v21, v0

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method private uploadFileInSinglePiece(Ljava/io/File;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 8
    .parameter "file"
    .parameter "target"

    .prologue
    .line 72
    new-instance v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v4}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    .line 75
    .local v4, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v0, p1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .local v0, accFile:Ljava/io/RandomAccessFile;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v1, v6, [B

    .line 77
    .local v1, bytes:[B
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 79
    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 80
    .local v3, index:I
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, suffix:Ljava/lang/String;
    invoke-direct {p0, v1, p2, v5}, Lcom/baidu/pcs/BaiduPCSUploader;->uploadPiece([BLjava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v4

    .line 83
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    .end local v0           #accFile:Ljava/io/RandomAccessFile;
    .end local v1           #bytes:[B
    .end local v3           #index:I
    .end local v5           #suffix:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 85
    :catch_0
    move-exception v2

    .line 87
    .local v2, e:Ljava/io/FileNotFoundException;
    iget-object v6, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 88
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 90
    .local v2, e:Ljava/io/IOException;
    iget-object v6, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method private uploadPiece([BLjava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 10
    .parameter "bytes"
    .parameter "target"
    .parameter "file"

    .prologue
    .line 199
    new-instance v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v5}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    .line 201
    .local v5, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v2, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "method"

    const-string v9, "upload"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSUploader;->getAccessToken()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 206
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "path"

    invoke-direct {v7, v8, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "https://pcs.baidu.com/rest/2.0/pcs/file?"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/pcs/BaiduPCSUploader;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, url:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 216
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 218
    .local v3, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v1, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v1}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 219
    .local v1, entity:Lorg/apache/http/entity/mime/MultipartEntity;
    new-instance v0, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    invoke-direct {v0, p1, p3}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    .line 220
    .local v0, bsData:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v7, "uploadedfile"

    invoke-virtual {v1, v7, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 222
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 224
    invoke-virtual {p0, v3}, Lcom/baidu/pcs/BaiduPCSUploader;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v4

    .line 226
    .local v4, response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    if-eqz v4, :cond_0

    .line 227
    iget-object v7, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v8, v4, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 228
    iget-object v7, v4, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v7, :cond_0

    .line 229
    iget-object v7, v4, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v7}, Lcom/baidu/pcs/BaiduPCSUploader;->parseFileInfo(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v5

    .line 234
    .end local v0           #bsData:Lorg/apache/http/entity/mime/content/ContentBody;
    .end local v1           #entity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v3           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    :cond_0
    return-object v5

    .line 209
    .end local v6           #url:Ljava/lang/String;
    :cond_1
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "type"

    const-string v9, "tmpfile"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 2
    .parameter "source"
    .parameter "target"
    .parameter "listener"

    .prologue
    .line 30
    new-instance v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;-><init>(Lcom/baidu/pcs/BaiduPCSUploader;Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;)V

    .line 31
    .local v0, task:Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;
    iput-object p1, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->source:Ljava/lang/String;

    .line 32
    iput-object p2, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->target:Ljava/lang/String;

    .line 33
    iput-object p3, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    .line 35
    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSUploader;->startUploadingByTask(Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v1

    return-object v1
.end method
