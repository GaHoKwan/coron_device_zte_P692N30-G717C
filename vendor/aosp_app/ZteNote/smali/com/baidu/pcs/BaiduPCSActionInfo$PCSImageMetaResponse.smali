.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;
.super Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSImageMetaResponse"
.end annotation


# instance fields
.field public dateTaken:J

.field public hasthumbnail:Z

.field public latitude:D

.field public longtitude:D

.field public resolution:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;->hasthumbnail:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;->dateTaken:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;->resolution:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;->latitude:D

    iput-wide v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;->longtitude:D

    return-void
.end method
