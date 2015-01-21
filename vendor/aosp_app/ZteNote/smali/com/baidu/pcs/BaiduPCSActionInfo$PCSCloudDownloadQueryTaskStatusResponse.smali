.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSCloudDownloadQueryTaskStatusResponse"
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


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->requestId:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->list:Ljava/util/List;

    return-void
.end method
