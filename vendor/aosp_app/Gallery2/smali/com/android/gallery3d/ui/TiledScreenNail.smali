.class public Lcom/android/gallery3d/ui/TiledScreenNail;
.super Ljava/lang/Object;
.source "TiledScreenNail.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ScreenNail;


# static fields
.field private static final ANIMATION_DONE:J = -0x3L

.field private static final ANIMATION_NEEDED:J = -0x2L

.field private static final ANIMATION_NOT_NEEDED:J = -0x1L

.field private static final DURATION:I = 0xb4

.field protected static final PLACEHOLDER_COLOR:I = -0xddddde

.field private static final TAG:Ljava/lang/String; = "Gallery2/TiledScreenNail"

.field private static mDrawPlaceholder:Z

.field private static mPlaceholderColor:I

.field public static mWaitFinishedTime:J

.field private static sMaxSide:I


# instance fields
.field private mAnimationStartTime:J

.field private mBitmap:Landroid/graphics/Bitmap;

.field protected mHeight:I

.field private mTexture:Lcom/android/gallery3d/ui/TiledTexture;

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const/16 v0, 0x280

    sput v0, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    .line 58
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWaitFinishedTime:J

    .line 73
    const v0, -0xddddde

    sput v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/TiledScreenNail;->setSize(II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    .line 63
    iput-object p1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 64
    new-instance v0, Lcom/android/gallery3d/ui/TiledTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/TiledTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    .line 65
    return-void
.end method

.method public static disableDrawPlaceholder()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    .line 156
    return-void
.end method

.method public static enableDrawPlaceholder()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    .line 160
    return-void
.end method

.method private getRatio()F
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 214
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x4334

    div-float v0, v1, v2

    .line 215
    .local v0, r:F
    sub-float v1, v5, v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method private static recycleBitmap(Lcom/android/gallery3d/data/BitmapPool;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "pool"
    .parameter "bitmap"

    .prologue
    .line 91
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static setMaxSide(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 227
    sput p0, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    .line 228
    return-void
.end method

.method public static setPlaceholderColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 77
    sput p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    .line 78
    return-void
.end method

.method private setSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 82
    :cond_0
    sget p1, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    .line 83
    sget v1, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 p2, v1, 0x4

    .line 85
    :cond_1
    const/high16 v1, 0x3f80

    sget v2, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    int-to-float v2, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 86
    .local v0, scale:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    .line 87
    int-to-float v1, p2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    .line 88
    return-void
.end method


# virtual methods
.method public combine(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 4
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    .line 98
    if-nez p1, :cond_0

    .line 121
    .end local p0
    :goto_0
    return-object p0

    .line 102
    .restart local p0
    :cond_0
    instance-of v1, p1, Lcom/android/gallery3d/ui/TiledScreenNail;

    if-nez v1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TiledScreenNail;->recycle()V

    move-object p0, p1

    .line 104
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 109
    check-cast v0, Lcom/android/gallery3d/ui/TiledScreenNail;

    .line 110
    .local v0, newer:Lcom/android/gallery3d/ui/TiledScreenNail;
    iget v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    iput v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    .line 111
    iget v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    iput v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    .line 112
    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v1, :cond_3

    .line 113
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/TiledScreenNail;->recycleBitmap(Lcom/android/gallery3d/data/BitmapPool;Landroid/graphics/Bitmap;)V

    .line 114
    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TiledTexture;->recycle()V

    .line 115
    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 116
    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    iput-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    .line 117
    iput-object v3, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 118
    iput-object v3, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    .line 120
    :cond_3
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TiledScreenNail;->recycle()V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 8
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const-wide/16 v4, -0x2

    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_3

    .line 165
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 166
    iput-wide v4, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 168
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    if-eqz v0, :cond_2

    .line 169
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    sget v5, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 173
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWaitFinishedTime:J

    .line 187
    :goto_0
    return-void

    .line 177
    :cond_3
    iget-wide v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 178
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 181
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    sget v2, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    invoke-direct {p0}, Lcom/android/gallery3d/ui/TiledScreenNail;->getRatio()F

    move-result v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/gallery3d/ui/TiledTexture;->drawMixed(Lcom/android/gallery3d/ui/GLCanvas;IFIIII)V

    goto :goto_0

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/TiledTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    sget v5, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/ui/TiledTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    return v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/TiledTexture;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    return v0
.end method

.method public isAnimating()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 204
    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TiledTexture;->isReady()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 210
    :cond_1
    :goto_0
    return v0

    .line 205
    :cond_2
    iget-wide v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 206
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xb4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 207
    const-wide/16 v1, -0x3

    iput-wide v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    goto :goto_0

    :cond_3
    move v0, v1

    .line 210
    goto :goto_0
.end method

.method public isShowingPlaceholder()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noDraw()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TiledTexture;->recycle()V

    .line 148
    iput-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    .line 150
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/TiledScreenNail;->recycleBitmap(Lcom/android/gallery3d/data/BitmapPool;Landroid/graphics/Bitmap;)V

    .line 151
    iput-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 152
    return-void
.end method

.method public updatePlaceholderSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/TiledScreenNail;->setSize(II)V

    goto :goto_0
.end method
