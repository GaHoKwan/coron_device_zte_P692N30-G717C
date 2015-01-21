.class public abstract Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;
.super Ljava/lang/Object;
.source "OrdinaryVideoPlayer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoThumbnail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail$VideoFrameTexture;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoThumbnail"

.field static final TEXTURE_HEIGHT:I = 0x80

.field static final TEXTURE_WIDTH:I = 0x80


# instance fields
.field protected isReadyForRender:Z

.field public volatile isWorking:Z

.field protected mHasNewFrame:Z

.field private mHasTexture:Z

.field private mHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTransformFinal:[F

.field private mTransformForCropingCenter:[F

.field private mTransformFromSurfaceTexture:[F

.field private mVideoFrameTexture:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail$VideoFrameTexture;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v0, 0x80

    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mWidth:I

    .line 155
    iput v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mHeight:I

    .line 156
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mTransformFromSurfaceTexture:[F

    .line 157
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mTransformForCropingCenter:[F

    .line 158
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mTransformFinal:[F

    .line 159
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mHasTexture:Z

    .line 160
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mHasNewFrame:Z

    .line 161
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->isReadyForRender:Z

    .line 162
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->isWorking:Z

    return-void
.end method

.method private static genCononTexCoords(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail$VideoFrameTexture;)V
    .locals 9
    .parameter "source"
    .parameter "target"
    .parameter "texture"

    .prologue
    .line 290
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/ExtTexture;->getWidth()I

    move-result v3

    .line 291
    .local v3, width:I
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/ExtTexture;->getHeight()I

    move-result v0

    .line 292
    .local v0, height:I
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/ExtTexture;->getTextureWidth()I

    move-result v2

    .line 293
    .local v2, texWidth:I
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/ExtTexture;->getTextureHeight()I

    move-result v1

    .line 295
    .local v1, texHeight:I
    iget v6, p0, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->left:F

    .line 296
    iget v6, p0, Landroid/graphics/RectF;->right:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->right:F

    .line 297
    iget v6, p0, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->top:F

    .line 298
    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->bottom:F

    .line 301
    int-to-float v6, v3

    int-to-float v7, v2

    div-float v4, v6, v7

    .line 302
    .local v4, xBound:F
    iget v6, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    .line 303
    iget v6, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->left:F

    sub-float v8, v4, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->right:F

    .line 305
    iput v4, p0, Landroid/graphics/RectF;->right:F

    .line 307
    :cond_0
    int-to-float v6, v0

    int-to-float v7, v1

    div-float v5, v6, v7

    .line 308
    .local v5, yBound:F
    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    .line 309
    iget v6, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->top:F

    sub-float v8, v5, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->bottom:F

    .line 311
    iput v5, p0, Landroid/graphics/RectF;->bottom:F

    .line 313
    :cond_1
    return-void
.end method

.method private genExtTexMatForSubTile(Landroid/graphics/RectF;)V
    .locals 5
    .parameter "subRange"

    .prologue
    const/high16 v4, 0x3f80

    .line 316
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mTransformForCropingCenter:[F

    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 317
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mTransformForCropingCenter:[F

    const/4 v1, 0x5

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 318
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mTransformForCropingCenter:[F

    const/16 v1, 0xa

    aput v4, v0, v1

    .line 319
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mTransformForCropingCenter:[F

    const/16 v1, 0xc

    iget v2, p1, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    .line 320
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mTransformForCropingCenter:[F

    const/16 v1, 0xd

    iget v2, p1, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    .line 321
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mTransformForCropingCenter:[F

    const/16 v1, 0xf

    aput v4, v0, v1

    .line 322
    return-void
.end method

.method private static releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "st"

    .prologue
    .line 188
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_RELEASE_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 191
    :cond_0
    return-void
.end method

.method private static setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .parameter "st"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 178
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_DEFALT_BUFFER_SIZE:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 3

    .prologue
    const/16 v2, 0x80

    .line 165
    new-instance v0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail$VideoFrameTexture;

    const v1, 0x8d65

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail$VideoFrameTexture;-><init>(Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;I)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mVideoFrameTexture:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail$VideoFrameTexture;

    .line 167
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mVideoFrameTexture:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail$VideoFrameTexture;

    invoke-virtual {v0, v2, v2}, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail$VideoFrameTexture;->setSize(II)V

    .line 168
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mVideoFrameTexture:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail$VideoFrameTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 169
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0, v2, v2}, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V

    .line 170
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 171
    monitor-enter p0

    .line 172
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mHasTexture:Z

    .line 173
    monitor-exit p0

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 14
    .parameter "canvas"
    .parameter "slotWidth"
    .parameter "slotHeight"

    .prologue
    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mHasTexture:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->isWorking:Z

    if-nez v1, :cond_1

    .line 212
    :cond_0
    monitor-exit p0

    .line 256
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mTransformFromSurfaceTexture:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 219
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 220
    div-int/lit8 v8, p2, 0x2

    .line 221
    .local v8, cx:I
    div-int/lit8 v9, p3, 0x2

    .line 222
    .local v9, cy:I
    int-to-float v1, v8

    int-to-float v2, v9

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 223
    const/high16 v1, 0x3f80

    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    invoke-interface {p1, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 224
    neg-int v1, v8

    int-to-float v1, v1

    neg-int v2, v9

    int-to-float v2, v2

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 228
    new-instance v13, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    invoke-direct {v13, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 232
    .local v13, targetRect:Landroid/graphics/RectF;
    iget v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mWidth:I

    iget v2, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mHeight:I

    if-le v1, v2, :cond_2

    .line 233
    iget v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mWidth:I

    iget v2, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mHeight:I

    sub-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x80

    int-to-float v1, v1

    iget v2, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mWidth:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 235
    .local v11, longSideStart:F
    const/high16 v1, 0x4300

    sub-float v10, v1, v11

    .line 236
    .local v10, longSideEnd:F
    new-instance v12, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x4300

    invoke-direct {v12, v11, v1, v10, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 246
    .local v12, sourceRect:Landroid/graphics/RectF;
    :goto_1
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mVideoFrameTexture:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail$VideoFrameTexture;

    invoke-static {v12, v13, v1}, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->genCononTexCoords(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail$VideoFrameTexture;)V

    .line 247
    invoke-direct {p0, v12}, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->genExtTexMatForSubTile(Landroid/graphics/RectF;)V

    .line 248
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mTransformFinal:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mTransformFromSurfaceTexture:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mTransformForCropingCenter:[F

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 251
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mVideoFrameTexture:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail$VideoFrameTexture;

    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mTransformFinal:[F

    iget v1, v13, Landroid/graphics/RectF;->left:F

    float-to-int v4, v1

    iget v1, v13, Landroid/graphics/RectF;->top:F

    float-to-int v5, v1

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v6, v1

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v7, v1

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;[FIIII)V

    .line 254
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 255
    monitor-exit p0

    goto/16 :goto_0

    .end local v8           #cx:I
    .end local v9           #cy:I
    .end local v10           #longSideEnd:F
    .end local v11           #longSideStart:F
    .end local v12           #sourceRect:Landroid/graphics/RectF;
    .end local v13           #targetRect:Landroid/graphics/RectF;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 239
    .restart local v8       #cx:I
    .restart local v9       #cy:I
    .restart local v13       #targetRect:Landroid/graphics/RectF;
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mHeight:I

    iget v2, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mWidth:I

    sub-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x80

    int-to-float v1, v1

    iget v2, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mHeight:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 241
    .restart local v11       #longSideStart:F
    const/high16 v1, 0x4300

    sub-float v10, v1, v11

    .line 242
    .restart local v10       #longSideEnd:F
    new-instance v12, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x4300

    invoke-direct {v12, v1, v11, v2, v10}, Landroid/graphics/RectF;-><init>(FFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v12       #sourceRect:Landroid/graphics/RectF;
    goto :goto_1
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public abstract onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end method

.method public onGLIdle(Lcom/android/gallery3d/ui/GLCanvas;Z)Z
    .locals 4
    .parameter "canvas"
    .parameter "renderRequested"

    .prologue
    const/4 v3, 0x0

    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->isWorking:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mHasTexture:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mHasNewFrame:Z

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 271
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    :cond_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mHasNewFrame:Z

    .line 278
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->isReadyForRender:Z

    .line 280
    :cond_1
    monitor-exit p0

    .line 281
    :goto_0
    return v3

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Gallery2/VideoThumbnail"

    const-string v2, "notify author that mSurfaceTexture in thumbnail released when updating tex img"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    monitor-exit p0

    goto :goto_0

    .line 280
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 261
    iput p2, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mWidth:I

    .line 262
    iput p3, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mHeight:I

    .line 263
    return-void
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mHasTexture:Z

    if-nez v0, :cond_0

    .line 200
    monitor-exit p0

    .line 207
    :goto_0
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mHasTexture:Z

    .line 202
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mVideoFrameTexture:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail$VideoFrameTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ExtTexture;->recycle()V

    .line 204
    iput-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mVideoFrameTexture:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail$VideoFrameTexture;

    .line 205
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 206
    iput-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
