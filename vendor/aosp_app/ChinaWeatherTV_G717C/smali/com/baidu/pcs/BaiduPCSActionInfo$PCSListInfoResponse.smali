.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
.super Ljava/lang/Object;
.source "BaiduPCSActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSListInfoResponse"
.end annotation


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->list:Ljava/util/List;

    .line 210
    return-void
.end method