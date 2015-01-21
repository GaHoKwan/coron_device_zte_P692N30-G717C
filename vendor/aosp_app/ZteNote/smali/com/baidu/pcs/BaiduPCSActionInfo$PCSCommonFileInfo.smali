.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;
.super Ljava/lang/Object;


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

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->path:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->mTime:J

    iput-wide v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->cTime:J

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->blockList:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->size:J

    iput-boolean v4, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->isDir:Z

    iput-boolean v4, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->hasSubFolder:Z

    iput-wide v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->fsId:J

    return-void
.end method
