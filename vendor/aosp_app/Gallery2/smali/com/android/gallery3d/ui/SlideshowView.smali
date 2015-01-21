.class public Lcom/android/gallery3d/ui/SlideshowView;
.super Lcom/android/gallery3d/ui/GLView;
.source "SlideshowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;
    }
.end annotation


# static fields
.field private static final MOVE_SPEED:F = 0.2f

.field private static final PLACEHOLDER_COLOR:I = -0xddddde

.field private static final SCALE_SPEED:F = 0.2f

.field private static final SLIDESHOW_DURATION:I = 0xdac

.field private static final TAG:Ljava/lang/String; = "Gallery2/SlideshowView"

.field private static final TRANSITION_DURATION:I = 0x3e8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

.field private mCurrentMediaItem:Lcom/android/gallery3d/data/MediaItem;

.field private mCurrentMediaType:I

.field private mCurrentRotation:I

.field private mCurrentSubType:I

.field private mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mPrevAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

.field private mPrevMediaItem:Lcom/android/gallery3d/data/MediaItem;

.field private mPrevMediaType:I

.field private mPrevRotation:I

.field private mPrevSubType:I

.field private mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mRandom:Ljava/util/Random;

.field private final mTransitionAnimation:Lcom/android/gallery3d/anim/FloatAnimation;

.field private mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 66
    new-instance v0, Lcom/android/gallery3d/anim/FloatAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/anim/FloatAnimation;-><init>(FFI)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mTransitionAnimation:Lcom/android/gallery3d/anim/FloatAnimation;

    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mRandom:Ljava/util/Random;

    .line 76
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlideshowView;->mContext:Landroid/content/Context;

    const v2, 0x7f02009b

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    .line 78
    return-void
.end method


