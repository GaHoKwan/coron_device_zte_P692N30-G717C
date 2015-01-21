.class public Lcom/baidu/pcs/BaiduPCSFileDownloadTask;
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

.field private static final TAG:Ljava/lang/String; = "DownloadTask"

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsStream:Z

    iput-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchDownload:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileType:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchSources:Ljava/util/List;

    iput-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mType:I

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOffset:J

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->initFromDB()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/baidu/pcs/BaiduPCSFileHelper;->createTempPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsStream:Z

    iput-boolean v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchDownload:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileType:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchSources:Ljava/util/List;

    iput-boolean v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    iput-object p4, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mType:I

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOffset:J

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    const-string v0, "DownloadTask"

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

    iput-boolean v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsStream:Z

    iput-boolean v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchDownload:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileType:Ljava/lang/String;

    const-string v0, "3"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/baidu/pcs/BaiduPCSFileHelper;->createTempPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsStream:Z

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchDownload:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileType:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchSources:Ljava/util/List;

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    iput-object p6, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mType:I

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOffset:J

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    iput-boolean p4, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsStream:Z

    iput-object p5, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileType:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchDownload:Z

    const-string v0, "DownloadTask"

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

    if-eqz p4, :cond_1

    const-string v0, "1"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData2:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p5, :cond_0

    const-string v0, ""

    invoke-virtual {p5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData1:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData2:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "batch download"

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsStream:Z

    iput-boolean v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchDownload:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileType:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchSources:Ljava/util/List;

    iput-boolean v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    iput-object p4, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    iput v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mType:I

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOffset:J

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    iput-boolean v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsStream:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileType:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchDownload:Z

    iput-object p3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchSources:Ljava/util/List;

    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData1:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v3, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData2:Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData2:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "batch download"

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsStream:Z

    iput-boolean v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchDownload:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileType:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchSources:Ljava/util/List;

    iput-boolean v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    iput-object p4, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileTaskListener:Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;

    iput v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mType:I

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOffset:J

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    iput-boolean v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsStream:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileType:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchDownload:Z

    iput-object p3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchSources:Ljava/util/List;

    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData1:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v3, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData2:Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData2:Ljava/lang/String;

    goto :goto_1
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
    const-string v1, "DownloadTask"

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

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "method"

    const-string v4, "batchdownload"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://pcs.baidu.com/rest/2.0/pcs/file?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v2, "zipcontent"

    invoke-virtual {p0, p1, v2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->buildBodyParamsWithList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

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

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->Encoding_UTF8:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v3, p2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->startBatchDownloading(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    :goto_1
    const-string v1, "DownloadTask"

    const-string v2, "batchDownloadFiles end"

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->doUnzipAndNotifyListener(Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;)V

    goto :goto_1
.end method

.method private doUnzipAndNotifyListener(Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;)V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getCurrentState()I

    move-result v0

    const/16 v1, 0x6e

    if-ne v1, v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/pcs/BaiduPCSFileHelper;->unZipToCurrentPath(Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;)V

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v1, p2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private downloadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2

    const-string v0, "file"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->downloadFileFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method private downloadFileFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const-string v1, "DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadFileFromServer source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " target:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " this.orignalOffset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "download"

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v0, "streaming"

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "method"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "path"

    invoke-direct {v0, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://pcs.baidu.com/rest/2.0/pcs/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    iget-wide v4, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    const-string v0, "RANGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadFileFromServer orignalOffset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->startDownloading(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    :cond_3
    const-string v1, "DownloadTask"

    const-string v2, "downloadFileFromServer end"

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_4
    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    iget-wide v4, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadFileFromServer end of file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setTaskState(I)V

    invoke-direct {p0, p2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->rename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mTaskId:J

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    const-string v4, "local_url"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, 0x0

    const-string v1, "end of file"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    goto :goto_0
.end method

.method private downloadFileFromStream(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2

    const-string v0, "stream"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->downloadFileFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method private downloadFileWithSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    const-string v0, "file"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->downloadFileFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method private initFileOffset()Z
    .locals 11

    const/4 v0, 0x0

    const-wide/16 v9, 0x0

    const/4 v1, 0x1

    const-string v2, "DownloadTask"

    const-string v3, "initFileOffset "

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/pcs/BaiduPCSFileHelper;->loadFileSuccess(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-string v5, "DownloadTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initFileOffset  file length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :orignalOffset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    const-string v0, "DownloadTask"

    const-string v3, "initFileOffset  file reset"

    invoke-static {v0, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFileOffset  delete file failed file is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    const-string v0, "DownloadTask"

    const-string v2, "initFileOffset  reset to initial "

    invoke-static {v0, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v9, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    iput-wide v9, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOffset:J

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    cmp-long v2, v2, v9

    if-eqz v2, :cond_2

    const-string v0, "DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFileOffset  file not exist orignalOffset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1
.end method

.method private initFromDB()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData1:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData1:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchDownload:Z

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData2:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData2:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData2:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchSources:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData1:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchDownload:Z

    iput-boolean v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsStream:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileType:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData1:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchDownload:Z

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsStream:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mData2:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileType:Ljava/lang/String;

    goto :goto_0
.end method

.method private rename(Ljava/lang/String;)Z
    .locals 4

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

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startBatchDownloading(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 20

    const-string v2, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mRunningOrWaitingTasks is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DownloadTask"

    const-string v3, "startDownloading start"

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v11}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    const/4 v9, -0x1

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "too many instance running and num is: ----------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    const-string v4, "DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startDownloading resultCode/msg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-eqz v2, :cond_2f

    const/16 v2, 0x6a

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    if-nez v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getCurrentState()I

    move-result v4

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setTaskState(I)V

    :cond_0
    const/16 v4, 0x6e

    if-ne v2, v4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->rename(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mTaskId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    const-string v7, "local_url"

    invoke-static {v2, v4, v5, v6, v7}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    if-nez v2, :cond_2

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v4, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    :cond_2
    move-object v11, v3

    :goto_2
    return-object v11

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->makeHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/HttpClient;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_a

    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "too many instance running and num is: ----------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v3, 0x0

    const-string v4, "DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startDownloading resultCode/msg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-eqz v2, :cond_5

    const/16 v9, 0x6a

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    if-nez v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getCurrentState()I

    move-result v2

    const/16 v4, 0x6e

    if-eq v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setTaskState(I)V

    :cond_6
    const/16 v2, 0x6e

    if-ne v9, v2, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->rename(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mTaskId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    const-string v7, "local_url"

    invoke-static {v2, v4, v5, v6, v7}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    if-nez v2, :cond_8

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v4, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    :cond_8
    move-object v11, v3

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    goto :goto_3

    :cond_a
    :try_start_2
    iget-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v4, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-eqz v4, :cond_10

    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDownloading user pause----------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x69

    iget-object v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    if-nez v3, :cond_b

    const/4 v3, 0x0

    iput v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_b
    :goto_4
    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDownloading resultCode/msg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-eqz v2, :cond_c

    const/16 v9, 0x6a

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    if-nez v2, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getCurrentState()I

    move-result v2

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setTaskState(I)V

    :cond_d
    const/16 v2, 0x6e

    if-ne v9, v2, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->rename(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mTaskId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    const-string v6, "local_url"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    if-nez v2, :cond_f

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    :cond_f
    :goto_6
    const-string v2, "DownloadTask"

    const-string v3, " startDownloading end"

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    :try_start_3
    iget-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v4, :cond_22

    iget-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v5, v4, :cond_11

    const/16 v5, 0xce

    if-ne v5, v4, :cond_21

    :cond_11
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    iget-object v2, v3, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v16

    if-eqz v10, :cond_2e

    if-eqz v16, :cond_2e

    const-wide/16 v4, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_12

    const-string v2, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startBatchDownloading from last stop: mOrignalOffset: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    invoke-virtual {v10, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_12
    const v2, 0xc800

    new-array v0, v2, [B

    move-object/from16 v17, v0

    const-wide/16 v2, 0x0

    move-wide v7, v2

    move-wide/from16 v18, v4

    move-wide/from16 v3, v18

    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_13

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-eqz v5, :cond_14

    const-string v2, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startBatchDownloading user pause----------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x69

    :cond_13
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    const/4 v2, 0x0

    iput v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-eqz v2, :cond_1d

    const-string v2, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDownloading user pause"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x69

    :goto_8
    move v9, v2

    move-object v3, v11

    move-object v2, v10

    :goto_9
    move-object v11, v3

    goto/16 :goto_4

    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1a

    const-string v2, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "too many instance running and num is: ----------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v2, 0x0

    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDownloading resultCode/msg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-eqz v3, :cond_15

    const/16 v9, 0x6a

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    if-nez v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getCurrentState()I

    move-result v3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_17

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v3, :cond_16

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setTaskState(I)V

    :cond_16
    const/16 v3, 0x6e

    if-ne v9, v3, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->rename(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mTaskId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    const-string v7, "local_url"

    invoke-static {v3, v4, v5, v6, v7}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    if-nez v3, :cond_18

    iget v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v4, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    :cond_18
    move-object v11, v2

    goto/16 :goto_2

    :cond_19
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    goto :goto_a

    :cond_1a
    int-to-long v5, v2

    add-long/2addr v5, v7

    :try_start_5
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    cmp-long v5, v5, v14

    if-gtz v5, :cond_1b

    int-to-long v5, v2

    add-long/2addr v5, v7

    move-wide v7, v5

    goto/16 :goto_7

    :cond_1b
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    cmp-long v5, v7, v5

    if-gtz v5, :cond_1c

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    sub-long/2addr v5, v7

    long-to-int v5, v5

    sub-int v6, v2, v5

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v5, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v5, v6

    add-long/2addr v5, v12

    move-wide v12, v5

    :goto_b
    int-to-long v5, v2

    add-long v14, v7, v5

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    add-long/2addr v5, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setCurrentOffset(J)V

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    add-long/2addr v5, v12

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyBatchDownloadProgressWithInterval(JJJ)J

    move-result-wide v3

    move-wide v7, v14

    goto/16 :goto_7

    :cond_1c
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v5, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    int-to-long v5, v2

    add-long/2addr v5, v12

    move-wide v12, v5

    goto :goto_b

    :cond_1d
    const/16 v2, 0x6e

    :try_start_6
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    add-long/2addr v3, v12

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyBatchDownloadProgress(JJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_8

    :catch_0
    move-exception v3

    :goto_c
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDownloading resultCode/msg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-eqz v3, :cond_1e

    const/16 v2, 0x6a

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    if-nez v3, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getCurrentState()I

    move-result v3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_20

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v3, :cond_1f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setTaskState(I)V

    :cond_1f
    const/16 v3, 0x6e

    if-ne v2, v3, :cond_20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->rename(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mTaskId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    const-string v6, "local_url"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    if-nez v2, :cond_f

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_21
    :try_start_8
    iget-object v3, v3, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    move-object/from16 v0, p0

    invoke-super {v0, v3}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->parseSimplefiedResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v3

    goto/16 :goto_9

    :cond_22
    const-string v3, "DownloadTask"

    const-string v4, "startDownloading response.response null"

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x9860

    iput v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v3, "server respomse null"

    iput-object v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_4

    :catch_1
    move-exception v3

    move-object v10, v2

    move v2, v9

    goto/16 :goto_c

    :cond_23
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    goto/16 :goto_5

    :cond_24
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    goto :goto_d

    :catch_2
    move-exception v3

    move-object v10, v2

    move v2, v9

    :goto_e
    :try_start_9
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDownloading resultCode/msg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-eqz v3, :cond_25

    const/16 v2, 0x6a

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    if-nez v3, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getCurrentState()I

    move-result v3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_27

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v3, :cond_26

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setTaskState(I)V

    :cond_26
    const/16 v3, 0x6e

    if-ne v2, v3, :cond_27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->rename(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mTaskId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    const-string v6, "local_url"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    if-nez v2, :cond_f

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_28
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    goto :goto_f

    :catchall_0
    move-exception v3

    move-object v10, v2

    move v2, v9

    :goto_10
    const-string v4, "DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startDownloading resultCode/msg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v4, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-eqz v4, :cond_29

    const/16 v2, 0x6a

    :cond_29
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    if-nez v4, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getCurrentState()I

    move-result v4

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v4, :cond_2a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setTaskState(I)V

    :cond_2a
    const/16 v4, 0x6e

    if-ne v2, v4, :cond_2b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->rename(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mTaskId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    const-string v7, "local_url"

    invoke-static {v2, v4, v5, v6, v7}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    if-nez v2, :cond_2c

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v4, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    :cond_2c
    throw v3

    :cond_2d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    goto :goto_11

    :catchall_1
    move-exception v2

    move-object v3, v2

    move v2, v9

    goto/16 :goto_10

    :catchall_2
    move-exception v3

    goto/16 :goto_10

    :catch_3
    move-exception v2

    move-object v3, v2

    move v2, v9

    goto/16 :goto_e

    :catch_4
    move-exception v3

    goto/16 :goto_e

    :catch_5
    move-exception v2

    move-object v3, v2

    move v2, v9

    goto/16 :goto_c

    :cond_2e
    move-object v2, v10

    move-object v3, v11

    goto/16 :goto_9

    :cond_2f
    move v2, v9

    goto/16 :goto_0
.end method

.method private startDownloading(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 18

    const-string v2, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mRunningOrWaitingTasks is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DownloadTask"

    const-string v3, "startDownloading start"

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v11}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    const/4 v9, -0x1

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "too many instance running and num is: ----------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    const-string v4, "DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startDownloading resultCode/msg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-eqz v2, :cond_30

    const/16 v2, 0x6a

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    if-nez v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getCurrentState()I

    move-result v4

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setTaskState(I)V

    :cond_0
    const/16 v4, 0x6e

    if-ne v2, v4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->rename(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mTaskId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    const-string v7, "local_url"

    invoke-static {v2, v4, v5, v6, v7}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v2, :cond_2

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v4, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    :cond_2
    move-object v11, v3

    :goto_2
    return-object v11

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->makeHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/HttpClient;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_a

    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "too many instance running and num is: ----------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v3, 0x0

    const-string v4, "DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startDownloading resultCode/msg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-eqz v2, :cond_5

    const/16 v9, 0x6a

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    if-nez v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getCurrentState()I

    move-result v2

    const/16 v4, 0x6e

    if-eq v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setTaskState(I)V

    :cond_6
    const/16 v2, 0x6e

    if-ne v9, v2, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->rename(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mTaskId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    const-string v7, "local_url"

    invoke-static {v2, v4, v5, v6, v7}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v2, :cond_8

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v4, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    :cond_8
    move-object v11, v3

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    goto :goto_3

    :cond_a
    :try_start_2
    iget-object v3, v5, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-eqz v3, :cond_10

    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDownloading user pause----------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x69

    iget-object v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    if-nez v3, :cond_b

    const/4 v3, 0x0

    iput v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_b
    :goto_4
    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDownloading resultCode/msg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-eqz v2, :cond_c

    const/16 v9, 0x6a

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    if-nez v2, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getCurrentState()I

    move-result v2

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setTaskState(I)V

    :cond_d
    const/16 v2, 0x6e

    if-ne v9, v2, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->rename(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mTaskId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    const-string v6, "local_url"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v2, :cond_f

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    :cond_f
    :goto_6
    const-string v2, "DownloadTask"

    const-string v3, " startDownloading end"

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    :try_start_3
    iget-object v3, v5, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v3, :cond_21

    const-wide/16 v3, 0x0

    iget-object v6, v5, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    const-string v7, "Content-Length"

    invoke-interface {v6, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v6

    array-length v7, v6

    if-lez v7, :cond_11

    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_11

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

    const-wide/16 v12, 0x0

    cmp-long v7, v7, v12

    if-nez v7, :cond_11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setFileSize(J)V

    const-string v7, "DownloadTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startDownloading setFileSize:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " mSize:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    move-wide v14, v3

    iget-object v3, v5, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const-string v4, "DownloadTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startDownloading statusCode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " requestHeaders.length ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v6, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc8

    if-eq v4, v3, :cond_12

    const/16 v4, 0xce

    if-ne v4, v3, :cond_20

    :cond_12
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    iget-object v2, v5, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v16

    if-eqz v10, :cond_2f

    if-eqz v16, :cond_2f

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

    const-wide/16 v12, 0x0

    cmp-long v2, v7, v12

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    const-wide/16 v12, 0x0

    cmp-long v2, v7, v12

    if-eqz v2, :cond_13

    const-string v2, "DownloadTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startDownloading from last stop:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    invoke-virtual {v10, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_13
    const v2, 0xc800

    new-array v0, v2, [B

    move-object/from16 v17, v0

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    move-object/from16 v0, v17

    array-length v7, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-eqz v7, :cond_14

    const-string v2, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDownloading user pause----------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x69

    move-wide v3, v5

    :goto_8
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    const/4 v2, 0x0

    iput v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-eqz v2, :cond_1c

    const-string v2, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDownloading user pause"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x69

    :goto_9
    move v9, v2

    move-object v3, v11

    move-object v2, v10

    :goto_a
    move-object v11, v3

    goto/16 :goto_4

    :cond_14
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1a

    const-string v2, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "too many instance running and num is: ----------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v2, 0x0

    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDownloading resultCode/msg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-eqz v3, :cond_15

    const/16 v9, 0x6a

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    if-nez v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getCurrentState()I

    move-result v3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_17

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v3, :cond_16

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setTaskState(I)V

    :cond_16
    const/16 v3, 0x6e

    if-ne v9, v3, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->rename(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mTaskId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    const-string v7, "local_url"

    invoke-static {v3, v4, v5, v6, v7}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    if-nez v3, :cond_18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v3, :cond_18

    iget v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v4, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    :cond_18
    move-object v11, v2

    goto/16 :goto_2

    :cond_19
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    goto :goto_b

    :cond_1a
    const/4 v7, 0x0

    :try_start_5
    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v7, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v7, v2

    add-long v12, v5, v7

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    add-long/2addr v5, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setCurrentOffset(J)V

    const-wide/16 v5, 0x0

    cmp-long v2, v14, v5

    if-lez v2, :cond_1b

    cmp-long v2, v12, v14

    if-ltz v2, :cond_1b

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    add-long/2addr v5, v12

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyProgress(JJ)V

    const-string v2, "DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startDownloading ----------onProgress----------"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    add-long/2addr v6, v12

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-eqz v2, :cond_2d

    const-string v2, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDownloading user pause----------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x69

    move-wide v3, v12

    goto/16 :goto_8

    :cond_1b
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    add-long/2addr v5, v12

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyProgressWithInterval(JJJ)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-wide v3

    goto :goto_c

    :cond_1c
    const/16 v2, 0x6e

    :try_start_6
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    add-long/2addr v3, v5

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyProgress(JJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_9

    :catch_0
    move-exception v3

    :goto_d
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDownloading resultCode/msg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-eqz v3, :cond_1d

    const/16 v2, 0x6a

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    if-nez v3, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getCurrentState()I

    move-result v3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setTaskState(I)V

    :cond_1e
    const/16 v3, 0x6e

    if-ne v2, v3, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->rename(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mTaskId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    const-string v6, "local_url"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v2, :cond_f

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_20
    :try_start_8
    iget-object v3, v5, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    move-object/from16 v0, p0

    invoke-super {v0, v3}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->parseSimplefiedResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v3

    goto/16 :goto_a

    :cond_21
    const-string v3, "DownloadTask"

    const-string v4, "startDownloading response.response null"

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x9860

    iput v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v3, "server respomse null"

    iput-object v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_4

    :catch_1
    move-exception v3

    move-object v10, v2

    move v2, v9

    goto/16 :goto_d

    :cond_22
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    goto/16 :goto_5

    :cond_23
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    goto :goto_e

    :catch_2
    move-exception v3

    move-object v10, v2

    move v2, v9

    :goto_f
    :try_start_9
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDownloading resultCode/msg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-eqz v3, :cond_24

    const/16 v2, 0x6a

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    if-nez v3, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getCurrentState()I

    move-result v3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_26

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v3, :cond_25

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setTaskState(I)V

    :cond_25
    const/16 v3, 0x6e

    if-ne v2, v3, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->rename(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mTaskId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    const-string v6, "local_url"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v2, :cond_f

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v3, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_27
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    goto :goto_10

    :catchall_0
    move-exception v3

    move-object v10, v2

    move v2, v9

    :goto_11
    const-string v4, "DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startDownloading resultCode/msg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->closeRandomAccessFile(Ljava/io/RandomAccessFile;)V

    iget v4, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-eqz v4, :cond_28

    const/16 v2, 0x6a

    :cond_28
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    if-nez v4, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getCurrentState()I

    move-result v4

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v4, :cond_29

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setTaskState(I)V

    :cond_29
    const/16 v4, 0x6e

    if-ne v2, v4, :cond_2a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->rename(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mTaskId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    const-string v7, "local_url"

    invoke-static {v2, v4, v5, v6, v7}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    if-nez v2, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v2, :cond_2b

    iget v2, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v4, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    :cond_2b
    throw v3

    :cond_2c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    goto :goto_12

    :catchall_1
    move-exception v2

    move-object v3, v2

    move v2, v9

    goto/16 :goto_11

    :catchall_2
    move-exception v3

    goto/16 :goto_11

    :catch_3
    move-exception v2

    move-object v3, v2

    move v2, v9

    goto/16 :goto_f

    :catch_4
    move-exception v3

    goto/16 :goto_f

    :catch_5
    move-exception v2

    move-object v3, v2

    move v2, v9

    goto/16 :goto_d

    :cond_2d
    move-wide v5, v12

    goto/16 :goto_7

    :cond_2e
    move-wide v3, v5

    goto/16 :goto_8

    :cond_2f
    move-object v2, v10

    move-object v3, v11

    goto/16 :goto_a

    :cond_30
    move v2, v9

    goto/16 :goto_0
.end method


# virtual methods
.method protected remove()V
    .locals 6

    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->getCurrentState()I

    move-result v2

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mSize:J

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

    const-string v0, "DownloadTask"

    const-string v1, "delete file failed"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    :cond_0
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRunningOrWaitingTasks is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v5, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mCurrentState:I

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mNeedUnzip:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->rename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mTaskId:J

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    const-string v4, "local_url"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRunningOrWaitingTasks is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v5, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_3
    :try_start_2
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadFile----run start: batchDownload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchDownload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isStream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsStream:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fileType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " batchSources"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchSources:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOffset:J

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mOrignalOffset:J

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->initFileOffset()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x795b

    const-string v1, "Load file failed"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsPause:Z

    if-nez v0, :cond_5

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->setTaskState(I)V

    const/4 v0, 0x0

    const-string v1, "task begin running"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->notifyStatus(ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchDownload:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsStream:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRemotePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->downloadFileFromStream(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_1
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRunningOrWaitingTasks is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v5, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    const-string v0, "DownloadTask"

    const-string v1, "downloadFile----run end"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileType:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRemotePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mFileType:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->downloadFileWithSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRunningOrWaitingTasks is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v5, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRemotePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->downloadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mRunningOrWaitingTasks is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningOrWaitingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iput-boolean v5, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mIsCancelledTask:Z

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mRunningTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_8
    :try_start_5
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mBatchSources:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->mLocalPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;->batchDownloadFiles(Ljava/util/List;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method
