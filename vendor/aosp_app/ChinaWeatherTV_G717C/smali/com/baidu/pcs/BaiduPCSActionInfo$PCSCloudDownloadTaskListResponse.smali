.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;
.super Ljava/lang/Object;
.source "BaiduPCSActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSCloudDownloadTaskListResponse"
.end annotation


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field public requestId:Ljava/lang/String;

.field public status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

.field public totalTaskNum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    .line 366
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->totalTaskNum:I

    .line 369
    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->requestId:Ljava/lang/String;

    .line 372
    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->list:Ljava/util/List;

    .line 360
    return-void
.end method