.class public Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;
.super Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;
.source "OrdinaryVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;
    }
.end annotation


# static fields
.field private static final CLEAR_MOTION_DISABLE:I = 0x1

.field private static final CLEAR_MOTION_KEY:I = 0x6a4

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoThumbnailPlayInfo"


# instance fields
.field public final mediaPlayer:Landroid/media/MediaPlayer;

.field public final renderTarget:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;

.field public surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;-><init>()V

    .line 22
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 23
    new-instance v0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$1;-><init>(Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->renderTarget:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;

    .line 133
    return-void
.end method


# virtual methods
.method public pause()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public prepare()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 44
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->renderTarget:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;

    invoke-virtual {v4}, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->acquireSurfaceTexture()V

    .line 45
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->renderTarget:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;

    invoke-virtual {v4}, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 46
    .local v1, texture:Landroid/graphics/SurfaceTexture;
    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->surface:Landroid/view/Surface;

    .line 47
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->renderTarget:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 48
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 49
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v6, v6}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 50
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 51
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$2;

    invoke-direct {v5, p0}, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$2;-><init>(Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 63
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    .line 64
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 70
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/16 v5, 0x6a4

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setParameter(II)Z

    .line 72
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->renderTarget:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->isWorking:Z

    .line 86
    :goto_0
    return v2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->release()V

    .line 76
    const-string v2, "Gallery2/VideoThumbnailPlayInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "happens when openning video thumbnail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    move v2, v3

    .line 78
    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "Gallery2/VideoThumbnailPlayInfo"

    const-string v4, "thumbnail is released by pausing, give up openning"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 84
    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->renderTarget:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;

    iput-boolean v2, v1, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->isWorking:Z

    .line 91
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->renderTarget:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;

    iput-boolean v2, v1, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->isReadyForRender:Z

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 101
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 102
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->renderTarget:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->releaseSurfaceTexture()V

    .line 103
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Gallery2/VideoThumbnailPlayInfo"

    const-string v2, "thumbnail is released by pausing, give up recycling once again"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public render(Lcom/android/gallery3d/ui/GLCanvas;II)Z
    .locals 2
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->renderTarget:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;

    iget-boolean v1, v1, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->isReadyForRender:Z

    if-nez v1, :cond_0

    .line 124
    const/4 v1, 0x0

    .line 130
    :goto_0
    return v1

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->renderTarget:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method
