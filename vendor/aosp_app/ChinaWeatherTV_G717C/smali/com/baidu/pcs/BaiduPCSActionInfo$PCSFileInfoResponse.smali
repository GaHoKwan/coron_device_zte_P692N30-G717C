.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
.super Ljava/lang/Object;
.source "BaiduPCSActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSFileInfoResponse"
.end annotation


# instance fields
.field public commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

.field public status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    .line 92
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    .line 86
    return-void
.end method
