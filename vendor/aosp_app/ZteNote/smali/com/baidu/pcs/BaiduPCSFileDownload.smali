.class public Lcom/baidu/pcs/BaiduPCSFileDownload;
.super Lcom/baidu/pcs/BaiduPCSFileTransferTask;


# static fields
.field private static final ACCESS_READ_WRITE:Ljava/lang/String; = "rw"

.field private static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field private static final KEY_RANGE:Ljava/lang/String; = "RANGE"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_ZIP_CONTENT:Ljava/lang/String; = "zipcontent"

.field private static final KEY_ZIP_NAME:Ljava/lang/String; = "zipname"

.field private static final MAX_PIECE_SIZE:I = 0xc800

.field private static final MF_COMMAND:Ljava/lang/String; = "file"

.field private static final MS_COMMAND:Ljava/lang/String; = "stream"

.field private static final SPLIT_FILE:Ljava/lang/String; = "/"

.field private static final TAG:Ljava/lang/String; = "BaiduPCSFileDownload"

.field private static final UPLOAD_BATCH:Ljava/lang/String; = "0"

.field private static final UPLOAD_NORMAL:Ljava/lang/String; = "3"

.field private static final UPLOAD_STRING:Ljava/lang/String; = "1"

.field private static final UPLOAD_TYPE:Ljava/lang/String; = "2"

.field private static final VALUE_METHOD:Ljava/lang/String; = "download"

.field private static final VALUE_METHOD_BATCH_DOWNLOAD:Ljava/lang/String; = "batchdownload"

.field private static final VALUE_METHOD_STREAMING:Ljava/lang/String; = "streaming"


# instance fields
.field private mBatchDownload:Z

.field private mBatchSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileType:Ljava/lang/String;

.field private mIsStream:Z

.field private mNeedUnzip:Z

