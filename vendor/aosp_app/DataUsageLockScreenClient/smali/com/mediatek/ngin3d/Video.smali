.class public final Lcom/mediatek/ngin3d/Video;
.super Lcom/mediatek/ngin3d/Plane;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/Video$VideoPlayerInitializer;
    }
.end annotation


# static fields
.field static final PROP_PLAYING:Lcom/mediatek/ngin3d/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_VIDEO_SRC:Lcom/mediatek/ngin3d/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/presentation/ImageSource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplyTransform:Z

.field private final mTransformMatrix:[F

.field private final mYFlipMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 53
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "video_source"

    const/4 v2, 0x0

    new-array v3, v5, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Video;->PROP_VIDEO_SRC:Lcom/mediatek/ngin3d/Property;

    .line 54
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "playing"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/mediatek/ngin3d/Property;

    sget-object v4, Lcom/mediatek/ngin3d/Video;->PROP_VIDEO_SRC:Lcom/mediatek/ngin3d/Property;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Video;->PROP_PLAYING:Lcom/mediatek/ngin3d/Property;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "isYUp"

    .prologue
    const/16 v1, 0x10

    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/Plane;-><init>(Z)V

    .line 56
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/mediatek/ngin3d/Video;->mTransformMatrix:[F

    .line 58
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/ngin3d/Video;->mYFlipMatrix:[F

    .line 70
    return-void

    .line 58
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public static createFromVideo(Landroid/content/Context;Landroid/net/Uri;II)Lcom/mediatek/ngin3d/Video;
    .locals 1
    .parameter "ctx"
    .parameter "uri"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/mediatek/ngin3d/Video;->createFromVideo(Landroid/content/Context;Landroid/net/Uri;IIZ)Lcom/mediatek/ngin3d/Video;

    move-result-object v0

    return-object v0
.end method

.method public static createFromVideo(Landroid/content/Context;Landroid/net/Uri;IIZ)Lcom/mediatek/ngin3d/Video;
    .locals 1
    .parameter "ctx"
    .parameter "uri"
    .parameter "width"
    .parameter "height"
    .parameter "isYUp"

    .prologue
    .line 164
    new-instance v0, Lcom/mediatek/ngin3d/Video;

    invoke-direct {v0, p4}, Lcom/mediatek/ngin3d/Video;-><init>(Z)V

    .line 165
    .local v0, video:Lcom/mediatek/ngin3d/Video;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/mediatek/ngin3d/Video;->setVideoFromUri(Landroid/content/Context;Landroid/net/Uri;II)V

    .line 166
    return-object v0
.end method


# virtual methods
.method public applyTransformMatrix(Z)V
    .locals 0
    .parameter "apply"

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/mediatek/ngin3d/Video;->mApplyTransform:Z

    .line 330
    return-void
.end method

.method protected applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
    .locals 5
    .parameter "property"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 81
    invoke-super {p0, p1, p2}, Lcom/mediatek/ngin3d/Plane;->applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    .end local p2
    :goto_0
    return v2

    .line 85
    .restart local p2
    :cond_0
    sget-object v4, Lcom/mediatek/ngin3d/Video;->PROP_VIDEO_SRC:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v4}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, p2

    .line 86
    check-cast v0, Lcom/mediatek/ngin3d/presentation/ImageSource;

    .line 87
    .local v0, src:Lcom/mediatek/ngin3d/presentation/ImageSource;
    if-nez v0, :cond_1

    move v2, v3

    .line 88
    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Video;->getPresentation()Lcom/mediatek/ngin3d/presentation/VideoDisplay;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/mediatek/ngin3d/presentation/VideoDisplay;->setImageSource(Lcom/mediatek/ngin3d/presentation/ImageSource;)V

    .line 91
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Video;->initializeVideoPlayer()V

    goto :goto_0

    .line 93
    .end local v0           #src:Lcom/mediatek/ngin3d/presentation/ImageSource;
    :cond_2
    sget-object v4, Lcom/mediatek/ngin3d/Video;->PROP_PLAYING:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v4}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 94
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Video;->getVideoPlayer()Lcom/mediatek/ngin3d/VideoPlayer;

    move-result-object v1

    .line 95
    .local v1, vp:Lcom/mediatek/ngin3d/VideoPlayer;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Video;->updateStreamingTexture()V

    .line 96
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 98
    sget-object v3, Lcom/mediatek/ngin3d/Video;->PROP_PLAYING:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v3}, Lcom/mediatek/ngin3d/Actor;->touchProperty(Lcom/mediatek/ngin3d/Property;)V

    .line 99
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/VideoPlayer;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_3

    .line 100
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/VideoPlayer;->start()V

    .line 110
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lcom/mediatek/ngin3d/Video;->mApplyTransform:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mediatek/ngin3d/Video;->mTransformMatrix:[F

    invoke-virtual {v1, v3}, Lcom/mediatek/ngin3d/VideoPlayer;->getTransformMatrix([F)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 111
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Video;->getPresentation()Lcom/mediatek/ngin3d/presentation/VideoDisplay;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ngin3d/Video;->mTransformMatrix:[F

    invoke-interface {v3, v4}, Lcom/mediatek/ngin3d/presentation/VideoDisplay;->setTextureTransform([F)V

    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/VideoPlayer;->pause()V

    goto :goto_1

    .line 113
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Video;->getPresentation()Lcom/mediatek/ngin3d/presentation/VideoDisplay;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ngin3d/Video;->mYFlipMatrix:[F

    invoke-interface {v3, v4}, Lcom/mediatek/ngin3d/presentation/VideoDisplay;->setTextureTransform([F)V

    goto :goto_0

    .end local v1           #vp:Lcom/mediatek/ngin3d/VideoPlayer;
    .restart local p2
    :cond_6
    move v2, v3

    .line 118
    goto :goto_0
.end method

.method protected bridge synthetic createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/ImageDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Video;->createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/VideoDisplay;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Video;->createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/VideoDisplay;

    move-result-object v0

    return-object v0
.end method

.method protected createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/VideoDisplay;
    .locals 2
    .parameter "engine"

    .prologue
    .line 126
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/Plane;->mIsYUp:Z

    invoke-interface {p1, v1}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->createVideoDisplay(Z)Lcom/mediatek/ngin3d/presentation/VideoDisplay;

    move-result-object v0

    .line 127
    .local v0, videoDisplay:Lcom/mediatek/ngin3d/presentation/VideoDisplay;
    iget-object v1, p0, Lcom/mediatek/ngin3d/Plane;->mRenderLayerForAttachment:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/mediatek/ngin3d/Plane;->mRenderLayerForAttachment:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    invoke-interface {v1, v0}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->setRenderTarget(Lcom/mediatek/ngin3d/presentation/ImageDisplay;)V

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ngin3d/Plane;->mRenderLayerForAttachment:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    .line 131
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getPresentation()Lcom/mediatek/ngin3d/presentation/ImageDisplay;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Video;->getPresentation()Lcom/mediatek/ngin3d/presentation/VideoDisplay;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPresentation()Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Video;->getPresentation()Lcom/mediatek/ngin3d/presentation/VideoDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getPresentation()Lcom/mediatek/ngin3d/presentation/VideoDisplay;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    check-cast v0, Lcom/mediatek/ngin3d/presentation/VideoDisplay;

    return-object v0
.end method

.method public getVideoPlayer()Lcom/mediatek/ngin3d/VideoPlayer;
    .locals 2

    .prologue
    .line 216
    sget-object v1, Lcom/mediatek/ngin3d/Video;->PROP_VIDEO_SRC:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v1}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/presentation/ImageSource;

    .line 217
    .local v0, src:Lcom/mediatek/ngin3d/presentation/ImageSource;
    if-eqz v0, :cond_0

    .line 218
    iget-object v1, v0, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcInfo:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ngin3d/VideoPlayer;

    .line 220
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initializeVideoPlayer()V
    .locals 4

    .prologue
    .line 240
    invoke-static {}, Lcom/mediatek/ngin3d/Stage;->getUiHandler()Lcom/mediatek/ngin3d/UiHandler;

    move-result-object v0

    .line 241
    .local v0, uiHandler:Lcom/mediatek/ngin3d/UiHandler;
    if-nez v0, :cond_0

    .line 242
    new-instance v2, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v3, "No UI thread handler found, which is necessary for video texture display."

    invoke-direct {v2, v3}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Video;->getVideoPlayer()Lcom/mediatek/ngin3d/VideoPlayer;

    move-result-object v1

    .line 246
    .local v1, vp:Lcom/mediatek/ngin3d/VideoPlayer;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/VideoPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    new-instance v2, Lcom/mediatek/ngin3d/Video$VideoPlayerInitializer;

    invoke-direct {v2, p0, v1}, Lcom/mediatek/ngin3d/Video$VideoPlayerInitializer;-><init>(Lcom/mediatek/ngin3d/Video;Lcom/mediatek/ngin3d/VideoPlayer;)V

    invoke-interface {v0, v2}, Lcom/mediatek/ngin3d/UiHandler;->post(Ljava/lang/Runnable;)V

    .line 249
    :cond_1
    return-void
.end method

.method public isDirty()Z
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Video;->getVideoPlayer()Lcom/mediatek/ngin3d/VideoPlayer;

    move-result-object v0

    .line 296
    .local v0, vp:Lcom/mediatek/ngin3d/VideoPlayer;
    invoke-super {p0}, Lcom/mediatek/ngin3d/Actor;->isDirty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/VideoPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Video;->getVideoPlayer()Lcom/mediatek/ngin3d/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/VideoPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lcom/mediatek/ngin3d/Video;->PROP_PLAYING:Lcom/mediatek/ngin3d/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 255
    sget-object v0, Lcom/mediatek/ngin3d/Video;->PROP_PLAYING:Lcom/mediatek/ngin3d/Property;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public setLooping(Ljava/lang/Boolean;)Lcom/mediatek/ngin3d/Video;
    .locals 2
    .parameter "looping"

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Video;->getVideoPlayer()Lcom/mediatek/ngin3d/VideoPlayer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/VideoPlayer;->setLooping(Z)Z

    .line 273
    return-object p0
.end method

.method protected setVideoFromUri(Landroid/content/Context;Landroid/net/Uri;II)V
    .locals 5
    .parameter "ctx"
    .parameter "uri"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 170
    new-instance v0, Lcom/mediatek/ngin3d/Dimension;

    int-to-float v1, p3

    int-to-float v2, p4

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/Dimension;-><init>(FF)V

    .line 171
    .local v0, dim:Lcom/mediatek/ngin3d/Dimension;
    sget-object v1, Lcom/mediatek/ngin3d/Video;->PROP_SIZE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 172
    sget-object v1, Lcom/mediatek/ngin3d/Video;->PROP_VIDEO_SRC:Lcom/mediatek/ngin3d/Property;

    new-instance v2, Lcom/mediatek/ngin3d/presentation/ImageSource;

    const/4 v3, 0x5

    new-instance v4, Lcom/mediatek/ngin3d/VideoPlayer;

    invoke-direct {v4, p1, p2}, Lcom/mediatek/ngin3d/VideoPlayer;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {v2, v3, v4}, Lcom/mediatek/ngin3d/presentation/ImageSource;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 173
    sget-object v1, Lcom/mediatek/ngin3d/Video;->PROP_VISIBLE:Lcom/mediatek/ngin3d/Property;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public setVolume(FF)Lcom/mediatek/ngin3d/Video;
    .locals 1
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Video;->getVideoPlayer()Lcom/mediatek/ngin3d/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ngin3d/VideoPlayer;->setVolume(FF)V

    .line 285
    return-object p0
.end method

.method public unrealize()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Lcom/mediatek/ngin3d/Actor;->unrealize()V

    .line 230
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Video;->getVideoPlayer()Lcom/mediatek/ngin3d/VideoPlayer;

    move-result-object v0

    .line 231
    .local v0, vt:Lcom/mediatek/ngin3d/VideoPlayer;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/VideoPlayer;->destroy()V

    .line 234
    :cond_0
    return-void
.end method

.method protected updateStreamingTexture()V
    .locals 3

    .prologue
    .line 177
    sget-object v2, Lcom/mediatek/ngin3d/Video;->PROP_VIDEO_SRC:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/presentation/ImageSource;

    .line 178
    .local v1, src:Lcom/mediatek/ngin3d/presentation/ImageSource;
    iget-object v2, v1, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcInfo:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/ngin3d/VideoPlayer;

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/VideoPlayer;->applyUpdate()Z

    move-result v0

    .line 179
    .local v0, isFirstUpdate:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Actor;->getVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Actor;->setVisible(Z)V

    .line 182
    :cond_0
    return-void
.end method
