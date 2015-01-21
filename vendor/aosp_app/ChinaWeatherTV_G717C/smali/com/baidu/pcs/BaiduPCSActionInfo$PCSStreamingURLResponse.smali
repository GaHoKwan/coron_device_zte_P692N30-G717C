.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;
.super Ljava/lang/Object;
.source "BaiduPCSActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSStreamingURLResponse"
.end annotation


# instance fields
.field public status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;->url:Ljava/lang/String;

    .line 408
    return-void
.end method
