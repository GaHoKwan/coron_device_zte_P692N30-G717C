.class public Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSFileTransferTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubFileInfo"
.end annotation


# instance fields
.field public id:J

.field public isDir:Z

.field public offset:J

.field public path:Ljava/lang/String;

.field public size:J


# direct methods
.method public constructor <init>(JLjava/lang/String;ZJJ)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->isDir:Z

    iput-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iput-wide v2, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    iput-wide p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J

    iput-object p3, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->isDir:Z

    iput-wide p5, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    iput-wide p7, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    return-void
.end method
