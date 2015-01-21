.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;
.super Ljava/lang/Object;
.source "BaiduPCSActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSDifferEntryInfo"
.end annotation


# instance fields
.field public commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

.field public isDeleted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;->isDeleted:Z

    .line 246
    return-void
.end method