.field private subFileList:Ljava/util/List;
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
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mIsStream:Z

    iput-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mBatchDownload:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mFileType:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mBatchSources:Ljava/util/List;

    iput-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mNeedUnzip:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->subFileList:Ljava/util/List;

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mType:I

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mOffset:J

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mOrignalOffset:J

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->initFromDB()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mIsStream:Z

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mBatchDownload:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mFileType:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mBatchSources:Ljava/util/List;

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mNeedUnzip:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->subFileList:Ljava/util/List;

    if-eqz p2, :cond_0

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mLocalPath:Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRemotePath:Ljava/lang/String;

    :cond_1
    iput-object p4, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mType:I

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mOffset:J

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mOrignalOffset:J

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mIsStream:Z

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mBatchDownload:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mFileType:Ljava/lang/String;

    const-string v0, "3"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData2:Ljava/lang/String;

    const-string v0, "-1"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData3:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mIsStream:Z

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mBatchDownload:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mFileType:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mBatchSources:Ljava/util/List;

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mNeedUnzip:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->subFileList:Ljava/util/List;

    if-eqz p2, :cond_0

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mLocalPath:Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRemotePath:Ljava/lang/String;

    :cond_1
    iput-object p6, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mType:I

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mOffset:J

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mOrignalOffset:J

    iput-boolean p4, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mIsStream:Z

    iput-object p5, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mFileType:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mBatchDownload:Z

    const-string v0, "BaiduPCSFileDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remotepath http = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    const-string v0, "1"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData2:Ljava/lang/String;

    :cond_2
    :goto_0
    const-string v0, "-1"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData3:Ljava/lang/String;

    return-void

    :cond_3
    if-eqz p5, :cond_2

    const-string v0, ""

    invoke-virtual {p5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "2"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData1:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData2:Ljava/lang/String;

    goto :goto_0
.end method

.method private batchDownloadFiles(Ljava/util/List;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
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
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "BaiduPCSFileDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batchDownloadFiles start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "method"

    const-string v4, "batchdownload"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://pcs.baidu.com/rest/2.0/pcs/file?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownload;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "zipcontent"

    invoke-virtual {p0, p1, v2}, Lcom/baidu/pcs/BaiduPCSFileDownload;->buildBodyParamsWithList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "zipname"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->Encoding_UTF8:Ljava/lang/String;

    invoke-direct {v1, v2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    :cond_2
    const-string v1, "BaiduPCSFileDownload"

    const-string v2, "batchDownloadFiles end"

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private downloadDirectory()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2

    const-string v0, "file"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownload;->downloadFileFromServer(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method private downloadFile(Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 7

    const-wide/16 v5, 0x0

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    iget v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mDirectoryNamePosition:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRootPathIsDir:Z

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mLocalPath:Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Lcom/baidu/pcs/BaiduPCSFileHelper;->createTempPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v3, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    const/4 v0, 0x0

    iput v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "download"

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    const-string v0, "streaming"

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "type"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "method"

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "path"

    iget-object v4, p1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://pcs.baidu.com/rest/2.0/pcs/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownload;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1, v2}, Lcom/baidu/pcs/BaiduPCSFileDownload;->startDownloading(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    :goto_1
    const-string v1, "BaiduPCSFileDownload"

    const-string v2, "downloadFile end"

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_5
    const/16 v0, 0x795c

    :try_start_1
    iput v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v0, "create file failed"

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method private downloadFileFromServer(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 11

    new-instance v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v9}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRemotePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->computerDirectoryNamePosition(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSubFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->getSubFileInfoListFromDB(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSubFileInfoList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->needQuit()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSubFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRemotePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->getFileInfo(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    move-result-object v4

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->needQuit()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v0, :cond_7

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iget-object v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    iget-wide v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    iget-wide v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownload;->setFileSize(J)V

    :cond_2
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSize:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileDownload;->notifyProgress(JJ)V

    :cond_3
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSubFileInfoList:Ljava/util/List;

    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRemotePath:Ljava/lang/String;

    iget-object v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    iget-boolean v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->isDir:Z

    iget-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSize:J

    iget-wide v7, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mOffset:J

    invoke-direct/range {v0 .. v8}, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;-><init>(JLjava/lang/String;ZJJ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v2, ""

    const/4 v0, 0x0

    move v5, v0

    move-object v4, v9

    :goto_1
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSubFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_14

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->needQuit()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v3, v2

    :goto_2
    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->needQuit()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSubFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v5, v0, :cond_13

    iget v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v0, :cond_13

    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->setTaskState(I)V

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSize:J

    iget-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSize:J

    invoke-virtual {p0, v0, v1, v5, v6}, Lcom/baidu/pcs/BaiduPCSFileDownload;->notifyProgress(JJ)V

    :goto_3
    iget v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-failed_file_path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :cond_5
    iget v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v1, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownload;->notifyStatus(ILjava/lang/String;)V

    :cond_6
    move-object v9, v4

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->setTaskState(I)V

    iget-object v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v1, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownload;->notifyStatus(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSubFileInfoList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;

    if-nez v1, :cond_9

    const/4 v0, 0x0

    iput v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    move-object v0, v2

    move-object v1, v4

    :goto_4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v4, v1

    move-object v2, v0

    goto :goto_1

    :cond_9
    iget-wide v6, v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->getFileOffset()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gtz v0, :cond_a

    const/4 v0, 0x0

    iput v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    move-object v0, v2

    move-object v1, v4

    goto :goto_4

    :cond_a
    iget-object v3, v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    iget-boolean v0, v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->isDir:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    iget v6, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mDirectoryNamePosition:I

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->makedir(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->getSubFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, v6}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->createTask(Landroid/content/Context;Lcom/baidu/pcs/BaiduPCSFileTransferTask;Ljava/util/List;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;

    if-eqz v0, :cond_b

    iget-object v7, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSubFileInfoList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_c
    invoke-interface {v6}, Ljava/util/List;->clear()V

    :cond_d
    iget-wide v0, v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    const-string v2, "data3"

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/pcs/BaiduPCSFileDownload;->setCurrentFileOffset(JLjava/lang/String;)V

    const/4 v0, 0x0

    iput v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    move-object v0, v3

    move-object v1, v4

    goto :goto_4

    :cond_e
    const v0, 0x985b

    iput v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v0, "make dir failed"

    iput-object v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto/16 :goto_2

    :cond_f
    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRootPathIsDir:Z

    :cond_10
    iget-wide v6, v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_11

    iget-wide v6, v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    iget-wide v8, v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_11

    iget-wide v6, v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    const-string v0, "data3"

    invoke-virtual {p0, v6, v7, v0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->setCurrentFileOffset(JLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    iget v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mDirectoryNamePosition:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/pcs/BaiduPCSFileHelper;->createTempPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->rename(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    move-object v0, v3

    move-object v1, v4

    goto/16 :goto_4

    :cond_11
    invoke-direct {p0, v1, p1, p2}, Lcom/baidu/pcs/BaiduPCSFileDownload;->downloadFile(Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    iget v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v2, :cond_12

    iget-wide v6, v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    const-string v2, "data3"

    invoke-virtual {p0, v6, v7, v2}, Lcom/baidu/pcs/BaiduPCSFileDownload;->setCurrentFileOffset(JLjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    iget v4, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mDirectoryNamePosition:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/pcs/BaiduPCSFileHelper;->createTempPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownload;->rename(Ljava/lang/String;)V

    move-object v1, v0

    move-object v0, v3

    goto/16 :goto_4

    :cond_12
    iget v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/16 v4, 0x795a

    if-ne v2, v4, :cond_15

    iget-wide v6, v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-gtz v2, :cond_15

    iget-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRootPathIsDir:Z

    if-eqz v2, :cond_15

    const-string v2, "BaiduPCSFileDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The file "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " not exist"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/pcs/BaiduPCSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object v1, v0

    move-object v0, v3

    goto/16 :goto_4

    :cond_13
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->setTaskState(I)V

    goto/16 :goto_3

    :cond_14
    move-object v3, v2

    goto/16 :goto_2

    :cond_15
    move-object v4, v0

    goto/16 :goto_2
.end method

.method private downloadFileFromStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2

    const-string v0, "stream"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownload;->downloadFileFromServer(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method private downloadFileWithSpecificCodecType(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    const-string v0, "file"

    invoke-direct {p0, v0, p1}, Lcom/baidu/pcs/BaiduPCSFileDownload;->downloadFileFromServer(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method private getFileInfo(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/baidu/pcs/BaiduPCSMeta;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSMeta;-><init>()V

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/pcs/BaiduPCSCommon;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSMeta;->setAccessToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/pcs/BaiduPCSMeta;->meta(Ljava/lang/String;Z)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    move-result-object v0

    :cond_0
    return-object v0
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

    const-wide/16 v1, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSList;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSList;-><init>()V

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/pcs/BaiduPCSCommon;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/pcs/BaiduPCSList;->setAccessToken(Ljava/lang/String;)V

    const-string v3, "name"

    const-string v4, "asc"

    invoke-virtual {v0, p1, v3, v4}, Lcom/baidu/pcs/BaiduPCSList;->list(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v3, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v3, :cond_1

    iget-object v11, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->list:Ljava/util/List;

    if-eqz v11, :cond_2

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    if-eqz v5, :cond_0

    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;

    iget-object v3, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->path:Ljava/lang/String;

    iget-boolean v4, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->isDir:Z

    iget-wide v5, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->size:J

    move-wide v7, v1

    invoke-direct/range {v0 .. v8}, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;-><init>(JLjava/lang/String;ZJJ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_1
    const-string v1, "BaiduPCSFileDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileListInfo resultCode/msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v3, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v10

    goto :goto_1
.end method

.method private initFromDB()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData3:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData3:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/baidu/pcs/BaiduPCSFileDownload;->setFileOffset(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData1:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/baidu/pcs/BaiduPCSFileDownload;->setFileOffset(J)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData1:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mBatchDownload:Z

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData2:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData2:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData2:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mBatchSources:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData1:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mBatchDownload:Z

    iput-boolean v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mIsStream:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mFileType:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData1:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mBatchDownload:Z

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mIsStream:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mData2:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mFileType:Ljava/lang/String;

    goto :goto_1
.end method

.method private makedir(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/baidu/pcs/BaiduPCSFileHelper;->mkDirs(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rename(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/baidu/pcs/BaiduPCSFileHelper;->changeToFormalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startDownloading(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 19

    const-string v2, "BaiduPCSFileDownload"

    const-string v3, "startDownloading start"

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v15}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    const/4 v13, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->getmOffset()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mOrignalOffset:J

    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mTaskId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mOffset:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    sub-long/2addr v5, v7

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    const-wide/16 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/baidu/pcs/BaiduPCSFileDownload;->setOffset(JJJJ)V

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->getmOffset()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mOrignalOffset:J

    const-wide/16 v2, 0x0

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    :cond_0
    :goto_0
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-string v2, "RANGE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "BaiduPCSFileDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDownloading offset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->makeHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/pcs/BaiduPCSFileDownload;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/HttpClient;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v2

    iget-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v3, v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->needQuit()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v3, :cond_8

    iget-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v4, v3, :cond_2

    const/16 v4, 0xce

    if-ne v4, v3, :cond_7

    :cond_2
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    move-object/from16 v0, p3

    invoke-direct {v14, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v2, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    if-eqz v14, :cond_9

    if-eqz v13, :cond_9

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const-string v2, "BaiduPCSFileDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDownloading from last stop:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mOrignalOffset:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    invoke-virtual {v14, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_3
    const v2, 0xc800

    new-array v0, v2, [B

    move-object/from16 v18, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const-wide/16 v2, 0x0

    move-wide/from16 v16, v2

    move-wide v2, v11

    :goto_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->needQuit()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    move-object/from16 v0, v18

    array-length v5, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_5

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v5, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    int-to-long v4, v4

    add-long v11, v2, v4

    :try_start_3
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mTaskId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mOrignalOffset:J

    add-long/2addr v5, v11

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    move-object/from16 v0, p2

    iget-wide v9, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    add-long/2addr v9, v11

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/baidu/pcs/BaiduPCSFileDownload;->setOffset(JJJJ)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mOrignalOffset:J

    add-long v5, v11, v2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSize:J

    move-object/from16 v2, p0

    move-wide/from16 v3, v16

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/pcs/BaiduPCSFileDownload;->notifyProgressWithInterval(JJJ)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v2

    move-wide/from16 v16, v2

    move-wide v2, v11

    goto :goto_1

    :cond_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mTaskId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mOffset:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    sub-long/2addr v5, v7

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    const-wide/16 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/baidu/pcs/BaiduPCSFileDownload;->setOffset(JJJJ)V

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->getmOffset()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mOrignalOffset:J

    const-wide/16 v2, 0x0

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v2, "BaiduPCSFileDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDownloading resultCode/msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    add-long/2addr v2, v11

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/baidu/pcs/BaiduPCSFileDownload;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    :goto_3
    return-object v15

    :cond_5
    :try_start_6
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    const/4 v4, 0x0

    iput v4, v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object v4, v14

    move-object v5, v15

    :goto_4
    move-wide v11, v2

    move-object v13, v4

    move-object v15, v5

    :cond_6
    :goto_5
    const-string v2, "BaiduPCSFileDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDownloading resultCode/msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    add-long/2addr v2, v11

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/baidu/pcs/BaiduPCSFileDownload;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    goto :goto_3

    :cond_7
    :try_start_7
    iget-object v2, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    move-object/from16 v0, p0

    invoke-super {v0, v2}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->parseSimplefiedResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v2

    move-object v4, v13

    move-object v5, v2

    move-wide v2, v11

    goto :goto_4

    :cond_8
    const-string v2, "BaiduPCSFileDownload"

    const-string v3, "startDownloading response.response null"

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x9860

    iput v2, v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v2, "server respomse null"

    iput-object v2, v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_1
    move-exception v2

    :goto_6
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v2, "BaiduPCSFileDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDownloading resultCode/msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    add-long/2addr v2, v11

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/baidu/pcs/BaiduPCSFileDownload;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    goto/16 :goto_3

    :catch_2
    move-exception v2

    :goto_7
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v2, "BaiduPCSFileDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDownloading resultCode/msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    add-long/2addr v2, v11

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/baidu/pcs/BaiduPCSFileDownload;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    :goto_8
    const-string v3, "BaiduPCSFileDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDownloading resultCode/msg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v15, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    add-long/2addr v3, v11

    move-object/from16 v0, p2

    iput-wide v3, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/baidu/pcs/BaiduPCSFileDownload;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    throw v2

    :catchall_1
    move-exception v2

    move-object v13, v14

    goto :goto_8

    :catchall_2
    move-exception v4

    move-wide v11, v2

    move-object v13, v14

    move-object v2, v4

    goto :goto_8

    :catch_3
    move-exception v2

    move-object v13, v14

    goto :goto_7

    :catch_4
    move-exception v4

    move-wide v11, v2

    move-object v13, v14

    move-object v2, v4

    goto/16 :goto_7

    :catch_5
    move-exception v2

    move-object v13, v14

    goto/16 :goto_6

    :catch_6
    move-exception v4

    move-wide v11, v2

    move-object v13, v14

    move-object v2, v4

    goto/16 :goto_6

    :catch_7
    move-exception v2

    move-object v13, v14

    goto/16 :goto_2

    :catch_8
    move-exception v4

    move-wide v11, v2

    move-object v13, v14

    move-object v2, v4

    goto/16 :goto_2

    :cond_9
    move-wide v2, v11

    move-object v4, v14

    move-object v5, v15

    goto/16 :goto_4
.end method


# virtual methods
.method protected remove()V
    .locals 6

    const-string v0, "BaiduPCSFileDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mLocalPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->getCurrentState()I

    move-result v2

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSize:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-super {p0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->remove()V

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "BaiduPCSFileDownload"

    const-string v1, "delete file failed"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mIsCancelledTask:Z

    const-string v0, "BaiduPCSFileDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directoryDownloadFile----run start: isStream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mIsStream:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fileType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mFileType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->needQuit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BaiduPCSFileDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRunningOrWaitingTasks is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v4, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mIsCancelledTask:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mLocalPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/pcs/BaiduPCSFileHelper;->loadFileSuccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->setTaskState(I)V

    const v0, 0x9861

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file load failed-failed_file_path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownload;->notifyStatus(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "BaiduPCSFileDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRunningOrWaitingTasks is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v4, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mIsCancelledTask:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mCurrentState:I

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSize:J

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mSize:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileDownload;->notifyProgress(JJ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownload;->notifyStatus(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const-string v0, "BaiduPCSFileDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRunningOrWaitingTasks is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v4, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mIsCancelledTask:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    const-string v0, "BaiduPCSFileDownload"

    const-string v1, "directoryDownloadFile----run end"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x68

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->setTaskState(I)V

    const/4 v0, 0x0

    const-string v1, "task begin running"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownload;->notifyStatus(ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mIsStream:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->downloadFileFromStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "BaiduPCSFileDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRunningOrWaitingTasks is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v4, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mIsCancelledTask:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mFileType:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mFileType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mFileType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->downloadFileWithSpecificCodecType(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "BaiduPCSFileDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mRunningOrWaitingTasks is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v4, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mIsCancelledTask:Z

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownload;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_4
    :try_start_5
    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSFileDownload;->downloadDirectory()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method
