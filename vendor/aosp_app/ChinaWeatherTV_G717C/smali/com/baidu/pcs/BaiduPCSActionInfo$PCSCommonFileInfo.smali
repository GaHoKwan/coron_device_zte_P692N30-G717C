.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;
.super Ljava/lang/Object;
.source "BaiduPCSActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSCommonFileInfo"
.end annotation


# instance fields
.field public blockList:Ljava/lang/String;

.field public cTime:J

.field public fsId:J

.field public hasSubFolder:Z

.field public isDir:Z

.field public mTime:J

.field public path:Ljava/lang/String;

.field public size:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->path:Ljava/lang/String;

    .line 37
    iput-wide v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->mTime:J

    .line 40
    iput-wide v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->cTime:J

    .line 43
    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->blockList:Ljava/lang/String;

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->size:J

    .line 50
    iput-boolean v4, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->isDir:Z

    .line 53
    iput-boolean v4, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->hasSubFolder:Z

    .line 55
    iput-wide v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->fsId:J

    .line 31
    return-void
.end method
