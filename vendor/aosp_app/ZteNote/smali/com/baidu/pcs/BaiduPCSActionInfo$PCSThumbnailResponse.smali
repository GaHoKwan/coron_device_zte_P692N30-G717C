.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSThumbnailResponse"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method