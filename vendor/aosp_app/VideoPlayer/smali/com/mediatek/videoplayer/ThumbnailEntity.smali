.class public Lcom/mediatek/videoplayer/ThumbnailEntity;
.super Ljava/lang/Object;
.source "ThumbnailEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailEntity"


# instance fields
.field private mDateModified:J

.field private mIsSupport3D:Z

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IJZ)V
    .locals 0
    .parameter "thumbnail"
    .parameter "type"
    .parameter "dateModified"
    .parameter "isSupport3D"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p2, p0, Lcom/mediatek/videoplayer/ThumbnailEntity;->mType:I

    .line 50
    iput-object p1, p0, Lcom/mediatek/videoplayer/ThumbnailEntity;->mThumbnail:Landroid/graphics/Bitmap;

    .line 51
    iput-wide p3, p0, Lcom/mediatek/videoplayer/ThumbnailEntity;->mDateModified:J

    .line 52
    iput-boolean p5, p0, Lcom/mediatek/videoplayer/ThumbnailEntity;->mIsSupport3D:Z

    .line 53
    return-void
.end method


# virtual methods
.method public getDateModified()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/mediatek/videoplayer/ThumbnailEntity;->mDateModified:J

    return-wide v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailEntity;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/mediatek/videoplayer/ThumbnailEntity;->mType:I

    return v0
.end method

.method public isSupport3D()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/mediatek/videoplayer/ThumbnailEntity;->mIsSupport3D:Z

    return v0
.end method

.method public setDateModified(J)V
    .locals 0
    .parameter "dateModified"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/mediatek/videoplayer/ThumbnailEntity;->mDateModified:J

    .line 73
    return-void
.end method

.method public setSupport3D(Z)V
    .locals 0
    .parameter "support"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/mediatek/videoplayer/ThumbnailEntity;->mIsSupport3D:Z

    .line 85
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/videoplayer/ThumbnailEntity;->mThumbnail:Landroid/graphics/Bitmap;

    .line 81
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 76
    iput p1, p0, Lcom/mediatek/videoplayer/ThumbnailEntity;->mType:I

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThumbnailEntity(mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/videoplayer/ThumbnailEntity;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/videoplayer/ThumbnailEntity;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDateModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/videoplayer/ThumbnailEntity;->mDateModified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSupport3D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/videoplayer/ThumbnailEntity;->mIsSupport3D:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
