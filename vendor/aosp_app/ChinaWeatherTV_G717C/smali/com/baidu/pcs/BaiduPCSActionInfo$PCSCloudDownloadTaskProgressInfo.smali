.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;
.super Ljava/lang/Object;
.source "BaiduPCSActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSCloudDownloadTaskProgressInfo"
.end annotation


# instance fields
.field public createTime:J

.field public fileSize:J

.field public finishedSize:J

.field public finishedTime:J

.field public queryResult:I

.field public startTime:J

.field public status:I

.field public taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const-wide/16 v1, -0x1

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->taskId:Ljava/lang/String;

    .line 336
    iput v3, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->queryResult:I

    .line 339
    iput-wide v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->startTime:J

    .line 342
    iput-wide v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->finishedSize:J

    .line 345
    iput-wide v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->fileSize:J

    .line 348
    iput-wide v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->finishedTime:J

    .line 351
    iput-wide v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->createTime:J

    .line 354
    iput v3, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->status:I

    .line 331
    return-void
.end method
