.class Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;
.super Lcom/baidu/pcs/BaiduPCSClientBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaiduPCSClient"

.field public static final Type_Media_MP4_360P:Ljava/lang/String; = "MP4_360P"

.field public static final Type_Media_MP4_480P:Ljava/lang/String; = "MP4_480P"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSClientBase;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->setEquipmentInfo(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSClientBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->setEquipmentInfo(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBase;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->setEquipmentInfo(Landroid/content/Context;)V

    return-void
.end method

.method private setEquipmentInfo(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/baidu/pcs/common/BaiduSDKIdentityManager;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/common/BaiduSDKIdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/pcs/common/BaiduSDKIdentityManager;->getCID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/pcs/BaiduPCSActionBase;->setTn(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/baidu/pcs/common/BaiduSDKIdentityManager;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/common/BaiduSDKIdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/pcs/common/BaiduSDKIdentityManager;->getUA()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/pcs/BaiduPCSActionBase;->setUa(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/baidu/pcs/common/BaiduSDKIdentityManager;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/common/BaiduSDKIdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/pcs/common/BaiduSDKIdentityManager;->getUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/pcs/BaiduPCSActionBase;->setUid(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public batchDownloadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->batchDownloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public batchDownloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->batchDownloadFiles(Ljava/util/List;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public batchDownloadFiles(Ljava/util/List;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->batchDownloadFiles(Ljava/util/List;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public batchDownloadFiles(Ljava/util/List;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/baidu/pcs/BaiduPCSDownloader;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSDownloader;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSDownloader;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/pcs/BaiduPCSDownloader;->batchDownloadFiles(Ljava/util/List;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public createFileLink(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileLink;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSFileLink;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileLink;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSFileLink;->createFileLink(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;

    move-result-object v0

    return-object v0
.end method

.method public createWebFileLink(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileLink;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSFileLink;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileLink;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSFileLink;->createwebFileLink(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;

    move-result-object v0

    return-object v0
.end method

.method public createWebFileLink(Ljava/util/ArrayList;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileLink;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSFileLink;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileLink;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSFileLink;->createwebFileLink(Ljava/util/ArrayList;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;

    move-result-object v0

    return-object v0
.end method

.method public deleteFileLink(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileLink;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSFileLink;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSFileLink;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/baidu/pcs/BaiduPCSFileLink;->deleteFileLink(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public destroyBaiduPCSFileClient()V
    .locals 1

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSFileClient;->getInstance()Lcom/baidu/pcs/BaiduPCSFileClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileClient;->destroy()V

    :cond_0
    return-void
.end method

.method public downloadFileAsMP4360P(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2

    const-string v0, "MP4_360P"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->downloadFileAsSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public downloadFileAsMP4360P(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    const-string v0, "MP4_360P"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->downloadFileAsSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public downloadFileAsMP4480P(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2

    const-string v0, "MP4_480P"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->downloadFileAsSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public downloadFileAsMP4480P(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 1

    const-string v0, "MP4_480P"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->downloadFileAsSpecificCodecType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    return-object v0
.end method

.method public getMaxRequestRetriesNumber()I
    .locals 1

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSActionBase;->getMaxRequestRetriesNumber()I

    move-result v0

    return v0
.end method

.method public getTokenLoginUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSTokenLogin;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSTokenLogin;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSTokenLogin;->setAccessToken(Ljava/lang/String;)V

    :try_start_0
    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/baidu/pcs/BaiduPCSTokenLogin;->getTokenLoginUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public getTokenLoginUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/baidu/pcs/BaiduPCSTokenLogin;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSTokenLogin;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSTokenLogin;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/baidu/pcs/BaiduPCSTokenLogin;->getTokenLoginUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeAndGetBaiduPCSFileClient(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSFileClient;
    .locals 3

    const/4 v0, 0x0

    if-nez p5, :cond_0

    const-string v1, "BaiduPCSClient"

    const-string v2, "userName is null"

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "BaiduPCSClient"

    const-string v2, "context is null"

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->setEquipmentInfo(Landroid/content/Context;)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/baidu/pcs/BaiduPCSFileClient;->getInstance(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSFileClient;

    move-result-object v0

    goto :goto_0
.end method

.method public meta(Ljava/lang/String;Z)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSMeta;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSMeta;-><init>()V

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSClientBaseForEnterprise;->mbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/pcs/BaiduPCSMeta;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/baidu/pcs/BaiduPCSMeta;->meta(Ljava/lang/String;Z)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    move-result-object v0

    return-object v0
.end method

.method public setMaxRequestRetriesNumber(I)V
    .locals 2

    if-gtz p1, :cond_0

    const-string v0, "BaiduPCSClient"

    const-string v1, "maxRequestRetriesNumber must >0"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/baidu/pcs/BaiduPCSActionBase;->setMaxRequestRetriesNumber(I)V

    goto :goto_0
.end method
