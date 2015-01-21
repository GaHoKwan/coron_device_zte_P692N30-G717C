.class public Lcom/baidu/pcs/BaiduPCSFileUpload;
.super Lcom/baidu/pcs/BaiduPCSFileTransferTask;


# static fields
.field private static final KEY_BLOCK_LIST:Ljava/lang/String; = "block_list"

.field private static final KEY_ON_DUP:Ljava/lang/String; = "ondup"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final MAX_PIECES:I = 0x400

.field private static final MAX_PIECE_SIZE:I = 0x19000

.field private static final MD5_COLUMEN_NAME:Ljava/lang/String; = "data2"

.field private static final TAG:Ljava/lang/String; = "BaiduPCSFileUpload"

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
    .locals 5

    const/4 v4, 0x2

    invoke-direct {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mPiecesMd5sForBigFile:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mClassUploadSameNameFile:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    const v0, 0x4b000

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mMaxPieceSize:I

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mLocalPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/pcs/BaiduPCSFileHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setFileName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mData2:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mData2:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BaiduPCSFileUpload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data2----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mData2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mData2:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mPiecesMd5sForBigFile:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mType:I

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->createUploadSameNameFileClass()V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mData1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mData1:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setFileOffset(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setFileOffset(J)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mPiecesMd5sForBigFile:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mClassUploadSameNameFile:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    const v0, 0x4b000

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mMaxPieceSize:I

    if-eqz p2, :cond_0

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mLocalPath:Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mRemotePath:Ljava/lang/String;

    :cond_1
    iput-object p4, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mType:I

    const-string v0, "-1"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mData1:Ljava/lang/String;

    return-void
.end method

.method private computeFileSize(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v2, v5

    if-lez v2, :cond_1

    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v5, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/baidu/pcs/BaiduPCSFileUpload;->computeFileSize(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v3, v0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    move-wide v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method private createSuperFile(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

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

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "path"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mUploadSameNameFile:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "ondup"

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mUploadSameNameFile:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://pcs.baidu.com/rest/2.0/pcs/file?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileUpload;->buildParams(Ljava/util/List;)Ljava/lang/String;

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

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "BaiduPCSFileUpload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "md5list----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "utf-8"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->makeHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/baidu/pcs/BaiduPCSFileUpload;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/HttpClient;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileUpload;->parseFileInfo(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v1

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/16 v2, 0x7955

    if-ne v1, v2, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSFileUpload;->sameFileHasExist(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const v1, 0x9860

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v1, "server respomse null"

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method private createUploadSameNameFileClass()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mUploadSameNameFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mUploadSameNameFile:Ljava/lang/String;

    const-string v1, "overwrite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;->overWrite:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mClassUploadSameNameFile:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mUploadSameNameFile:Ljava/lang/String;

    const-string v1, "newcopy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;->rename:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mClassUploadSameNameFile:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mClassUploadSameNameFile:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    goto :goto_0
.end method

.method private getFileInfo()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;
    .locals 4

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mLocalPath:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->path:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mLocalPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->isDir:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mLocalPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->computeFileSize(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->size:J

    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->isDir:Z

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->size:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getSubFileList(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    array-length v0, v11

    if-lez v0, :cond_0

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    array-length v0, v11

    if-ge v9, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v11, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;

    const-wide/16 v1, 0x0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v4

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;-><init>(JLjava/lang/String;ZJJ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-object v10
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

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->getAccessToken()Ljava/lang/String;

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
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mUploadSameNameFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ondup"

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mUploadSameNameFile:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://pcs.baidu.com/rest/2.0/pcs/file?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->buildParams(Ljava/util/List;)Ljava/lang/String;

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

.method private makedir(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSFolderMaker;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSFolderMaker;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSFolderMaker;->setAccessToken(Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;->overWrite:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSFolderMaker;->setUploadSameNameFile(Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)V

    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSFolderMaker;->makeDir(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method private sameFileHasExist(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    new-instance v0, Lcom/baidu/pcs/BaiduPCSMeta;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSMeta;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSMeta;->setAccessToken(Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->needQuit()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p3, v3}, Lcom/baidu/pcs/BaiduPCSMeta;->meta(Ljava/lang/String;Z)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->needQuit()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->blockList:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_3

    invoke-static {p2}, Lcom/baidu/pcs/BaiduPCSFileHelper;->getFileMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :cond_3
    move v6, v3

    move-object v5, v0

    :goto_1
    if-ge v6, v1, :cond_9

    if-eqz v5, :cond_9

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_9

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_2
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v5

    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-ne v6, v1, :cond_6

    if-eqz v0, :cond_6

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_4
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v3

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_5
    move v0, v4

    goto/16 :goto_0

    :cond_6
    move v0, v3

    goto/16 :goto_0

    :cond_7
    move-object v1, v0

    goto :goto_4

    :cond_8
    move-object v2, v0

    goto :goto_2

    :cond_9
    move-object v0, v5

    goto :goto_3
.end method

.method private setMaxPieceSize(J)V
    .locals 3

    const/high16 v0, 0x10

    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    const v0, 0x4b000

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mMaxPieceSize:I

    :goto_0
    return-void

    :cond_0
    const/high16 v1, 0x50

    int-to-long v1, v1

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    const v0, 0x7d000

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mMaxPieceSize:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mMaxPieceSize:I

    goto :goto_0
.end method

.method private setOffsetAndMd5(JJJJ)V
    .locals 10

    iput-wide p3, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOffset:J

    sget-boolean v0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mFileClientClosed:Z

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mPiecesMd5sForBigFile:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mPiecesMd5sForBigFile:Ljava/util/List;

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

    const-string v0, "BaiduPCSFileUpload"

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

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mTaskId:J

    move-wide v3, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTaskOffsetAndMD5(Landroid/content/Context;JJLjava/lang/String;JJ)J

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mTaskId:J

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTaskOffset(Landroid/content/Context;JJJJ)J

    goto :goto_1
.end method

.method private tryToRapidUpload(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 3

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/pcs/BaiduCloudMatch;

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/pcs/BaiduCloudMatch;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mClassUploadSameNameFile:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    invoke-virtual {v1, v2}, Lcom/baidu/pcs/BaiduCloudMatch;->setUploadSameNameFile(Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)V

    invoke-virtual {v1, p1, p2}, Lcom/baidu/pcs/BaiduCloudMatch;->cloudMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v1

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v2, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iput v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private upload(Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 6

    iget-object v1, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    iget-wide v2, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    const-string v0, "BaiduPCSFileUpload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setMaxPieceSize(J)V

    const-string v0, "BaiduPCSFileUpload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "length:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " MaxPieceSize:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mMaxPieceSize:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mMaxPieceSize:I

    int-to-long v0, v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSFileUpload;->uploadFileInSinglePiece(Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSFileUpload;->uploadFileInMutiplePieces(Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "BaiduPCSFileUpload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file not exist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x795a

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v1, "file not exist"

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method private uploadDirectory()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 14

    const-wide/16 v1, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v10}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mLocalPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->computerDirectoryNamePosition(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSubFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->getSubFileInfoListFromDB(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSubFileInfoList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->needQuit()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSubFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;-><init>()V

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->getFileInfo()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->needQuit()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSize:J

    cmp-long v0, v5, v1

    if-gtz v0, :cond_3

    iget-wide v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->size:J

    cmp-long v0, v5, v1

    if-lez v0, :cond_2

    iget-wide v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->size:J

    invoke-virtual {p0, v5, v6}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setFileSize(J)V

    :cond_2
    iget-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSize:J

    invoke-virtual {p0, v1, v2, v5, v6}, Lcom/baidu/pcs/BaiduPCSFileUpload;->notifyProgress(JJ)V

    :cond_3
    iget-object v11, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSubFileInfoList:Ljava/util/List;

    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mLocalPath:Ljava/lang/String;

    iget-boolean v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->isDir:Z

    iget-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSize:J

    iget-wide v7, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOffset:J

    invoke-direct/range {v0 .. v8}, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;-><init>(JLjava/lang/String;ZJJ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->getmOffset()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    const-string v4, ""

    move v7, v9

    move-object v5, v10

    :goto_1
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSubFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_13

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->needQuit()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v6, v4

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->needQuit()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSubFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v7, v0, :cond_12

    iget v0, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v0, :cond_12

    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setTaskState(I)V

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSize:J

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSize:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileUpload;->notifyProgress(JJ)V

    :goto_3
    iget v0, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-failed_file_path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :cond_6
    iget v0, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v1, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUpload;->notifyStatus(ILjava/lang/String;)V

    :cond_7
    move-object v10, v5

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSubFileInfoList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;

    if-nez v3, :cond_9

    iput v9, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    move-object v0, v4

    :goto_4
    add-int/lit8 v3, v7, 0x1

    move-object v4, v0

    move v7, v3

    goto :goto_1

    :cond_9
    iget-wide v10, v3, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->getFileOffset()J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-gtz v0, :cond_a

    iput v9, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    move-object v0, v4

    goto :goto_4

    :cond_a
    iget-object v6, v3, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    iget-boolean v0, v3, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->isDir:Z

    if-eqz v0, :cond_f

    iget-object v0, v3, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->getSubFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, v8}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->createTask(Landroid/content/Context;Lcom/baidu/pcs/BaiduPCSFileTransferTask;Ljava/util/List;)V

    move v4, v9

    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_c

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;

    if-eqz v0, :cond_b

    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSubFileInfoList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_5

    :cond_c
    move-object v0, v5

    :cond_d
    invoke-interface {v8}, Ljava/util/List;->clear()V

    iget-wide v3, v3, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    const-string v5, "data1"

    invoke-virtual {p0, v3, v4, v5}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setCurrentFileOffset(JLjava/lang/String;)V

    iput v9, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    move-object v5, v0

    move-object v0, v6

    goto :goto_4

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v3, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    iget v5, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mDirectoryNamePosition:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->makedir(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-eqz v4, :cond_d

    invoke-interface {v8}, Ljava/util/List;->clear()V

    move-object v5, v0

    goto/16 :goto_2

    :cond_f
    iget-object v0, v3, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iput-boolean v9, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mRootPathIsDir:Z

    :cond_10
    invoke-direct {p0, v3}, Lcom/baidu/pcs/BaiduPCSFileUpload;->uploadFile(Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v5

    iget v0, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mRootPathIsDir:Z

    if-eqz v0, :cond_14

    iget-wide v3, v3, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    const-string v0, "data1"

    invoke-virtual {p0, v3, v4, v0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setCurrentFileOffsetAndResetMD5(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mPiecesMd5sForBigFile:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v0, v6

    goto/16 :goto_4

    :cond_11
    iget v0, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/16 v4, 0x795a

    if-ne v0, v4, :cond_5

    iget-wide v10, v3, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    cmp-long v0, v10, v1

    if-gtz v0, :cond_5

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mRootPathIsDir:Z

    if-eqz v0, :cond_5

    const-string v0, "BaiduPCSFileUpload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The file "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/pcs/BaiduPCSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput v9, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/4 v0, 0x0

    iput-object v0, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object v0, v6

    goto/16 :goto_4

    :cond_12
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setTaskState(I)V

    goto/16 :goto_3

    :cond_13
    move-object v6, v4

    goto/16 :goto_2

    :cond_14
    move-object v0, v6

    goto/16 :goto_4
.end method

.method private uploadFile(Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 10

    const-wide/16 v4, 0x0

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    iget v3, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mDirectoryNamePosition:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mRootPathIsDir:Z

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mRemotePath:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->getmOffset()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    iget-wide v2, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mPiecesMd5sForBigFile:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1
    iget-wide v2, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_6

    iget-wide v2, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    const-wide/32 v4, 0x40000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->needQuit()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->tryToRapidUpload(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v9

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->needQuit()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v9

    goto :goto_0

    :cond_3
    iget v1, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v1, :cond_4

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mTaskId:J

    iget-wide v3, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iget-wide v5, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    add-long/2addr v3, v5

    iget-wide v5, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    iget-wide v7, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setOffset(JJJJ)V

    iget-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iget-wide v2, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSize:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileUpload;->notifyProgress(JJ)V

    iget-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iput-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    move-object v0, v9

    goto :goto_0

    :cond_4
    iget v1, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/16 v2, 0x7955

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mPiecesMd5sForBigFile:Ljava/util/List;

    iget-object v2, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->sameFileHasExist(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mTaskId:J

    iget-wide v3, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iget-wide v5, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    add-long/2addr v3, v5

    iget-wide v5, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    iget-wide v7, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setOffset(JJJJ)V

    iget-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iget-wide v2, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSize:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileUpload;->notifyProgress(JJ)V

    iget-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iput-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    const/4 v0, 0x0

    iput v0, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    :cond_5
    move-object v0, v9

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->upload(Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    goto :goto_0
.end method

.method private uploadFileInMutiplePieces(Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 29

    new-instance v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v5}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    cmp-long v4, v6, v8

    if-ltz v4, :cond_1

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_1

    const/4 v4, 0x0

    iput v4, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/4 v4, 0x1

    :goto_0
    iget v6, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v6, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->needQuit()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mPiecesMd5sForBigFile:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v5, v1}, Lcom/baidu/pcs/BaiduPCSFileUpload;->createSuperFile(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v5

    :cond_0
    return-object v5

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mPiecesMd5sForBigFile:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    sub-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    :cond_2
    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v22, :cond_11

    const/4 v6, 0x0

    :try_start_0
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    move-object/from16 v0, v22

    invoke-direct {v14, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    move-wide/from16 v23, v0

    const-string v4, "BaiduPCSFileUpload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "upload from last stop "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v23

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mMaxPieceSize:I

    move/from16 v19, v0

    const/4 v4, 0x1

    :goto_1
    move/from16 v0, v19

    int-to-long v9, v0

    const-wide/16 v11, 0x400

    mul-long/2addr v9, v11

    cmp-long v6, v9, v23

    if-gez v6, :cond_3

    const v6, 0x19000

    add-int/lit8 v4, v4, 0x1

    mul-int v19, v6, v4

    goto :goto_1

    :cond_3
    const-string v4, "BaiduPCSFileUpload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "maxSize:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v19

    new-array v4, v0, [B

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/baidu/pcs/BaiduPCSFileUpload;->makePostUrl(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->makeHttpClient()Lorg/apache/http/client/HttpClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v26

    const-wide/16 v9, 0x0

    move-wide/from16 v20, v9

    move-wide/from16 v27, v7

    move-object v7, v5

    move-wide/from16 v5, v27

    :goto_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->needQuit()Z

    move-result v8

    if-nez v8, :cond_10

    cmp-long v8, v5, v23

    if-gez v8, :cond_10

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    const/16 v4, 0x795a

    iput v4, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v4, "file not exist"

    iput-object v4, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-wide v15, v5

    move v4, v13

    move-object v5, v7

    :goto_3
    cmp-long v6, v15, v23

    if-ltz v6, :cond_4

    const/4 v4, 0x1

    :cond_4
    if-eqz v14, :cond_5

    :try_start_3
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_5
    :goto_4
    move-object/from16 v0, p1

    iput-wide v15, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    goto/16 :goto_0

    :cond_6
    move/from16 v0, v19

    int-to-long v8, v0

    add-long/2addr v8, v5

    cmp-long v8, v8, v23

    if-lez v8, :cond_f

    sub-long v8, v23, v5

    long-to-int v8, v8

    :goto_5
    move/from16 v0, v19

    if-ge v8, v0, :cond_e

    :try_start_4
    new-array v4, v8, [B

    move-object/from16 v18, v4

    :goto_6
    invoke-virtual {v14, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    if-gez v4, :cond_7

    const/4 v4, 0x0

    iput v4, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/4 v13, 0x1

    move-wide v15, v5

    move v4, v13

    move-object v5, v7

    goto :goto_3

    :cond_7
    const-string v4, "upload.tmp"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileUpload;->uploadPiece([BLjava/lang/String;Lorg/apache/http/client/methods/HttpPost;Lorg/apache/http/client/HttpClient;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v4

    iget-object v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-object/from16 v17, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    if-eqz v4, :cond_d

    :try_start_5
    iget-object v7, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v7, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v7, :cond_d

    const-string v7, "BaiduPCSFileUpload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "blockList:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    iget-object v10, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->blockList:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    iget-object v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->blockList:Ljava/lang/String;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x2

    if-le v7, v9, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mPiecesMd5sForBigFile:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    :cond_8
    int-to-long v7, v8

    add-long v15, v5, v7

    :try_start_6
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mTaskId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    add-long/2addr v7, v15

    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    add-long/2addr v11, v15

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setOffsetAndMd5(JJJJ)V

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->needQuit()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v13

    move-object/from16 v5, v17

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    add-long v7, v15, v4

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSize:J

    move-object/from16 v4, p0

    move-wide/from16 v5, v20

    invoke-virtual/range {v4 .. v10}, Lcom/baidu/pcs/BaiduPCSFileUpload;->notifyProgressWithInterval(JJJ)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    move-result-wide v4

    move-wide/from16 v20, v4

    move-object/from16 v7, v17

    move-wide v5, v15

    move-object/from16 v4, v18

    goto/16 :goto_2

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :catch_1
    move-exception v4

    move-object/from16 v27, v4

    move-object v4, v5

    move-object/from16 v5, v27

    :goto_7
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v6, :cond_a

    :try_start_8
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_a
    :goto_8
    move-object/from16 v0, p1

    iput-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    move-object v5, v4

    move v4, v13

    goto/16 :goto_0

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_3
    move-exception v4

    move-object v14, v6

    move-object/from16 v27, v4

    move-object v4, v5

    move-object/from16 v5, v27

    :goto_9
    :try_start_9
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v14, :cond_b

    :try_start_a
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_b
    :goto_a
    move-object/from16 v0, p1

    iput-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    move-object v5, v4

    move v4, v13

    goto/16 :goto_0

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catchall_0
    move-exception v4

    move-object v14, v6

    :goto_b
    if-eqz v14, :cond_c

    :try_start_b
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_c
    :goto_c
    move-object/from16 v0, p1

    iput-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    throw v4

    :catch_5
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catchall_1
    move-exception v4

    goto :goto_b

    :catchall_2
    move-exception v4

    move-wide v7, v5

    goto :goto_b

    :catchall_3
    move-exception v4

    move-wide v7, v15

    goto :goto_b

    :catchall_4
    move-exception v4

    move-object v14, v6

    goto :goto_b

    :catch_6
    move-exception v4

    move-object/from16 v27, v4

    move-object v4, v5

    move-object/from16 v5, v27

    goto :goto_9

    :catch_7
    move-exception v4

    move-object/from16 v27, v4

    move-object v4, v7

    move-wide v7, v5

    move-object/from16 v5, v27

    goto :goto_9

    :catch_8
    move-exception v4

    move-wide v7, v5

    move-object v5, v4

    move-object/from16 v4, v17

    goto :goto_9

    :catch_9
    move-exception v4

    move-object v5, v4

    move-wide v7, v15

    move-object/from16 v4, v17

    goto :goto_9

    :catch_a
    move-exception v4

    move-object v6, v14

    move-object/from16 v27, v4

    move-object v4, v5

    move-object/from16 v5, v27

    goto :goto_7

    :catch_b
    move-exception v4

    move-object/from16 v27, v4

    move-object v4, v7

    move-wide v7, v5

    move-object v6, v14

    move-object/from16 v5, v27

    goto/16 :goto_7

    :catch_c
    move-exception v4

    move-wide v7, v5

    move-object v6, v14

    move-object v5, v4

    move-object/from16 v4, v17

    goto/16 :goto_7

    :catch_d
    move-exception v4

    move-object v5, v4

    move-object v6, v14

    move-wide v7, v15

    move-object/from16 v4, v17

    goto/16 :goto_7

    :cond_d
    move-wide v15, v5

    move v4, v13

    move-object/from16 v5, v17

    goto/16 :goto_3

    :cond_e
    move-object/from16 v18, v4

    goto/16 :goto_6

    :cond_f
    move/from16 v8, v19

    goto/16 :goto_5

    :cond_10
    move-wide v15, v5

    move v4, v13

    move-object v5, v7

    goto/16 :goto_3

    :cond_11
    move v4, v13

    goto/16 :goto_0
.end method

.method private uploadFileInSinglePiece(Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 11

    const/4 v0, 0x0

    new-instance v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v2}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    :try_start_0
    iget-wide v3, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    iget-wide v5, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    cmp-long v1, v3, v5

    if-ltz v1, :cond_1

    iget-wide v3, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    const/4 v1, 0x0

    iput v1, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v0, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v0, :cond_0

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mTaskId:J

    iget-wide v3, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iget-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    add-long/2addr v3, v5

    iget-wide v5, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    iget-wide v7, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setOffset(JJJJ)V

    iget-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iput-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->needQuit()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSize:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileUpload;->notifyProgress(JJ)V

    :cond_0
    :goto_1
    return-object v9

    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v1, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-wide v3, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    long-to-int v0, v3

    new-array v3, v0, [B

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->makeHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/baidu/pcs/BaiduPCSFileUpload;->makePostUrl(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v5

    invoke-direct {p0, v3, v0, v5, v4}, Lcom/baidu/pcs/BaiduPCSFileUpload;->uploadPiece([BLjava/lang/String;Lorg/apache/http/client/methods/HttpPost;Lorg/apache/http/client/HttpClient;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->needQuit()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/16 v3, 0x7955

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mPiecesMd5sForBigFile:Ljava/util/List;

    iget-object v3, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    invoke-direct {p0, v2, v3, p2}, Lcom/baidu/pcs/BaiduPCSFileUpload;->sameFileHasExist(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    move-object v9, v0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v9, v2

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileUpload;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v0, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v0, :cond_0

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mTaskId:J

    iget-wide v3, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iget-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    add-long/2addr v3, v5

    iget-wide v5, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    iget-wide v7, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setOffset(JJJJ)V

    iget-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iput-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->needQuit()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSize:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileUpload;->notifyProgress(JJ)V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move-object v9, v2

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileUpload;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v0, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v0, :cond_0

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mTaskId:J

    iget-wide v3, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iget-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    add-long/2addr v3, v5

    iget-wide v5, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    iget-wide v7, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setOffset(JJJJ)V

    iget-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iput-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->needQuit()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSize:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileUpload;->notifyProgress(JJ)V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    :goto_5
    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileUpload;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v0, :cond_3

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mTaskId:J

    iget-wide v3, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iget-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    add-long/2addr v3, v5

    iget-wide v5, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    iget-wide v7, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setOffset(JJJJ)V

    iget-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iput-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->needQuit()Z

    move-result v0

    if-nez v0, :cond_3

    iget-wide v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSize:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileUpload;->notifyProgress(JJ)V

    :cond_3
    throw v9

    :catchall_1
    move-exception v0

    move-object v9, v0

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v9

    move-object v9, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v9, v2

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v9, v0

    move-object v0, v2

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v9, v2

    goto/16 :goto_3

    :catch_5
    move-exception v2

    move-object v9, v0

    move-object v0, v2

    goto/16 :goto_3

    :cond_4
    move-object v0, p2

    goto/16 :goto_2
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

    invoke-virtual {p0, p3, p4}, Lcom/baidu/pcs/BaiduPCSFileUpload;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/HttpClient;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v2, :cond_2

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->parseFileInfo(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/baidu/pcs/BaiduPCSQuotaInfo;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSQuotaInfo;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/pcs/BaiduPCSQuotaInfo;->setAccessToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/pcs/BaiduPCSQuotaInfo;->quotaInfo(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    :cond_1
    return-object v0

    :cond_2
    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const v3, 0x9860

    iput v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v3, "server respomse null"

    iput-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mIsCancelledTask:Z

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->needQuit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v4, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mIsCancelledTask:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    const-string v0, "BaiduPCSFileUpload"

    const-string v1, "FileUploadTask----run start"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOffset:J

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mOrignalOffset:J

    iget v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mCurrentState:I

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSize:J

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mSize:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileUpload;->notifyProgress(JJ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUpload;->notifyStatus(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v4, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mIsCancelledTask:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    const-string v0, "BaiduPCSFileUpload"

    const-string v1, "FileUploadTask----run end"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x68

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setTaskState(I)V

    const/4 v0, 0x0

    const-string v1, "task begin running"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileUpload;->notifyStatus(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->uploadDirectory()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v4, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mIsCancelledTask:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v4, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mIsCancelledTask:Z

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileUpload;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setSameNameFile(Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/baidu/pcs/BaiduPCSFileUpload;->setUploadSameNameFile(Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)V

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSFileUpload;->createUploadSameNameFileClass()V

    return-void
.end method
