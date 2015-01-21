.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;
.super Ljava/lang/Object;
.source "BaiduPCSActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSQuotaResponse"
.end annotation


# instance fields
.field public status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

.field public total:J

.field public used:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    .line 67
    iput-wide v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;->total:J

    .line 70
    iput-wide v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;->used:J

    .line 61
    return-void
.end method
