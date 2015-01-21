.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;
.super Ljava/lang/Object;
.source "BaiduPCSActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSCloudDownloadQueryTaskProgressResponse"
.end annotation


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;",
            ">;"
        }
    .end annotation
.end field

.field public requestId:Ljava/lang/String;

.field public status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    .line 399
    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->requestId:Ljava/lang/String;

    .line 402
    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->list:Ljava/util/List;

    .line 393
    return-void
.end method
