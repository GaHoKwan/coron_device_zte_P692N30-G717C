.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSFileFromToInfo"
.end annotation


# instance fields
.field public from:Ljava/lang/String;

.field public to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    return-void
.end method
