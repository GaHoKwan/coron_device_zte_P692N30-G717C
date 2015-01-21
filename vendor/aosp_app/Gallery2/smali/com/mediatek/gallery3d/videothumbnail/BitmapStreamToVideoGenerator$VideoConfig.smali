.class public final Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;
.super Ljava/lang/Object;
.source "BitmapStreamToVideoGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoConfig"
.end annotation


# instance fields
.field public bitRate:I

.field public frameCount:I

.field public frameHeight:I

.field public frameInterval:F

.field public frameWidth:I

.field public framesBetweenIFrames:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameCount:I

    return-void
.end method

.method public static copy(Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;)Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;
    .locals 2
    .parameter "another"

    .prologue
    .line 34
    new-instance v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;-><init>()V

    .line 35
    .local v0, vInfo:Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;
    iget v1, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->bitRate:I

    iput v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->bitRate:I

    .line 36
    iget v1, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->framesBetweenIFrames:I

    iput v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->framesBetweenIFrames:I

    .line 37
    iget v1, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameInterval:F

    iput v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameInterval:F

    .line 38
    iget v1, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameCount:I

    iput v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameCount:I

    .line 39
    iget v1, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    iput v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    .line 40
    iget v1, p0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameHeight:I

    iput v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameHeight:I

    .line 41
    return-object v0
.end method
