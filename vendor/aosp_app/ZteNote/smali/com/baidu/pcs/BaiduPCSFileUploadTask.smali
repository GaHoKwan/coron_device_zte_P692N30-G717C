.class public Lcom/baidu/pcs/BaiduPCSFileUploadTask;
.super Lcom/baidu/pcs/BaiduPCSFileTransferTask;


# static fields
.field private static final KEY_BLOCK_LIST:Ljava/lang/String; = "block_list"

.field private static final KEY_ON_DUP:Ljava/lang/String; = "ondup"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final MAX_PIECES:I = 0x400

.field private static final MAX_PIECE_SIZE:I = 0x19000

.field private static final MD5_COLUMEN_NAME:Ljava/lang/String; = "data2"

.field private static final TAG:Ljava/lang/String; = "FileUploadTask"

.field private static final TEM_FILE_NAME:Ljava/lang/String; = "upload.tmp"

.field private static final VALUE_METHOD_CREATE_SUPER_FILE:Ljava/lang/String; = "createsuperfile"

.field private static final VALUE_METHOD_UPLOAD:Ljava/lang/String; = "upload"

.field private static final VALUE_TEM_FILE:Ljava/lang/String; = "tmpfile"


# instance fields
.field private mClassUploadSameNameFile:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

.field private mMaxPieceSize:I

.field private mPiecesMd5sForBigFile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mPiecesMd5sForBigFile:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mClassUploadSameNameFile:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    const v0, 0x4b000

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mMaxPieceSize:I

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mLocalPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/pcs/BaiduPCSFileHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setFileName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mData2:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mData2:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FileUploadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data2----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mData2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mData2:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mPiecesMd5sForBigFile:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mType:I

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mData3:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mUploadSameNameFile:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->createUploadSameNameFileClass()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mPiecesMd5sForBigFile:Ljava/util/List;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mClassUploadSameNameFile:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    const v0, 0x4b000

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mMaxPieceSize:I

    iput-object p4, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mType:I

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mData3:Ljava/lang/String;

    return-void
.end method

