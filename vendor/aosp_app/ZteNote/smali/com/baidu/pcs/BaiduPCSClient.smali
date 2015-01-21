.class public Lcom/baidu/pcs/BaiduPCSClient;
.super Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accessToken()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->accessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic audioStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    invoke-super {p0}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->audioStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic audioStreamWithLimit(II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->audioStreamWithLimit(II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic batchDownloadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->batchDownloadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic batchDownloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->batchDownloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic batchDownloadFiles(Ljava/util/List;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->batchDownloadFiles(Ljava/util/List;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic batchDownloadFiles(Ljava/util/List;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->batchDownloadFiles(Ljava/util/List;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cancelCloudDownloadTask(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->cancelCloudDownloadTask(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloudDownload(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->cloudDownload(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloudDownload(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;
    .locals 1

    invoke-super/range {p0 .. p7}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->cloudDownload(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloudDownloadTaskList()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;
    .locals 1

    invoke-super {p0}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->cloudDownloadTaskList()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloudDownloadTaskList(IIIZ)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->cloudDownloadTaskList(IIIZ)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloudMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->cloudMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloudMatch(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->cloudMatch(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloudMatchAndUploadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->cloudMatchAndUploadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloudMatchAndUploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->cloudMatchAndUploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloudMatchAndUploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->cloudMatchAndUploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloudMatchAndUploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->cloudMatchAndUploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->copy(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFileLink(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->createFileLink(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createWebFileLink(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->createWebFileLink(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createWebFileLink(Ljava/util/ArrayList;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->createWebFileLink(Ljava/util/ArrayList;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deleteFile(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->deleteFile(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deleteFileLink(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->deleteFileLink(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deleteFiles(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->deleteFiles(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic destroyBaiduPCSFileClient()V
    .locals 0

    invoke-super {p0}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->destroyBaiduPCSFileClient()V

    return-void
.end method

.method public bridge synthetic diff()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;
    .locals 1

    invoke-super {p0}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->diff()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic diff(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->diff(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic docStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    invoke-super {p0}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->docStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic docStreamWithLimit(II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->docStreamWithLimit(II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic downloadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->downloadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic downloadFileAsMP4360P(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->downloadFileAsMP4360P(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic downloadFileAsMP4360P(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->downloadFileAsMP4360P(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic downloadFileAsMP4480P(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->downloadFileAsMP4480P(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic downloadFileAsMP4480P(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->downloadFileAsMP4480P(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic downloadFileAsSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->downloadFileAsSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic downloadFileAsSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->downloadFileAsSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic downloadFileFromStream(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->downloadFileFromStream(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic downloadFileFromStream(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->downloadFileFromStream(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMaxRequestRetriesNumber()I
    .locals 1

    invoke-super {p0}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->getMaxRequestRetriesNumber()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getStreamingURL(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->getStreamingURL(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTokenLoginUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->getTokenLoginUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTokenLoginUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->getTokenLoginUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic imageStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    invoke-super {p0}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->imageStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic imageStreamWithLimit(II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->imageStreamWithLimit(II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic initializeAndGetBaiduPCSFileClient(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSFileClient;
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->initializeAndGetBaiduPCSFileClient(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSFileClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic list(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->list(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic makeDir(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->makeDir(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic meta(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->meta(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic meta(Ljava/lang/String;Z)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->meta(Ljava/lang/String;Z)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic move(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->move(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic move(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->move(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic queryCloudDownloadTaskProgress([Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->queryCloudDownloadTaskProgress([Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic queryCloudDownloadTaskStatus([Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->queryCloudDownloadTaskStatus([Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic quota()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;
    .locals 1

    invoke-super {p0}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->quota()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rename(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->rename(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rename(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->rename(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic search(Ljava/lang/String;Ljava/lang/String;Z)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->search(Ljava/lang/String;Ljava/lang/String;Z)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic search(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->search(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAccessToken(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->setAccessToken(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setMaxRequestRetriesNumber(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->setMaxRequestRetriesNumber(I)V

    return-void
.end method

.method public bridge synthetic streamWithSpecificMediaType(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->streamWithSpecificMediaType(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic streamWithSpecificMediaType(Ljava/lang/String;II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->streamWithSpecificMediaType(Ljava/lang/String;II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thumbnail(Ljava/lang/String;III)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->thumbnail(Ljava/lang/String;III)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic uploadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->uploadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic videoStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    invoke-super {p0}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->videoStream()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic videoStreamWithLimit(II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->videoStreamWithLimit(II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v0

    return-object v0
.end method
