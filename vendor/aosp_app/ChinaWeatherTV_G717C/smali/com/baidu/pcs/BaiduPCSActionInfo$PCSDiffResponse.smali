.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;
.super Ljava/lang/Object;
.source "BaiduPCSActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSDiffResponse"
.end annotation


# instance fields
.field public cursor:Ljava/lang/String;

.field public entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public hasMore:Z

.field public isReseted:Z

.field public status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    .line 264
    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->entries:Ljava/util/List;

    .line 267
    iput-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->hasMore:Z

    .line 270
    iput-boolean v1, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->isReseted:Z

    .line 273
    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->cursor:Ljava/lang/String;

    .line 258
    return-void
.end method
