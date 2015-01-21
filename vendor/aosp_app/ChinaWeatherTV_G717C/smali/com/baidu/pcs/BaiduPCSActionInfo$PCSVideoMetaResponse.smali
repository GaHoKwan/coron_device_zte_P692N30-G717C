.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;
.super Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
.source "BaiduPCSActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSVideoMetaResponse"
.end annotation


# instance fields
.field public cateogry:Ljava/lang/String;

.field public dateTaken:J

.field public duration:J

.field public hasthumbnail:Z

.field public resolution:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;->hasthumbnail:Z

    .line 174
    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;->resolution:Ljava/lang/String;

    .line 177
    iput-wide v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;->duration:J

    .line 180
    iput-wide v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;->dateTaken:J

    .line 183
    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;->cateogry:Ljava/lang/String;

    .line 168
    return-void
.end method
