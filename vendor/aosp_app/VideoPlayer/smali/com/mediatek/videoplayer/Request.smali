.class public Lcom/mediatek/videoplayer/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private mPriority:J

.field private final mRowId:J

.field private mThumbnailEntity:Lcom/mediatek/videoplayer/ThumbnailEntity;


# direct methods
.method public constructor <init>(JJLcom/mediatek/videoplayer/ThumbnailEntity;)V
    .locals 0
    .parameter "rowId"
    .parameter "priority"
    .parameter "thumbnailEntity"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/mediatek/videoplayer/Request;->mRowId:J

    .line 48
    iput-wide p3, p0, Lcom/mediatek/videoplayer/Request;->mPriority:J

    .line 49
    iput-object p5, p0, Lcom/mediatek/videoplayer/Request;->mThumbnailEntity:Lcom/mediatek/videoplayer/ThumbnailEntity;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/videoplayer/Request;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/mediatek/videoplayer/Request;->mPriority:J

    return-wide v0
.end method

.method static getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/mediatek/videoplayer/Request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/mediatek/videoplayer/Request$1;

    invoke-direct {v0}, Lcom/mediatek/videoplayer/Request$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getPriority()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/mediatek/videoplayer/Request;->mPriority:J

    return-wide v0
.end method

.method public getRowId()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/mediatek/videoplayer/Request;->mRowId:J

    return-wide v0
.end method

.method public getThumbnailEntity()Lcom/mediatek/videoplayer/ThumbnailEntity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mediatek/videoplayer/Request;->mThumbnailEntity:Lcom/mediatek/videoplayer/ThumbnailEntity;

    return-object v0
.end method

.method public setPriority(J)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/mediatek/videoplayer/Request;->mPriority:J

    .line 77
    return-void
.end method

.method public setThumbnailEntity(Lcom/mediatek/videoplayer/ThumbnailEntity;)V
    .locals 0
    .parameter "thumbnailEntity"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/videoplayer/Request;->mThumbnailEntity:Lcom/mediatek/videoplayer/ThumbnailEntity;

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskInput(mRowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/videoplayer/Request;->mRowId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThumbnailEntity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/videoplayer/Request;->mThumbnailEntity:Lcom/mediatek/videoplayer/ThumbnailEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
