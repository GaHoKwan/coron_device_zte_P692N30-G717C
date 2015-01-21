.class public Lcom/baidu/pcs/BaiduPCSClient;
.super Ljava/lang/Object;
.source "BaiduPCSClient.java"


# static fields
.field public static final Key_AccessToken:Ljava/lang/String; = "access_token"

.field public static final Key_UserName:Ljava/lang/String; = "username"

.field public static final Type_Media_MP4_360P:Ljava/lang/String; = "MP4_360P"

.field public static final Type_Media_MP4_480P:Ljava/lang/String; = "MP4_480P"

.field public static final Type_Stream_Audio:Ljava/lang/String; = "audio"

.field public static final Type_Stream_Doc:Ljava/lang/String; = "doc"

.field public static final Type_Stream_Image:Ljava/lang/String; = "image"

.field public static final Type_Stream_Video:Ljava/lang/String; = "video"


# instance fields
.field private mbAccessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "accessToken"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public accessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public audioStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    .prologue
    .line 452
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSClient;->streamWithSpecificMediaType(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public audioStreamWithLimit(II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 523
    const-string v0, "audio"

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClient;->streamWithSpecificMediaType(Ljava/lang/String;II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public cancelCloudDownloadTask(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;
    .locals 2
    .parameter "taskId"

    .prologue
    .line 710
    new-instance v0, Lcom/baidu/pcs/BaiduCloudDownload;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduCloudDownload;-><init>()V

    .line 711
    .local v0, cloudDownload:Lcom/baidu/pcs/BaiduCloudDownload;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduCloudDownload;->setAccessToken(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduCloudDownload;->cancelCloudDownloadTask(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;

    move-result-object v1

    return-object v1
.end method

.method public cloudDownload(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;
    .locals 8
    .parameter "sourceUrl"
    .parameter "severPath"

    .prologue
    const-wide/16 v3, 0x0

    .line 624
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/pcs/BaiduPCSClient;->cloudDownload(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public cloudDownload(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;
    .locals 8
    .parameter "sourceUrl"
    .parameter "severPath"
    .parameter "rateLimit"
    .parameter "timeOut"
    .parameter "callbackUrl"

    .prologue
    .line 643
    new-instance v0, Lcom/baidu/pcs/BaiduCloudDownload;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduCloudDownload;-><init>()V

    .line 644
    .local v0, cloudDownload:Lcom/baidu/pcs/BaiduCloudDownload;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduCloudDownload;->setAccessToken(Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object v7, p7

    .line 645
    invoke-virtual/range {v0 .. v7}, Lcom/baidu/pcs/BaiduCloudDownload;->cloudDownload(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;

    move-result-object v1

    return-object v1
.end method

.method public cloudDownloadTaskList()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 654
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/baidu/pcs/BaiduPCSClient;->cloudDownloadTaskList(IIIZ)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;

    move-result-object v0

    return-object v0
.end method

.method public cloudDownloadTaskList(IIIZ)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;
    .locals 2
    .parameter "start"
    .parameter "limit"
    .parameter "asc"
    .parameter "needTaskInfo"

    .prologue
    .line 671
    new-instance v0, Lcom/baidu/pcs/BaiduCloudDownload;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduCloudDownload;-><init>()V

    .line 672
    .local v0, cloudDownload:Lcom/baidu/pcs/BaiduCloudDownload;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduCloudDownload;->setAccessToken(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/pcs/BaiduCloudDownload;->cloudTaskList(IIIZ)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;

    move-result-object v1

    return-object v1
.end method

.method public cloudMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 2
    .parameter "localFilePath"
    .parameter "severDestPath"

    .prologue
    .line 573
    new-instance v0, Lcom/baidu/pcs/BaiduCloudMatch;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduCloudMatch;-><init>()V

    .line 574
    .local v0, cloudmatch:Lcom/baidu/pcs/BaiduCloudMatch;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduCloudMatch;->setAccessToken(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v0, p1, p2}, Lcom/baidu/pcs/BaiduCloudMatch;->cloudMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v1

    return-object v1
.end method

.method public cloudMatchAndUploadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 3
    .parameter "localFilePath"
    .parameter "severDestPath"

    .prologue
    .line 607
    invoke-virtual {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClient;->cloudMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    .line 608
    .local v0, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/16 v2, 0x7967

    if-ne v1, v2, :cond_0

    .line 609
    invoke-virtual {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClient;->uploadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    .line 611
    :cond_0
    return-object v0
.end method

.method public cloudMatchAndUploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 3
    .parameter "localFilePath"
    .parameter "severDestPath"
    .parameter "listener"

    .prologue
    .line 590
    invoke-virtual {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClient;->cloudMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    .line 591
    .local v0, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const/16 v2, 0x7967

    if-ne v1, v2, :cond_0

    .line 592
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClient;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    .line 594
    :cond_0
    return-object v0
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;>;"
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;-><init>()V

    .line 313
    .local v0, data:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;
    iput-object p1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    .line 314
    iput-object p2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    .line 316
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSClient;->copy(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v2

    return-object v2
.end method

.method public copy(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 2
    .parameter
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

    .prologue
    .line 329
    .local p1, info:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;>;"
    new-instance v0, Lcom/baidu/pcs/BaiduPCSCopy;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSCopy;-><init>()V

    .line 330
    .local v0, copy:Lcom/baidu/pcs/BaiduPCSCopy;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSCopy;->setAccessToken(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSCopy;->copy(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v1

    return-object v1
.end method

.method public deleteFile(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2
    .parameter "file"

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSClient;->deleteFiles(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v1

    return-object v1
.end method

.method public deleteFiles(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2
    .parameter
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

    .prologue
    .line 97
    .local p1, files:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/baidu/pcs/BaiduPCSDeleter;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSDeleter;-><init>()V

    .line 98
    .local v0, deleter:Lcom/baidu/pcs/BaiduPCSDeleter;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSDeleter;->setAccessToken(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSDeleter;->deleteFiles(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v1

    return-object v1
.end method

.method public diff()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSClient;->diff(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;

    move-result-object v0

    return-object v0
.end method

.method public diff(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 389
    new-instance v0, Lcom/baidu/pcs/BaiduPCSDiffer;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSDiffer;-><init>()V

    .line 390
    .local v0, differ:Lcom/baidu/pcs/BaiduPCSDiffer;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSDiffer;->setAccessToken(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSDiffer;->diff(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;

    move-result-object v1

    return-object v1
.end method

.method public docStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    .prologue
    .line 462
    const-string v0, "doc"

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSClient;->streamWithSpecificMediaType(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public docStreamWithLimit(II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 540
    const-string v0, "doc"

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClient;->streamWithSpecificMediaType(Ljava/lang/String;II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1
    .parameter "source"
    .parameter "target"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/pcs/BaiduPCSClient;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2
    .parameter "source"
    .parameter "target"
    .parameter "listener"

    .prologue
    .line 127
    new-instance v0, Lcom/baidu/pcs/BaiduPCSDownloader;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSDownloader;-><init>()V

    .line 128
    .local v0, downloader:Lcom/baidu/pcs/BaiduPCSDownloader;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSDownloader;->setAccessToken(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v1

    return-object v1
.end method

.method public downloadFileAsSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1
    .parameter "source"
    .parameter "target"
    .parameter "type"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/pcs/BaiduPCSClient;->downloadFileAsSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public downloadFileAsSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2
    .parameter "source"
    .parameter "target"
    .parameter "type"
    .parameter "listener"

    .prologue
    .line 162
    new-instance v0, Lcom/baidu/pcs/BaiduPCSDownloader;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSDownloader;-><init>()V

    .line 163
    .local v0, downloader:Lcom/baidu/pcs/BaiduPCSDownloader;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSDownloader;->setAccessToken(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/pcs/BaiduPCSDownloader;->downloadFileWithSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v1

    return-object v1
.end method

.method public downloadFileFromStream(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1
    .parameter "source"
    .parameter "target"

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/pcs/BaiduPCSClient;->downloadFileFromStream(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public downloadFileFromStream(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2
    .parameter "source"
    .parameter "target"
    .parameter "listener"

    .prologue
    .line 419
    new-instance v0, Lcom/baidu/pcs/BaiduPCSDownloader;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSDownloader;-><init>()V

    .line 420
    .local v0, downloader:Lcom/baidu/pcs/BaiduPCSDownloader;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSDownloader;->setAccessToken(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSDownloader;->downloadFileFromStream(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v1

    return-object v1
.end method

.method public getStreamingURL(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;
    .locals 2
    .parameter "source"
    .parameter "type"

    .prologue
    .line 727
    new-instance v0, Lcom/baidu/pcs/BaiduPCSStreamingURL;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSStreamingURL;-><init>()V

    .line 728
    .local v0, streamingURL:Lcom/baidu/pcs/BaiduPCSStreamingURL;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSStreamingURL;->setAccessToken(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v0, p1, p2}, Lcom/baidu/pcs/BaiduPCSStreamingURL;->getStreamingURL(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;

    move-result-object v1

    return-object v1
.end method

.method public imageStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    .prologue
    .line 431
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSClient;->streamWithSpecificMediaType(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public imageStreamWithLimit(II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 490
    const-string v0, "image"

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClient;->streamWithSpecificMediaType(Ljava/lang/String;II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 2
    .parameter "path"
    .parameter "by"
    .parameter "order"

    .prologue
    .line 224
    new-instance v0, Lcom/baidu/pcs/BaiduPCSList;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSList;-><init>()V

    .line 225
    .local v0, list:Lcom/baidu/pcs/BaiduPCSList;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSList;->setAccessToken(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSList;->list(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v1

    return-object v1
.end method

.method public makeDir(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 2
    .parameter "path"

    .prologue
    .line 175
    new-instance v0, Lcom/baidu/pcs/BaiduPCSFolderMaker;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSFolderMaker;-><init>()V

    .line 176
    .local v0, folderMaker:Lcom/baidu/pcs/BaiduPCSFolderMaker;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSFolderMaker;->setAccessToken(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSFolderMaker;->makeDir(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v1

    return-object v1
.end method

.method public meta(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    .locals 2
    .parameter "file"

    .prologue
    .line 207
    new-instance v0, Lcom/baidu/pcs/BaiduPCSMeta;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSMeta;-><init>()V

    .line 208
    .local v0, meta:Lcom/baidu/pcs/BaiduPCSMeta;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSMeta;->setAccessToken(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSMeta;->meta(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    move-result-object v1

    return-object v1
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;>;"
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;-><init>()V

    .line 245
    .local v0, data:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;
    iput-object p1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    .line 246
    iput-object p2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    .line 247
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSClient;->move(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v2

    return-object v2
.end method

.method public move(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 2
    .parameter
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

    .prologue
    .line 260
    .local p1, info:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;>;"
    new-instance v0, Lcom/baidu/pcs/BaiduPCSMove;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSMove;-><init>()V

    .line 261
    .local v0, move:Lcom/baidu/pcs/BaiduPCSMove;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSMove;->setAccessToken(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSMove;->move(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v1

    return-object v1
.end method

.method public queryCloudDownloadTaskProgress([Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;
    .locals 2
    .parameter "taskId"

    .prologue
    .line 697
    new-instance v0, Lcom/baidu/pcs/BaiduCloudDownload;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduCloudDownload;-><init>()V

    .line 698
    .local v0, cloudDownload:Lcom/baidu/pcs/BaiduCloudDownload;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduCloudDownload;->setAccessToken(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduCloudDownload;->queryCloudDownloadTaskProgress([Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;

    move-result-object v1

    return-object v1
.end method

.method public queryCloudDownloadTaskStatus([Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;
    .locals 2
    .parameter "taskId"

    .prologue
    .line 684
    new-instance v0, Lcom/baidu/pcs/BaiduCloudDownload;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduCloudDownload;-><init>()V

    .line 685
    .local v0, cloudDownload:Lcom/baidu/pcs/BaiduCloudDownload;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduCloudDownload;->setAccessToken(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduCloudDownload;->queryCloudDownloadTaskStatus([Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;

    move-result-object v1

    return-object v1
.end method

.method public quota()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/baidu/pcs/BaiduPCSQuotaInfo;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSQuotaInfo;-><init>()V

    .line 39
    .local v0, info:Lcom/baidu/pcs/BaiduPCSQuotaInfo;
    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/pcs/BaiduPCSQuotaInfo;->setAccessToken(Ljava/lang/String;)V

    .line 40
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/baidu/pcs/BaiduPCSQuotaInfo;->quotaInfo(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;

    move-result-object v1

    .line 42
    .local v1, space:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;
    return-object v1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 3
    .parameter "oldName"
    .parameter "newName"

    .prologue
    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;>;"
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;-><init>()V

    .line 279
    .local v0, data:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;
    iput-object p1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    .line 280
    iput-object p2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    .line 281
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSClient;->rename(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v2

    return-object v2
.end method

.method public rename(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 2
    .parameter
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

    .prologue
    .line 296
    .local p1, info:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;>;"
    new-instance v0, Lcom/baidu/pcs/BaiduPCSMove;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSMove;-><init>()V

    .line 297
    .local v0, move:Lcom/baidu/pcs/BaiduPCSMove;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSMove;->setAccessToken(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSMove;->rename(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v1

    return-object v1
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Z)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 2
    .parameter "path"
    .parameter "key"
    .parameter "recursive"

    .prologue
    .line 346
    new-instance v0, Lcom/baidu/pcs/BaiduPCSSearch;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSSearch;-><init>()V

    .line 347
    .local v0, search:Lcom/baidu/pcs/BaiduPCSSearch;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSSearch;->setAccessToken(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSSearch;->search(Ljava/lang/String;Ljava/lang/String;Z)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v1

    return-object v1
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 738
    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    .line 739
    return-void
.end method

.method public streamWithSpecificMediaType(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1
    .parameter "type"

    .prologue
    const/4 v0, -0x1

    .line 474
    invoke-virtual {p0, p1, v0, v0}, Lcom/baidu/pcs/BaiduPCSClient;->streamWithSpecificMediaType(Ljava/lang/String;II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public streamWithSpecificMediaType(Ljava/lang/String;II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 2
    .parameter "type"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 558
    new-instance v0, Lcom/baidu/pcs/BaiduPCSListStream;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSListStream;-><init>()V

    .line 559
    .local v0, liststream:Lcom/baidu/pcs/BaiduPCSListStream;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSListStream;->setAccessToken(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSListStream;->listStream(Ljava/lang/String;II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v1

    return-object v1
.end method

.method public thumbnail(Ljava/lang/String;III)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;
    .locals 2
    .parameter "path"
    .parameter "quality"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 365
    new-instance v0, Lcom/baidu/pcs/BaiduPCSThumbnail;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSThumbnail;-><init>()V

    .line 366
    .local v0, thumbnailer:Lcom/baidu/pcs/BaiduPCSThumbnail;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSThumbnail;->setAccessToken(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/pcs/BaiduPCSThumbnail;->thumbnail(Ljava/lang/String;III)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;

    move-result-object v1

    return-object v1
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 1
    .parameter "source"
    .parameter "target"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/pcs/BaiduPCSClient;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 2
    .parameter "source"
    .parameter "target"
    .parameter "listener"

    .prologue
    .line 70
    new-instance v0, Lcom/baidu/pcs/BaiduPCSUploader;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSUploader;-><init>()V

    .line 71
    .local v0, uploader:Lcom/baidu/pcs/BaiduPCSUploader;
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClient;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSUploader;->setAccessToken(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSUploader;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v1

    return-object v1
.end method

.method public videoStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    .prologue
    .line 442
    const-string v0, "video"

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSClient;->streamWithSpecificMediaType(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public videoStreamWithLimit(II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 506
    const-string v0, "video"

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClient;->streamWithSpecificMediaType(Ljava/lang/String;II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method
