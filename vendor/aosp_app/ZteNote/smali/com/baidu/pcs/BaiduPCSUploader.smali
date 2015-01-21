.class Lcom/baidu/pcs/BaiduPCSUploader;
.super Lcom/baidu/pcs/BaiduPCSActionBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/pcs/BaiduPCSUploader$1;,
        Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;
    }
.end annotation


# static fields
.field private static final KEY_ON_DUP:Ljava/lang/String; = "ondup"

.field private static final Key_BlockList:Ljava/lang/String; = "block_list"

.field private static final Key_Type:Ljava/lang/String; = "type"

.field private static final MaxPieceSize:I = 0x19000

.field private static final Max_Pieces:I = 0x400

.field private static final TmpFileName:Ljava/lang/String; = "upload.tmp"

.field private static final Value_Method_CreateSuperFile:Ljava/lang/String; = "createsuperfile"

.field private static final Value_Method_Upload:Ljava/lang/String; = "upload"

.field private static final Value_TmpFile:Ljava/lang/String; = "tmpfile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/baidu/pcs/BaiduPCSUploader;->setAccessToken(Ljava/lang/String;)V

    return-void
.end method

.method private createSuperFile(Ljava/util/List;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 6
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

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "method"

    const-string v4, "createsuperfile"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSUploader;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "path"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSUploader;->mUploadSameNameFile:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "ondup"

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSUploader;->mUploadSameNameFile:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://pcs.baidu.com/rest/2.0/pcs/file?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSUploader;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "block_list"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "param"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "utf-8"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {p0, v3}, Lcom/baidu/pcs/BaiduPCSUploader;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSUploader;->parseFileInfo(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method private startUploadingByTask(Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 6

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    iget-object v1, p1, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->source:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->target:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p1, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->target:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->source:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x19000

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->target:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/baidu/pcs/BaiduPCSUploader;->uploadFileInSinglePiece(Ljava/io/File;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    :goto_0
    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    invoke-virtual {v1, v2, v3, v2, v3}, Lcom/baidu/pcs/BaiduPCSStatusListener;->onProgress(JJ)V

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/baidu/pcs/BaiduPCSUploader;->uploadFileInMutiplePieces(Ljava/io/File;Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    goto :goto_0
.end method

.method private uploadFileInMutiplePieces(Ljava/io/File;Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 20

    new-instance v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    const/4 v4, 0x0

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v15, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    const-wide/16 v1, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    if-eqz v5, :cond_0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v8, v9, v12, v13}, Lcom/baidu/pcs/BaiduPCSStatusListener;->onProgress(JJ)V

    :cond_0
    const v9, 0x19000

    const/4 v5, 0x1

    :goto_0
    int-to-long v10, v9

    const-wide/16 v16, 0x400

    mul-long v10, v10, v16

    cmp-long v8, v10, v12

    if-gez v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    mul-int/lit16 v9, v5, 0x400

    goto :goto_0

    :cond_1
    new-array v5, v9, [B

    move-wide v10, v6

    :goto_1
    cmp-long v6, v10, v12

    if-gez v6, :cond_a

    int-to-long v6, v9

    add-long/2addr v6, v10

    cmp-long v6, v6, v12

    if-lez v6, :cond_9

    sub-long v6, v12, v10

    long-to-int v6, v6

    move v8, v6

    :goto_2
    if-ge v8, v9, :cond_8

    new-array v5, v8, [B

    move-object v7, v5

    :goto_3
    invoke-virtual {v15, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v15, v7}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v5

    if-gez v5, :cond_3

    move v1, v4

    :goto_4
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V

    if-nez v1, :cond_7

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->target:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1}, Lcom/baidu/pcs/BaiduPCSUploader;->createSuperFile(Ljava/util/List;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v1

    :goto_5
    move-object v3, v1

    :cond_2
    :goto_6
    return-object v3

    :cond_3
    const/4 v5, 0x0

    const-string v6, "upload.tmp"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5, v6}, Lcom/baidu/pcs/BaiduPCSUploader;->uploadPiece([BLjava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v6, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v6, v6, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v6, :cond_5

    iget-object v5, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    iget-object v5, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->blockList:Ljava/lang/String;

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    if-eqz v5, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v16, v5, v1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/baidu/pcs/BaiduPCSStatusListener;->progressInterval()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-ltz v16, :cond_4

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/baidu/pcs/BaiduPCSStatusListener;->onProgress(JJ)V

    move-wide v1, v5

    :cond_4
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    invoke-virtual {v5}, Lcom/baidu/pcs/BaiduPCSStatusListener;->toContinue()Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v1, 0x1

    iget-object v2, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v4, "User stopped uploading"

    iput-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    :catch_0
    move-exception v1

    iget-object v2, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_6

    :cond_5
    :try_start_1
    iget-object v1, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v2, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v2, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iput v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v1, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v2, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v2, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    int-to-long v5, v8

    add-long/2addr v5, v10

    move-wide v10, v5

    move-object v5, v7

    goto/16 :goto_1

    :catch_1
    move-exception v1

    iget-object v2, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object v1, v3

    goto :goto_5

    :cond_8
    move-object v7, v5

    goto/16 :goto_3

    :cond_9
    move v8, v9

    goto/16 :goto_2

    :cond_a
    move v1, v4

    goto/16 :goto_4
.end method

.method private uploadFileInSinglePiece(Ljava/io/File;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 6

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, p2, v3}, Lcom/baidu/pcs/BaiduPCSUploader;->uploadPiece([BLjava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2
    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private uploadPiece([BLjava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 5

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "method"

    const-string v4, "upload"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSUploader;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "path"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSUploader;->mUploadSameNameFile:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "ondup"

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSUploader;->mUploadSameNameFile:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://pcs.baidu.com/rest/2.0/pcs/file?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSUploader;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v1}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    new-instance v3, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    invoke-direct {v3, p1, p3}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    const-string v4, "uploadedfile"

    invoke-virtual {v1, v4, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {p0, v2}, Lcom/baidu/pcs/BaiduPCSUploader;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v2, :cond_1

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSUploader;->parseFileInfo(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    const-string v4, "tmpfile"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;-><init>(Lcom/baidu/pcs/BaiduPCSUploader;Lcom/baidu/pcs/BaiduPCSUploader$1;)V

    iput-object p1, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->source:Ljava/lang/String;

    iput-object p2, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->target:Ljava/lang/String;

    iput-object p3, v0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSUploader;->startUploadingByTask(Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method
