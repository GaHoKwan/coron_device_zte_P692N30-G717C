.class public Lcom/autonavi/xmgd/citydata/DownloadItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xcbd292d4de39e07L


# instance fields
.field public downloadedSize:J

.field public id:I

.field public name:Ljava/lang/String;

.field public saveDirPath:Ljava/lang/String;

.field public saveFilePath:Ljava/lang/String;

.field public sourceUrl:Ljava/lang/String;

.field public startDownloadTime:Ljava/lang/String;

.field public totalSize:J

.field public unzipSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xmgd/citydata/DownloadItem;->id:I

    iput-object p2, p0, Lcom/autonavi/xmgd/citydata/DownloadItem;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/xmgd/citydata/DownloadItem;->sourceUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/autonavi/xmgd/citydata/DownloadItem;->saveDirPath:Ljava/lang/String;

    iput-wide p5, p0, Lcom/autonavi/xmgd/citydata/DownloadItem;->totalSize:J

    iput-wide p7, p0, Lcom/autonavi/xmgd/citydata/DownloadItem;->unzipSize:J

    return-void
.end method
