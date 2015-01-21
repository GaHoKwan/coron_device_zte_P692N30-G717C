.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSMetaResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;
    }
.end annotation


# instance fields
.field public commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

.field public status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

.field public type:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Unknown:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->type:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    return-void
.end method