.method private cloudMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduCloudMatch;

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduCloudMatch;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mClassUploadSameNameFile:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduCloudMatch;->setUploadSameNameFile(Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)V

    invoke-virtual {v0, p1, p2}, Lcom/baidu/pcs/BaiduCloudMatch;->cloudMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method private createSuperFile(Ljava/util/List;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 8
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

    iget-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "method"

    const-string v5, "createsuperfile"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "path"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mUploadSameNameFile:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "ondup"

    iget-object v5, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mUploadSameNameFile:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://pcs.baidu.com/rest/2.0/pcs/file?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "block_list"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "param"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "FileUploadTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "md5list----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    const-string v1, "FileUploadTask"

    const-string v4, "createSuperFile--pause--"

    invoke-static {v1, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->makeHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/HttpClient;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->parseFileInfo(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/16 v2, 0x7955

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->hasCreatedSuperFileBefore(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v2, 0x0

    iput v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
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

.method private createUploadSameNameFileClass()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mUploadSameNameFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mUploadSameNameFile:Ljava/lang/String;

    const-string v1, "overwrite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;->overWrite:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mClassUploadSameNameFile:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mUploadSameNameFile:Ljava/lang/String;

    const-string v1, "newcopy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;->rename:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mClassUploadSameNameFile:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mClassUploadSameNameFile:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    goto :goto_0
.end method

.method private hasCreatedSuperFileBefore(Ljava/util/List;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lcom/baidu/pcs/BaiduPCSMeta;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSMeta;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSMeta;->setAccessToken(Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;-><init>()V

    invoke-virtual {v0, p2, v3}, Lcom/baidu/pcs/BaiduPCSMeta;->meta(Ljava/lang/String;Z)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->blockList:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mLocalPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/pcs/BaiduPCSFileHelper;->getFileMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :cond_1
    move v6, v3

    move-object v5, v0

    :goto_0
    if-ge v6, v1, :cond_7

    if-eqz v5, :cond_7

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_7

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_1
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v5

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ne v6, v1, :cond_4

    if-eqz v0, :cond_4

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_3
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    :goto_4
    return v0

    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_4

    :cond_4
    move v0, v3

    goto :goto_4

    :cond_5
    move-object v1, v0

    goto :goto_3

    :cond_6
    move-object v2, v0

    goto :goto_1

    :cond_7
    move-object v0, v5

    goto :goto_2
.end method

.method private makePostUrl(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "method"

    const-string v3, "upload"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "path"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mUploadSameNameFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ondup"

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mUploadSameNameFile:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://pcs.baidu.com/rest/2.0/pcs/file?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_1
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    const-string v3, "tmpfile"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private needUpload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-wide/16 v0, 0x0

    const/16 v7, 0x6e

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mOffset:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setFileSize(J)V

    const-wide/32 v4, 0x40000

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->cloudMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v4

    iget-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v5, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/16 v6, 0x7955

    if-ne v5, v6, :cond_6

    iget-boolean v5, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-gt v5, v2, :cond_5

    iget-object v5, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mPiecesMd5sForBigFile:Ljava/util/List;

    invoke-direct {p0, v5, p2}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->hasCreatedSuperFileBefore(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setCurrentOffset(J)V

    iget-boolean v5, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-gt v5, v2, :cond_3

    iget-object v2, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iput v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->notifyProgress(JJ)V

    invoke-virtual {p0, v7}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    iget-object v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v1, "cloud upload success"

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    iget-object v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v1, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->notifyStatus(ILjava/lang/String;)V

    :goto_1
    const-string v0, "FileUploadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFileTask errorcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v2, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v2, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_0

    :cond_3
    const-string v0, "task paused/deleted by user"

    invoke-virtual {p0, v3, v0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->notifyStatus(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    iget-object v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v1, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->notifyStatus(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "task paused/deleted by user"

    invoke-virtual {p0, v3, v0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->notifyStatus(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v5, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v5, :cond_9

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setCurrentOffset(J)V

    iget-boolean v5, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-gt v5, v2, :cond_8

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->notifyProgress(JJ)V

    invoke-virtual {p0, v7}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    iget-object v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v1, "cloud upload success"

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :cond_7
    iget-object v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v1, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->notifyStatus(ILjava/lang/String;)V

    :goto_2
    const-string v0, "FileUploadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFileTask errorcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v2, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v2, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_0

    :cond_8
    const-string v0, "task paused/deleted by user"

    invoke-virtual {p0, v3, v0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->notifyStatus(ILjava/lang/String;)V

    goto :goto_2

    :cond_9
    move v0, v2

    goto/16 :goto_0
.end method

.method private setMaxPieceSize(J)V
    .locals 3

    const/high16 v0, 0x10

    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    const v0, 0x4b000

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mMaxPieceSize:I

    :goto_0
    return-void

    :cond_0
    const/high16 v1, 0x50

    int-to-long v1, v1

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    const v0, 0x7d000

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mMaxPieceSize:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mMaxPieceSize:I

    goto :goto_0
.end method

.method private setPieceMd5ForBigFile()V
    .locals 5

    sget-boolean v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mFileClientClosed:Z

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mPiecesMd5sForBigFile:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mPiecesMd5sForBigFile:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileUploadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "md5list----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mTaskId:J

    const-string v4, "data2"

    invoke-static {v1, v2, v3, v0, v4}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private startUploadingByTask(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 8

    const-wide/16 v6, 0x0

    const/16 v4, 0x795a

    const/16 v3, 0x6a

    const-string v0, "FileUploadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startUploadingByTask----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->needUpload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mOrignalOffset:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    invoke-virtual {p0, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setFileSize(J)V

    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setMaxPieceSize(J)V

    const-string v0, "FileUploadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MaxPieceSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mMaxPieceSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mMaxPieceSize:I

    int-to-long v4, v0

    cmp-long v0, v4, v2

    if-lez v0, :cond_4

    invoke-direct {p0, v1, p2}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->uploadFileInSinglePiece(Ljava/io/File;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    :goto_1
    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v1, :cond_2

    const-string v1, "FileUploadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----------onProgress------upload from last stop----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->notifyProgress(JJ)V

    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_7

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v2, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->notifyStatus(ILjava/lang/String;)V

    :cond_3
    :goto_3
    const-string v1, "FileUploadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------onProgress----------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v3, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v3, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->uploadFileInMutiplePieces(Ljava/io/File;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-nez v1, :cond_6

    invoke-virtual {p0, v3}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    const-string v1, "FileUploadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file size is zero :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iput v4, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v2, "file size is zero"

    iput-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v3}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    const-string v1, "FileUploadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file not exist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iput v4, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v2, "file not exist"

    iput-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    iget-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v1, :cond_3

    const/4 v1, 0x0

    const-string v2, "task paused/deleted by user"

    invoke-virtual {p0, v1, v2}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->notifyStatus(ILjava/lang/String;)V

    goto/16 :goto_3
.end method

.method private updateOffsetAndMd5(J)V
    .locals 6

    iput-wide p1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mOffset:J

    sget-boolean v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mFileClientClosed:Z

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mPiecesMd5sForBigFile:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mPiecesMd5sForBigFile:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v0, "FileUploadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "md5list----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mTaskId:J

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTaskOffsetAndMd5(Landroid/content/Context;JJLjava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mTaskId:J

    invoke-static {v0, v1, v2, p1, p2}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTaskOffset(Landroid/content/Context;JJ)I

    goto :goto_1
.end method

.method private uploadFileInMutiplePieces(Ljava/io/File;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 22

    new-instance v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v10}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v16

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    :try_start_0
    new-instance v12, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mOrignalOffset:J

    const-wide/16 v4, 0x0

    const-string v3, "FileUploadTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----------onProgress------upload from last stop----"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->notifyProgress(JJ)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mMaxPieceSize:I

    const/4 v3, 0x1

    :goto_0
    int-to-long v8, v15

    const-wide/16 v18, 0x400

    mul-long v8, v8, v18

    cmp-long v8, v8, v16

    if-gez v8, :cond_0

    const v8, 0x19000

    add-int/lit8 v3, v3, 0x1

    mul-int v15, v8, v3

    goto :goto_0

    :cond_0
    const-string v3, "FileUploadTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----------maxSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " doneLength:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v3, v6, v16

    if-nez v3, :cond_1

    const-string v3, "FileUploadTask"

    const-string v8, "----------last stop not createsuperfile:"

    invoke-static {v3, v8}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-array v3, v15, [B

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->makePostUrl(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->makeHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v19

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v8, :cond_30

    cmp-long v8, v6, v16

    if-gez v8, :cond_30

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v3, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/16 v4, 0x795a

    iput v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v3, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v4, "file not exist"

    iput-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    const/4 v13, 0x1

    move v5, v13

    :goto_2
    cmp-long v3, v6, v16

    if-nez v3, :cond_2c

    const/4 v4, 0x1

    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-eqz v3, :cond_2

    const-string v3, "FileUploadTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "user pause"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    :cond_2
    if-eqz v12, :cond_3

    :try_start_3
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    if-nez v3, :cond_17

    if-eqz v4, :cond_4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    :cond_4
    if-nez v5, :cond_14

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mPiecesMd5sForBigFile:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->createSuperFile(Ljava/util/List;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v10

    :cond_5
    :goto_5
    iget-object v3, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v3, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v3, :cond_15

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-eqz v3, :cond_6

    if-eqz v4, :cond_15

    :cond_6
    const/16 v3, 0x6e

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    :cond_7
    :goto_7
    return-object v10

    :cond_8
    int-to-long v8, v15

    add-long/2addr v8, v6

    cmp-long v8, v8, v16

    if-lez v8, :cond_2f

    sub-long v8, v16, v6

    long-to-int v8, v8

    :goto_8
    if-ge v8, v15, :cond_2e

    :try_start_4
    new-array v3, v8, [B

    move-object v14, v3

    :goto_9
    invoke-virtual {v12, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v12, v14}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    if-gez v3, :cond_9

    move v5, v13

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-eqz v3, :cond_a

    const-string v3, "FileUploadTask"

    const-string v4, "uploadFileInMutiplePieces------Pause----"

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v13

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_10

    const-string v3, "FileUploadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "too many instance running and num is: ----------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    if-eqz v12, :cond_b

    :try_start_5
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_b
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mPiecesMd5sForBigFile:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->createSuperFile(Ljava/util/List;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v3

    :goto_b
    iget-object v3, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v3, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-eqz v3, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v3, :cond_e

    const/16 v3, 0x6a

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    goto/16 :goto_7

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :cond_d
    const/16 v3, 0x6e

    goto :goto_c

    :cond_e
    const/16 v3, 0x69

    goto :goto_c

    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    goto/16 :goto_7

    :cond_10
    :try_start_6
    const-string v3, "upload.tmp"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v14, v3, v1, v2}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->uploadPiece([BLjava/lang/String;Lorg/apache/http/client/methods/HttpPost;Lorg/apache/http/client/HttpClient;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v3

    const-string v9, "FileUploadTask"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "uploadFileInMutiplePieces----"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " errrcode:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " msg:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v9, v0}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_13

    iget-object v9, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v9, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v9, :cond_13

    const-string v9, "FileUploadTask"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "result.commonFileInfo.blockList----"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->blockList:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v9, v0}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    iget-object v3, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->blockList:Ljava/lang/String;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v20, 0x2

    move/from16 v0, v20

    if-le v9, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mPiecesMd5sForBigFile:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    int-to-long v8, v8

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->updateOffsetAndMd5(J)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-eqz v3, :cond_12

    const-string v3, "FileUploadTask"

    const-string v4, "uploadFileInMutiplePieces------Pause----"

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v13

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mSize:J

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->notifyProgressWithInterval(JJJ)J

    move-result-wide v4

    move-object v3, v14

    goto/16 :goto_1

    :cond_13
    iget-object v4, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v5, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v5, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iput v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v4, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v3, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v3, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    iput-object v3, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    const/4 v13, 0x1

    move v5, v13

    goto/16 :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :cond_14
    if-eqz v5, :cond_5

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v3, :cond_16

    const/16 v3, 0x6a

    goto/16 :goto_6

    :cond_16
    const/16 v3, 0x69

    goto/16 :goto_6

    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    goto/16 :goto_7

    :catch_2
    move-exception v3

    move-object v5, v4

    move v6, v13

    move v4, v11

    :goto_d
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    iget-object v7, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v5, :cond_18

    :try_start_8
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_18
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    if-nez v3, :cond_1d

    if-eqz v4, :cond_19

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    :cond_19
    iget-object v3, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v3, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v3, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-eqz v3, :cond_1a

    if-eqz v4, :cond_1b

    :cond_1a
    const/16 v3, 0x6e

    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    goto/16 :goto_7

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v3, :cond_1c

    const/16 v3, 0x6a

    goto :goto_f

    :cond_1c
    const/16 v3, 0x69

    goto :goto_f

    :cond_1d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    goto/16 :goto_7

    :catch_4
    move-exception v3

    move-object v12, v4

    :goto_10
    :try_start_9
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    iget-object v4, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v12, :cond_1e

    :try_start_a
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_1e
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    if-nez v3, :cond_23

    if-eqz v11, :cond_1f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    :cond_1f
    iget-object v3, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v3, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v3, :cond_21

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-eqz v3, :cond_20

    if-eqz v11, :cond_21

    :cond_20
    const/16 v3, 0x6e

    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    goto/16 :goto_7

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v3, :cond_22

    const/16 v3, 0x6a

    goto :goto_12

    :cond_22
    const/16 v3, 0x69

    goto :goto_12

    :cond_23
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    goto/16 :goto_7

    :catchall_0
    move-exception v3

    move-object v12, v4

    move-object v4, v3

    :goto_13
    if-eqz v12, :cond_24

    :try_start_b
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :cond_24
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    if-nez v3, :cond_2b

    if-eqz v11, :cond_25

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    :cond_25
    if-nez v13, :cond_28

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mPiecesMd5sForBigFile:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->createSuperFile(Ljava/util/List;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v10

    :cond_26
    :goto_15
    iget-object v3, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v3, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v3, :cond_29

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-eqz v3, :cond_27

    if-eqz v11, :cond_29

    :cond_27
    const/16 v3, 0x6e

    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    :goto_17
    throw v4

    :catch_6
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    :cond_28
    if-eqz v13, :cond_26

    goto :goto_15

    :cond_29
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v3, :cond_2a

    const/16 v3, 0x6a

    goto :goto_16

    :cond_2a
    const/16 v3, 0x69

    goto :goto_16

    :cond_2b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    goto :goto_17

    :catchall_1
    move-exception v3

    move-object v4, v3

    goto :goto_13

    :catchall_2
    move-exception v3

    move v11, v4

    move v13, v5

    move-object v4, v3

    goto :goto_13

    :catchall_3
    move-exception v3

    move v11, v4

    move-object v12, v5

    move v13, v6

    move-object v4, v3

    goto :goto_13

    :catch_7
    move-exception v3

    goto/16 :goto_10

    :catch_8
    move-exception v3

    move v11, v4

    move v13, v5

    goto/16 :goto_10

    :catch_9
    move-exception v3

    move v4, v11

    move-object v5, v12

    move v6, v13

    goto/16 :goto_d

    :catch_a
    move-exception v3

    move v6, v5

    move-object v5, v12

    goto/16 :goto_d

    :cond_2c
    move v4, v11

    goto/16 :goto_3

    :cond_2d
    move-object v3, v10

    goto/16 :goto_b

    :cond_2e
    move-object v14, v3

    goto/16 :goto_9

    :cond_2f
    move v8, v15

    goto/16 :goto_8

    :cond_30
    move v5, v13

    goto/16 :goto_2
.end method

.method private uploadFileInSinglePiece(Ljava/io/File;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 12

    const/4 v0, 0x0

    const/4 v10, 0x1

    const/16 v9, 0x6e

    const/16 v8, 0x6a

    const/4 v7, 0x0

    new-instance v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v2}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    :try_start_0
    iget-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mOrignalOffset:J

    iget-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mSize:J

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->notifyProgress(JJ)V

    iget-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mOrignalOffset:J

    iget-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mSize:J

    cmp-long v1, v3, v5

    if-ltz v1, :cond_3

    iget-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mSize:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    iget-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v3, 0x0

    iput v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    :goto_0
    const-string v2, "FileUploadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadFileInSinglePiece----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v9}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    :cond_0
    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mSize:J

    invoke-virtual {p0, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setCurrentOffset(J)V

    :cond_1
    :goto_1
    move-object v2, v1

    :cond_2
    :goto_2
    return-object v2

    :cond_3
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v1, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mSize:J

    long-to-int v0, v3

    new-array v3, v0, [B

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_19

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-boolean v4, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-eqz v4, :cond_7

    const-string v0, "FileUploadTask"

    const-string v3, "uploadFileInMutiplePieces------Pause----"

    invoke-static {v0, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v0, "FileUploadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadFileInSinglePiece----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    if-nez v0, :cond_6

    iget-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v9}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    :cond_4
    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mSize:J

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setCurrentOffset(J)V

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, v8}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    goto :goto_2

    :cond_6
    iput-boolean v7, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    goto :goto_2

    :cond_7
    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->makeHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->makePostUrl(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-le v6, v10, :cond_b

    const-string v0, "FileUploadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "too many instance running and num is: ----------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const-string v0, "FileUploadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadFileInSinglePiece----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    if-nez v0, :cond_a

    iget-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v0, :cond_8

    invoke-virtual {p0, v9}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    :cond_8
    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mSize:J

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setCurrentOffset(J)V

    goto/16 :goto_2

    :cond_9
    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, v8}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    goto/16 :goto_2

    :cond_a
    iput-boolean v7, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    goto/16 :goto_2

    :cond_b
    :try_start_4
    invoke-direct {p0, v3, v0, v5, v4}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->uploadPiece([BLjava/lang/String;Lorg/apache/http/client/methods/HttpPost;Lorg/apache/http/client/HttpClient;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    :try_start_5
    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v2, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/16 v3, 0x7955

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mPiecesMd5sForBigFile:Ljava/util/List;

    invoke-direct {p0, v2, p2}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->hasCreatedSuperFileBefore(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v3, 0x0

    iput v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_c
    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_0

    :cond_d
    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v8}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    goto/16 :goto_1

    :cond_e
    iput-boolean v7, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    goto/16 :goto_1

    :catch_0
    move-exception v1

    move-object v11, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v11

    :goto_4
    :try_start_6
    iget-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const-string v0, "FileUploadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadFileInSinglePiece----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    if-nez v0, :cond_11

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v0, :cond_f

    invoke-virtual {p0, v9}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    :cond_f
    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mSize:J

    invoke-virtual {p0, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setCurrentOffset(J)V

    goto/16 :goto_1

    :cond_10
    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v8}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    goto/16 :goto_1

    :cond_11
    iput-boolean v7, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move-object v11, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v11

    :goto_5
    :try_start_7
    iget-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const-string v0, "FileUploadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadFileInSinglePiece----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v0, :cond_12

    invoke-virtual {p0, v9}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    :cond_12
    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mSize:J

    invoke-virtual {p0, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setCurrentOffset(J)V

    goto/16 :goto_1

    :cond_13
    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v8}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    goto/16 :goto_1

    :cond_14
    iput-boolean v7, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_6
    const-string v3, "FileUploadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uploadFileInSinglePiece----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v5, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v5, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    if-nez v1, :cond_18

    iget-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v1, :cond_15

    invoke-virtual {p0, v9}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    :cond_15
    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mSize:J

    invoke-virtual {p0, v1, v2}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setCurrentOffset(J)V

    :cond_16
    :goto_7
    throw v0

    :cond_17
    iget-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v1, :cond_16

    invoke-virtual {p0, v8}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    goto :goto_7

    :cond_18
    iput-boolean v7, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v11, v1

    move-object v1, v2

    move-object v2, v11

    goto/16 :goto_5

    :catch_3
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move-object v11, v1

    move-object v1, v2

    move-object v2, v11

    goto/16 :goto_4

    :catch_5
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_4

    :cond_19
    move-object v0, p2

    goto/16 :goto_3
.end method

.method private uploadPiece([BLjava/lang/String;Lorg/apache/http/client/methods/HttpPost;Lorg/apache/http/client/HttpClient;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 4

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    if-eqz p3, :cond_1

    new-instance v1, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v1}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    new-instance v2, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    invoke-direct {v2, p1, p2}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    const-string v3, "uploadedfile"

    invoke-virtual {v1, v3, v2}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    invoke-virtual {p3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v1, :cond_4

    invoke-virtual {p0, p3, p4}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/HttpClient;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v2, :cond_2

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->parseFileInfo(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/baidu/pcs/BaiduPCSQuotaInfo;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSQuotaInfo;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/pcs/BaiduPCSQuotaInfo;->setAccessToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/pcs/BaiduPCSQuotaInfo;->quotaInfo(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const v3, 0x9860

    iput v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v3, "server respomse null"

    iput-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v2, "FileUploadTask"

    const-string v3, "response null "

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "FileUploadTask"

    const-string v2, "uploadPiece-----pause----------"

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mCurrentState:I

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->notifyStatus(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    :try_start_2
    const-string v0, "FileUploadTask"

    const-string v1, "FileUploadTask----run start"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mOffset:J

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mOrignalOffset:J

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsPause:Z

    if-nez v0, :cond_3

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setTaskState(I)V

    const/4 v0, 0x0

    const-string v1, "task begin running"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->notifyStatus(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mLocalPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRemotePath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->startUploadingByTask(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    const-string v0, "FileUploadTask"

    const-string v1, "FileUploadTask----run end"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mIsCancelledTask:Z

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setSameNameFile(Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->setUploadSameNameFile(Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mUploadSameNameFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->mData3:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;->createUploadSameNameFileClass()V

    return-void
.end method
