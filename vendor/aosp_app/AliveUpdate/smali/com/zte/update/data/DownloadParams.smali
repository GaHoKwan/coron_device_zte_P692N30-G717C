.class public Lcom/zte/update/data/DownloadParams;
.super Ljava/lang/Object;
.source "DownloadParams.java"


# instance fields
.field public endTime:J

.field public isSuc:Z

.field public startTime:J

.field private timeOfDl:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/update/data/DownloadParams;->isSuc:Z

    return-void
.end method


# virtual methods
.method public getTimeOfDl()J
    .locals 4

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/zte/update/data/DownloadParams;->endTime:J

    iget-wide v2, p0, Lcom/zte/update/data/DownloadParams;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public setTimeOfDl(J)V
    .locals 0
    .parameter "timeOfDl"

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/zte/update/data/DownloadParams;->timeOfDl:J

    .line 38
    return-void
.end method