# virtual methods
.method protected drawVideoOverlay(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v7

    .line 82
    .local v7, viewWidth:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v6

    .line 83
    .local v6, viewHeight:I
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v4, v0, 0x6

    .line 84
    .local v4, iconSize:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    sub-int v1, v7, v4

    div-int/lit8 v2, v1, 0x2

    sub-int v1, v6, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 86
    return-void
.end method

.method public next(Landroid/graphics/Bitmap;I)V
    .locals 6
    .parameter "bitmap"
    .parameter "rotation"

    .prologue
    .line 91
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/SlideshowView;->next(Landroid/graphics/Bitmap;IIILcom/android/gallery3d/data/MediaItem;)V

    .line 92
    return-void
.end method

.method public next(Landroid/graphics/Bitmap;IIILcom/android/gallery3d/data/MediaItem;)V
    .locals 4
    .parameter "bitmap"
    .parameter "rotation"
    .parameter "subType"
    .parameter "mediaType"
    .parameter "mediaItem"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mTransitionAnimation:Lcom/android/gallery3d/anim/FloatAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/Animation;->start()V

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/UploadedTexture;->recycle()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    .line 106
    iget v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentRotation:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevRotation:I

    .line 109
    iget v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentSubType:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevSubType:I

    .line 110
    iput p3, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentSubType:I

    .line 112
    iget v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentMediaType:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevMediaType:I

    .line 113
    iput p4, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentMediaType:I

    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentMediaItem:Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevMediaItem:Lcom/android/gallery3d/data/MediaItem;

    .line 116
    iput-object p5, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentMediaItem:Lcom/android/gallery3d/data/MediaItem;

    .line 119
    iput p2, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentRotation:I

    .line 120
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 121
    div-int/lit8 v0, p2, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/UploadedTexture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/UploadedTexture;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/SlideshowView;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;-><init>(Lcom/android/gallery3d/ui/SlideshowView;IILjava/util/Random;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->setSubType(I)V

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/Animation;->start()V

    .line 136
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 137
    return-void

    .line 126
    :cond_1
    new-instance v0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/UploadedTexture;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/UploadedTexture;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/SlideshowView;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;-><init>(Lcom/android/gallery3d/ui/SlideshowView;IILjava/util/Random;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/UploadedTexture;->recycle()V

    .line 142
    iput-object v1, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/UploadedTexture;->recycle()V

    .line 146
    iput-object v1, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 148
    :cond_1
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 152
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v11

    .line 153
    .local v11, animTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mTransitionAnimation:Lcom/android/gallery3d/anim/FloatAnimation;

    invoke-virtual {v3, v11, v12}, Lcom/android/gallery3d/anim/Animation;->calculate(J)Z

    move-result v15

    .line 154
    .local v15, requestRender:Z
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v13

    .line 155
    .local v13, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v13, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-nez v3, :cond_3

    const/high16 v10, 0x3f80

    .line 158
    .local v10, alpha:F
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v3, :cond_0

    const/high16 v3, 0x3f80

    cmpl-float v3, v10, v3

    if-eqz v3, :cond_0

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v3, v11, v12}, Lcom/android/gallery3d/anim/Animation;->calculate(J)Z

    move-result v3

    or-int/2addr v15, v3

    .line 160
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 161
    const/high16 v3, 0x3f80

    sub-float/2addr v3, v10

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 163
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevRotation:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/UploadedTexture;->getWidth()I

    move-result v16

    .line 165
    .local v16, width:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/UploadedTexture;->getHeight()I

    move-result v14

    .line 166
    .local v14, height:I
    move/from16 v0, v16

    neg-int v3, v0

    div-int/lit8 v17, v3, 0x2

    .line 167
    .local v17, x:I
    neg-int v3, v14

    div-int/lit8 v18, v3, 0x2

    .line 169
    .local v18, y:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v3}, Lcom/mediatek/gallery3d/drm/DrmHelper;->drmIsNeedDrawDefault(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 170
    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v5, v0

    move/from16 v0, v16

    int-to-float v6, v0

    int-to-float v7, v14

    const v8, -0xddddde

    move-object/from16 v3, p1

    invoke-interface/range {v3 .. v8}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 181
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 183
    const/4 v3, 0x1

    const/16 v4, 0x303

    invoke-interface {v13, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 184
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevMediaType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 185
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/ui/SlideshowView;->drawVideoOverlay(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 189
    .end local v14           #height:I
    .end local v16           #width:I
    .end local v17           #x:I
    .end local v18           #y:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v3, :cond_1

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v3, v11, v12}, Lcom/android/gallery3d/anim/Animation;->calculate(J)Z

    move-result v3

    or-int/2addr v15, v3

    .line 191
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 192
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 194
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentRotation:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/UploadedTexture;->getWidth()I

    move-result v16

    .line 196
    .restart local v16       #width:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/UploadedTexture;->getHeight()I

    move-result v14

    .line 197
    .restart local v14       #height:I
    move/from16 v0, v16

    neg-int v3, v0

    div-int/lit8 v17, v3, 0x2

    .line 198
    .restart local v17       #x:I
    neg-int v3, v14

    div-int/lit8 v18, v3, 0x2

    .line 200
    .restart local v18       #y:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v3}, Lcom/mediatek/gallery3d/drm/DrmHelper;->drmIsNeedDrawDefault(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 201
    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v5, v0

    move/from16 v0, v16

    int-to-float v6, v0

    int-to-float v7, v14

    const v8, -0xddddde

    move-object/from16 v3, p1

    invoke-interface/range {v3 .. v8}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 211
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 213
    const/4 v3, 0x1

    const/16 v4, 0x303

    invoke-interface {v13, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 214
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentMediaType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 215
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/ui/SlideshowView;->drawVideoOverlay(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 219
    .end local v14           #height:I
    .end local v16           #width:I
    .end local v17           #x:I
    .end local v18           #y:I
    :cond_1
    if-eqz v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 220
    :cond_2
    const/4 v3, 0x1

    const/16 v4, 0x303

    invoke-interface {v13, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 221
    return-void

    .line 156
    .end local v10           #alpha:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mTransitionAnimation:Lcom/android/gallery3d/anim/FloatAnimation;

    invoke-virtual {v3}, Lcom/android/gallery3d/anim/FloatAnimation;->get()F

    move-result v10

    goto/16 :goto_0

    .line 173
    .restart local v10       #alpha:F
    .restart local v14       #height:I
    .restart local v16       #width:I
    .restart local v17       #x:I
    .restart local v18       #y:I
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevSubType:I

    invoke-static {v3}, Lcom/mediatek/gallery3d/util/MediatekFeature;->permitShowThumb(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 178
    :goto_3
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevSubType:I

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->getCurrentScale()F

    move-result v4

    div-float v9, v3, v4

    move-object/from16 v3, p1

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v16

    move v7, v14

    invoke-static/range {v3 .. v9}, Lcom/mediatek/gallery3d/drm/DrmHelper;->renderSubTypeOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIIIF)V

    goto/16 :goto_1

    .line 176
    :cond_5
    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v5, v0

    move/from16 v0, v16

    int-to-float v6, v0

    int-to-float v7, v14

    const v8, -0xddddde

    move-object/from16 v3, p1

    invoke-interface/range {v3 .. v8}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    goto :goto_3

    .line 203
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentSubType:I

    invoke-static {v3}, Lcom/mediatek/gallery3d/util/MediatekFeature;->permitShowThumb(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 208
    :goto_4
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentSubType:I

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->getCurrentScale()F

    move-result v4

    div-float v9, v3, v4

    move-object/from16 v3, p1

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v16

    move v7, v14

    invoke-static/range {v3 .. v9}, Lcom/mediatek/gallery3d/drm/DrmHelper;->renderSubTypeOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIIIF)V

    goto/16 :goto_2

    .line 206
    :cond_7
    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v5, v0

    move/from16 v0, v16

    int-to-float v6, v0

    int-to-float v7, v14

    const v8, -0xddddde

    move-object/from16 v3, p1

    invoke-interface/range {v3 .. v8}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    goto :goto_4
.end method
