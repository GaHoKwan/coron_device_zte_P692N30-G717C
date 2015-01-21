.class Lcom/baidu/pcs/BaiduPCSClientBase;
.super Ljava/lang/Object;


# static fields
.field public static final Key_AccessToken:Ljava/lang/String; = "access_token"

.field public static final Key_UserName:Ljava/lang/String; = "username"

.field private static final TAG:Ljava/lang/String; = "BaiduPCSClientBase"

.field public static final Type_Stream_Audio:Ljava/lang/String; = "audio"

.field public static final Type_Stream_Doc:Ljava/lang/String; = "doc"

.field public static final Type_Stream_Image:Ljava/lang/String; = "image"

.field public static final Type_Stream_Video:Ljava/lang/String; = "video"


# instance fields
.field mbAccessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public audioStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSClientBase;->streamWithSpecificMediaType(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public audioStreamWithLimit(II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    const-string v0, "audio"

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBase;->streamWithSpecificMediaType(Ljava/lang/String;II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public cancelCloudDownloadTask(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduCloudDownload;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduCloudDownload;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduCloudDownload;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduCloudDownload;->cancelCloudDownloadTask(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public cloudDownload(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;
    .locals 8

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/pcs/BaiduPCSClientBase;->cloudDownload(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public cloudDownload(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;
    .locals 8

    new-instance v0, Lcom/baidu/pcs/BaiduCloudDownload;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduCloudDownload;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduCloudDownload;->setAccessToken(Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/pcs/BaiduCloudDownload;->cloudDownload(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public cloudDownloadTaskList()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/baidu/pcs/BaiduPCSClientBase;->cloudDownloadTaskList(IIIZ)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;

    move-result-object v0

    return-object v0
.end method

.method public cloudDownloadTaskList(IIIZ)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduCloudDownload;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduCloudDownload;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduCloudDownload;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/pcs/BaiduCloudDownload;->cloudTaskList(IIIZ)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;

    move-result-object v0

    return-object v0
.end method

.method public cloudMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduCloudMatch;

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduCloudMatch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/baidu/pcs/BaiduCloudMatch;->cloudMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public cloudMatch(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduCloudMatch;

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduCloudMatch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/baidu/pcs/BaiduCloudMatch;->setUploadSameNameFile(Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)V

    invoke-virtual {v0, p1, p2}, Lcom/baidu/pcs/BaiduCloudMatch;->cloudMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public cloudMatchAndUploadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBase;->cloudMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/16 v2, 0x7967

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBase;->uploadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public cloudMatchAndUploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBase;->cloudMatch(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/16 v2, 0x7967

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBase;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public cloudMatchAndUploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBase;->cloudMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/16 v2, 0x7967

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBase;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public cloudMatchAndUploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 3

    invoke-virtual {p0, p1, p2, p4}, Lcom/baidu/pcs/BaiduPCSClientBase;->cloudMatch(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/16 v2, 0x7967

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/pcs/BaiduPCSClientBase;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;-><init>()V

    iput-object p1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    iput-object p2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSClientBase;->copy(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method

.method public copy(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;",
            ">;)",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/pcs/BaiduPCSCopy;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSCopy;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSCopy;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSCopy;->copy(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method

.method public deleteFile(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSClientBase;->deleteFiles(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public deleteFiles(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/pcs/BaiduPCSDeleter;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSDeleter;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSDeleter;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSDeleter;->deleteFiles(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public diff()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSClientBase;->diff(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;

    move-result-object v0

    return-object v0
.end method

.method public diff(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSDiffer;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSDiffer;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSDiffer;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSDiffer;->diff(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;

    move-result-object v0

    return-object v0
.end method

.method public docStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    const-string v0, "doc"

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSClientBase;->streamWithSpecificMediaType(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public docStreamWithLimit(II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    const-string v0, "doc"

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBase;->streamWithSpecificMediaType(Ljava/lang/String;II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/pcs/BaiduPCSClientBase;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSDownloader;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSDownloader;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSDownloader;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public downloadFileAsSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/pcs/BaiduPCSClientBase;->downloadFileAsSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public downloadFileAsSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSDownloader;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSDownloader;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSDownloader;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/pcs/BaiduPCSDownloader;->downloadFileWithSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public downloadFileFromStream(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/pcs/BaiduPCSClientBase;->downloadFileFromStream(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public downloadFileFromStream(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSDownloader;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSDownloader;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSDownloader;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSDownloader;->downloadFileFromStream(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStreamingURL(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSStreamingURL;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSStreamingURL;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSStreamingURL;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/baidu/pcs/BaiduPCSStreamingURL;->getStreamingURL(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public imageStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSClientBase;->streamWithSpecificMediaType(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public imageStreamWithLimit(II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    const-string v0, "image"

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBase;->streamWithSpecificMediaType(Ljava/lang/String;II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSList;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSList;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSList;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSList;->list(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public makeDir(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSFolderMaker;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSFolderMaker;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSFolderMaker;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSFolderMaker;->makeDir(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public meta(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSMeta;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSMeta;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSMeta;->setAccessToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/baidu/pcs/BaiduPCSMeta;->meta(Ljava/lang/String;Z)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    move-result-object v0

    return-object v0
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;-><init>()V

    iput-object p1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    iput-object p2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSClientBase;->move(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method

.method public move(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;",
            ">;)",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/pcs/BaiduPCSMove;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSMove;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSMove;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSMove;->move(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method

.method public queryCloudDownloadTaskProgress([Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduCloudDownload;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduCloudDownload;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduCloudDownload;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduCloudDownload;->queryCloudDownloadTaskProgress([Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;

    move-result-object v0

    return-object v0
.end method

.method public queryCloudDownloadTaskStatus([Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduCloudDownload;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduCloudDownload;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduCloudDownload;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduCloudDownload;->queryCloudDownloadTaskStatus([Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public quota()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSQuotaInfo;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSQuotaInfo;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSQuotaInfo;->setAccessToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSQuotaInfo;->quotaInfo(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;

    move-result-object v0

    return-object v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;-><init>()V

    iput-object p1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    iput-object p2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSClientBase;->rename(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method

.method public rename(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;",
            ">;)",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/pcs/BaiduPCSMove;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSMove;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSMove;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSMove;->rename(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Z)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/pcs/BaiduPCSClientBase;->search(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSSearch;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSSearch;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSSearch;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/pcs/BaiduPCSSearch;->search(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    return-void
.end method

.method public streamWithSpecificMediaType(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/baidu/pcs/BaiduPCSClientBase;->streamWithSpecificMediaType(Ljava/lang/String;II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public streamWithSpecificMediaType(Ljava/lang/String;II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSListStream;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSListStream;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSListStream;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSListStream;->listStream(Ljava/lang/String;II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public thumbnail(Ljava/lang/String;III)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSThumbnail;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSThumbnail;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSThumbnail;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/pcs/BaiduPCSThumbnail;->thumbnail(Ljava/lang/String;III)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;

    move-result-object v0

    return-object v0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/pcs/BaiduPCSClientBase;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/baidu/pcs/BaiduPCSClientBase;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSUploader;

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduPCSUploader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSUploader;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSUploader;

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBase;->mbAccessToken:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/baidu/pcs/BaiduPCSUploader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/baidu/pcs/BaiduPCSUploader;->setUploadSameNameFile(Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSUploader;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public videoStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    const-string v0, "video"

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSClientBase;->streamWithSpecificMediaType(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public videoStreamWithLimit(II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    const-string v0, "video"

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBase;->streamWithSpecificMediaType(Ljava/lang/String;II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method
