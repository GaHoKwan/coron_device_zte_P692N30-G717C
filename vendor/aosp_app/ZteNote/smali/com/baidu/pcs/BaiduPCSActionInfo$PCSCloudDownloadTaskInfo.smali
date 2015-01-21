.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSCloudDownloadTaskInfo"
.end annotation


# instance fields
.field public callback:Ljava/lang/String;

.field public createTime:J

.field public queryResult:I

.field public rateLimit:J

.field public savePath:Ljava/lang/String;

.field public sourceUrl:Ljava/lang/String;

.field public status:I

.field public taskId:Ljava/lang/String;

.field public timeout:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->taskId:Ljava/lang/String;

    iput v3, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->queryResult:I

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->sourceUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->savePath:Ljava/lang/String;

    iput-wide v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->rateLimit:J

    iput-wide v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->timeout:J

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->callback:Ljava/lang/String;

    iput v3, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->status:I

    iput-wide v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->createTime:J

    return-void
.end method
