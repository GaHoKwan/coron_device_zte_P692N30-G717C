.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;
.super Ljava/lang/Object;
.source "BaiduPCSActionInfo.java"


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

    .prologue
    const/4 v3, -0x1

    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->taskId:Ljava/lang/String;

    .line 300
    iput v3, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->queryResult:I

    .line 303
    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->sourceUrl:Ljava/lang/String;

    .line 306
    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->savePath:Ljava/lang/String;

    .line 309
    iput-wide v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->rateLimit:J

    .line 312
    iput-wide v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->timeout:J

    .line 315
    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->callback:Ljava/lang/String;

    .line 318
    iput v3, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->status:I

    .line 321
    iput-wide v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->createTime:J

    .line 294
    return-void
.end method
