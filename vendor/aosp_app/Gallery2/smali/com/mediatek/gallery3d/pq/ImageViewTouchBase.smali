.class public Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/pq/ImageViewTouchBase$1;,
        Lcom/mediatek/gallery3d/pq/ImageViewTouchBase$MyGestureListener;
    }
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field private currMatrix:Landroid/graphics/Matrix;

.field private currentScale:F

.field private drug:I

.field private insampleSize:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageRectInCanvasCoordinateSystem:Landroid/graphics/RectF;

.field private mImageView:Landroid/widget/ImageView;

.field private mSetVisibleLisenter:Lcom/mediatek/gallery3d/pq/SetViewVisible;

.field private mSetXYAxisLisenter:Lcom/mediatek/gallery3d/pq/SetXYAxisIndex;

.field private matrix:Landroid/graphics/Matrix;

.field private mdecoder:Landroid/graphics/BitmapRegionDecoder;

.field private midPointF:Landroid/graphics/PointF;

.field private middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

.field private moveX:F

.field private moveY:F

.field private startDistance:F

.field private startPoint:Landroid/graphics/PointF;

.field private type:I

.field private zoom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/BitmapRegionDecoder;I)V
    .locals 7
    .parameter "context"
    .parameter "mMetric"
    .parameter "mImageView"
    .parameter "mBitmap"
    .parameter "mdecoder"
    .parameter "insampleSize"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v1, "Gallery2/ImageViewTouchBase"

    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    .line 22
    iput-object v6, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->startPoint:Landroid/graphics/PointF;

    .line 23
    iput-object v6, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->matrix:Landroid/graphics/Matrix;

    .line 25
    const/4 v1, 0x5

    iput v1, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->drug:I

    .line 26
    const/16 v1, 0xa

    iput v1, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->zoom:I

    .line 27
    iput v2, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->type:I

    .line 32
    iput v5, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->moveX:F

    .line 33
    iput v5, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->moveY:F

    .line 34
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mImageRectInCanvasCoordinateSystem:Landroid/graphics/RectF;

    .line 35
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    .line 36
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->currentScale:F

    .line 45
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->startPoint:Landroid/graphics/PointF;

    .line 46
    iput-object p2, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->matrix:Landroid/graphics/Matrix;

    .line 47
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->currMatrix:Landroid/graphics/Matrix;

    .line 48
    iput-object p3, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mImageView:Landroid/widget/ImageView;

    .line 49
    iput-object p4, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mBitmap:Landroid/graphics/Bitmap;

    .line 50
    if-eqz p2, :cond_0

    .line 51
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 52
    .local v0, values:[F
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 53
    aget v1, v0, v2

    iput v1, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->currentScale:F

    .line 54
    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mImageRectInCanvasCoordinateSystem:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->currentScale:F

    mul-float/2addr v2, v3

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->currentScale:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 59
    .end local v0           #values:[F
    :goto_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 60
    iput-object p5, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mdecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 61
    iput p6, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->insampleSize:I

    .line 62
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase$MyGestureListener;

    invoke-direct {v2, p0, v6}, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase$MyGestureListener;-><init>(Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;Lcom/mediatek/gallery3d/pq/ImageViewTouchBase$1;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mGestureDetector:Landroid/view/GestureDetector;

    .line 63
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mImageRectInCanvasCoordinateSystem:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 223
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 224
    .local v0, eX:F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 225
    .local v1, eY:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method private getMidPoinF(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 229
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v2, v3

    div-float v0, v2, v4

    .line 230
    .local v0, x:F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v2, v3

    div-float v1, v2, v4

    .line 231
    .local v1, y:F
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method private getPointerFromCanvasCoordinatedSystem(FF)Landroid/graphics/PointF;
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 242
    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mImageRectInCanvasCoordinateSystem:Landroid/graphics/RectF;

    iget v2, v5, Landroid/graphics/RectF;->left:F

    .line 243
    .local v2, left:F
    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mImageRectInCanvasCoordinateSystem:Landroid/graphics/RectF;

    iget v4, v5, Landroid/graphics/RectF;->top:F

    .line 244
    .local v4, top:F
    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mImageRectInCanvasCoordinateSystem:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 245
    .local v3, scale:F
    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " x=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " y=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " left=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  top=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " right=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mImageRectInCanvasCoordinateSystem:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "bottom="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mImageRectInCanvasCoordinateSystem:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scale=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sub-float v5, p1, v2

    div-float v0, v5, v3

    .line 248
    .local v0, X:F
    sub-float v5, p2, v4

    div-float v1, v5, v3

    .line 249
    .local v1, Y:F
    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " XX=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " YY=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v5
.end method

.method private setImageRectInCanvas()V
    .locals 8

    .prologue
    const/high16 v5, 0x3f80

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 234
    const/16 v3, 0x9

    new-array v0, v3, [F

    .line 235
    .local v0, values:[F
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 236
    aget v3, v0, v6

    iput v3, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->currentScale:F

    .line 237
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget v4, v0, v6

    sub-float v4, v5, v4

    mul-float v1, v3, v4

    .line 238
    .local v1, x:F
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aget v4, v0, v6

    sub-float v4, v5, v4

    mul-float v2, v3, v4

    .line 239
    .local v2, y:F
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mImageRectInCanvasCoordinateSystem:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    aget v5, v0, v6

    mul-float/2addr v4, v5

    add-float/2addr v4, v1

    sub-float/2addr v4, v1

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aget v6, v0, v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v2

    sub-float/2addr v5, v2

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 240
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 35
    .parameter "v"
    .parameter "event"

    .prologue
    .line 70
    const/16 v30, 0x9

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v29, v0

    .line 71
    .local v29, values0:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    const/16 v31, 0x2

    aget v31, v29, v31

    sub-float v6, v30, v31

    .line 73
    .local v6, ImageX0:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    const/16 v31, 0x5

    aget v31, v29, v31

    sub-float v8, v30, v31

    .line 74
    .local v8, ImageY0:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Event.x="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " Event.y="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8}, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->getPointerFromCanvasCoordinatedSystem(FF)Landroid/graphics/PointF;

    move-result-object v19

    .line 76
    .local v19, mPointInCanVasCoordinate0:Landroid/graphics/PointF;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mImageRectInCanvasCoordinateSystem:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    cmpl-float v30, v30, v31

    if-gtz v30, :cond_0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mImageRectInCanvasCoordinateSystem:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    cmpl-float v30, v30, v31

    if-gtz v30, :cond_0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpg-float v30, v30, v31

    if-ltz v30, :cond_0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpg-float v30, v30, v31

    if-gez v30, :cond_1

    .line 78
    :cond_0
    const/16 v30, 0x0

    .line 217
    :goto_0
    return v30

    .line 80
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v30

    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_0

    .line 213
    :cond_2
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "matrix=="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Matrix;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->setImageRectInCanvas()V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->invalidate()V

    .line 217
    const/16 v30, 0x1

    goto :goto_0

    .line 82
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "ACTION_DOWN!!!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->currMatrix:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->startPoint:Landroid/graphics/PointF;

    move-object/from16 v30, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v32

    invoke-virtual/range {v30 .. v32}, Landroid/graphics/PointF;->set(FF)V

    .line 85
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->drug:I

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->type:I

    goto :goto_1

    .line 88
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "ACTION_MOVE!!!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->type:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->drug:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->startPoint:Landroid/graphics/PointF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v31, v0

    sub-float v22, v30, v31

    .line 91
    .local v22, mX:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->startPoint:Landroid/graphics/PointF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    sub-float v23, v30, v31

    .line 92
    .local v23, mY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->moveX:F

    move/from16 v30, v0

    add-float v30, v30, v22

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->moveX:F

    .line 93
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->moveY:F

    move/from16 v30, v0

    add-float v30, v30, v23

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->moveY:F

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->currMatrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .line 96
    .end local v22           #mX:F
    .end local v23           #mY:F
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->type:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->zoom:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->distance(Landroid/view/MotionEvent;)F

    move-result v14

    .line 98
    .local v14, distance:F
    const/high16 v30, 0x40a0

    cmpl-float v30, v14, v30

    if-lez v30, :cond_2

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->currMatrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 100
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->startDistance:F

    move/from16 v30, v0

    div-float v10, v14, v30

    .line 101
    .local v10, cale:F
    const/16 v30, 0x9

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v28, v0

    .line 102
    .local v28, values:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "midPointF.x=="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->midPointF:Landroid/graphics/PointF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v32, v0

    const/16 v33, 0x2

    aget v33, v28, v33

    sub-float v32, v32, v33

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " midPointF.y=="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->midPointF:Landroid/graphics/PointF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v32, v0

    const/16 v33, 0x5

    aget v33, v28, v33

    sub-float v32, v32, v33

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "midPointF.x - TranslateX=="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->midPointF:Landroid/graphics/PointF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " midPointF.y - TranslateY=="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->midPointF:Landroid/graphics/PointF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    sget-object v32, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v30 .. v32}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 107
    .local v26, result2:Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    move-object/from16 v0, v26

    invoke-direct {v12, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 108
    .local v12, canvas2:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 109
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 110
    .local v17, mPaint:Landroid/graphics/Paint;
    const/16 v30, 0xff

    const/16 v31, 0xff

    const/16 v32, 0x0

    const/16 v33, 0xff

    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    sub-float v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    sub-float v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    const/high16 v32, 0x3f80

    sub-float v31, v31, v32

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    const/high16 v32, 0x3f80

    sub-float v31, v31, v32

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    add-float v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    const/high16 v32, 0x3f80

    sub-float v31, v31, v32

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    add-float v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    add-float v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    const/high16 v32, 0x3f80

    add-float v31, v31, v32

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    const/high16 v32, 0x3f80

    add-float v31, v31, v32

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    sub-float v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    const/high16 v32, 0x3f80

    add-float v31, v31, v32

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v32, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v10, v10, v1, v2}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    goto/16 :goto_1

    .line 126
    .end local v10           #cale:F
    .end local v12           #canvas2:Landroid/graphics/Canvas;
    .end local v14           #distance:F
    .end local v17           #mPaint:Landroid/graphics/Paint;
    .end local v26           #result2:Landroid/graphics/Bitmap;
    .end local v28           #values:[F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "ACTION_POINTER_DOWN!!!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->distance(Landroid/view/MotionEvent;)F

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->startDistance:F

    .line 128
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->startDistance:F

    move/from16 v30, v0

    const/high16 v31, 0x40a0

    cmpl-float v30, v30, v31

    if-lez v30, :cond_2

    .line 129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->zoom:I

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->type:I

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->currMatrix:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 131
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->getMidPoinF(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->midPointF:Landroid/graphics/PointF;

    .line 132
    const/16 v30, 0x9

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v28, v0

    .line 133
    .restart local v28       #values:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "moveX="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x2

    aget v32, v28, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "     moveY="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x5

    aget v32, v28, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->midPointF:Landroid/graphics/PointF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    const/16 v31, 0x2

    aget v31, v28, v31

    sub-float v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->midPointF:Landroid/graphics/PointF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    const/16 v32, 0x5

    aget v32, v28, v32

    sub-float v31, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->getPointerFromCanvasCoordinatedSystem(FF)Landroid/graphics/PointF;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->middlePointerInCanvasCoordinate:Landroid/graphics/PointF;

    goto/16 :goto_1

    .line 139
    .end local v28           #values:[F
    :pswitch_4
    const/16 v30, 0x9

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v28, v0

    .line 140
    .restart local v28       #values:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "moveX="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x2

    aget v32, v28, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "     moveY="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x5

    aget v32, v28, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    const/16 v31, 0x2

    aget v31, v28, v31

    sub-float v5, v30, v31

    .line 145
    .local v5, ImageX:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    const/16 v31, 0x5

    aget v31, v28, v31

    sub-float v7, v30, v31

    .line 146
    .local v7, ImageY:F
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->getPointerFromCanvasCoordinatedSystem(FF)Landroid/graphics/PointF;

    move-result-object v18

    .line 147
    .local v18, mPointInCanVasCoordinate:Landroid/graphics/PointF;
    const/16 v30, 0x10

    const/16 v31, 0x10

    sget-object v32, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v30 .. v32}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 149
    .local v25, result:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v25

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 150
    .local v11, canvas:Landroid/graphics/Canvas;
    new-instance v24, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    const/high16 v31, 0x4100

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    const/high16 v32, 0x4100

    sub-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v32, v0

    const/high16 v33, 0x4100

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v33, v0

    const/high16 v34, 0x4100

    add-float v33, v33, v34

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v24

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 151
    .local v24, rect:Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x10

    const/16 v33, 0x10

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 152
    .local v13, dest:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ImageX="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "     ImageY="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    sget-object v32, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v30 .. v32}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 155
    .restart local v26       #result2:Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    move-object/from16 v0, v26

    invoke-direct {v12, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    .restart local v12       #canvas2:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 157
    const/16 v30, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v30

    invoke-virtual {v11, v0, v1, v13, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 158
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mdecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[mBitmap  ]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 165
    .local v21, mReginRect:Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->insampleSize:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    const/high16 v31, 0x4100

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v16, v0

    .line 166
    .local v16, left:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->insampleSize:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    const/high16 v31, 0x4100

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v27, v0

    .line 167
    .local v27, right:I
    add-int/lit8 v30, v16, 0x10

    add-int/lit8 v31, v27, 0x10

    move-object/from16 v0, v21

    move/from16 v1, v16

    move/from16 v2, v27

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 168
    new-instance v20, Landroid/graphics/Rect;

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mdecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mdecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v33

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 171
    .local v20, mReginOfRegiondecoder:Landroid/graphics/Rect;
    :try_start_0
    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mdecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 173
    .local v9, bitmapDecodeFromRegionDecoder:Landroid/graphics/Bitmap;
    const/16 v30, 0x0

    const/high16 v31, 0x4200

    const/16 v32, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v12, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v9           #bitmapDecodeFromRegionDecoder:Landroid/graphics/Bitmap;
    .end local v16           #left:I
    .end local v20           #mReginOfRegiondecoder:Landroid/graphics/Rect;
    .end local v21           #mReginRect:Landroid/graphics/Rect;
    .end local v27           #right:I
    :cond_4
    :goto_2
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 187
    .restart local v17       #mPaint:Landroid/graphics/Paint;
    const/16 v30, 0xff

    const/16 v31, 0xff

    const/16 v32, 0xff

    const/16 v33, 0xff

    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 188
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 189
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    sub-float v30, v30, v31

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 190
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    sub-float v30, v30, v31

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    const/high16 v32, 0x3f80

    sub-float v31, v31, v32

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 191
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    const/high16 v32, 0x3f80

    sub-float v31, v31, v32

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 192
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    add-float v30, v30, v31

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    const/high16 v32, 0x3f80

    sub-float v31, v31, v32

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 193
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    add-float v30, v30, v31

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 194
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    add-float v30, v30, v31

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    const/high16 v32, 0x3f80

    add-float v31, v31, v32

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 195
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    const/high16 v32, 0x3f80

    add-float v31, v31, v32

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 196
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    sub-float v30, v30, v31

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    const/high16 v32, 0x3f80

    add-float v31, v31, v32

    move/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mPointInCanVasCoordinate.x="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "mPointInCanVasCoordinate.y="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mSetXYAxisLisenter:Lcom/mediatek/gallery3d/pq/SetXYAxisIndex;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-lez v30, :cond_5

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-lez v30, :cond_5

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mSetXYAxisLisenter:Lcom/mediatek/gallery3d/pq/SetXYAxisIndex;

    move-object/from16 v30, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->insampleSize:I

    move/from16 v32, v0

    mul-int v31, v31, v32

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->insampleSize:I

    move/from16 v33, v0

    mul-int v32, v32, v33

    invoke-interface/range {v30 .. v32}, Lcom/mediatek/gallery3d/pq/SetXYAxisIndex;->setAxisIndex(II)V

    .line 202
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mSetVisibleLisenter:Lcom/mediatek/gallery3d/pq/SetViewVisible;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mSetVisibleLisenter:Lcom/mediatek/gallery3d/pq/SetViewVisible;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Lcom/mediatek/gallery3d/pq/SetViewVisible;->setVisible(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 175
    .end local v17           #mPaint:Landroid/graphics/Paint;
    .restart local v16       #left:I
    .restart local v20       #mReginOfRegiondecoder:Landroid/graphics/Rect;
    .restart local v21       #mReginRect:Landroid/graphics/Rect;
    .restart local v27       #right:I
    :catch_0
    move-exception v15

    .line 176
    .local v15, e:Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[mReginOfRegiondecoder.contains(mReginRect)]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[mReginOfRegiondecoder.contains(mReginRect)]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Bitmap region decoder has a issue: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 182
    .end local v15           #e:Ljava/lang/IllegalArgumentException;
    .end local v16           #left:I
    .end local v20           #mReginOfRegiondecoder:Landroid/graphics/Rect;
    .end local v21           #mReginRect:Landroid/graphics/Rect;
    .end local v27           #right:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, " mdecoder ==== null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 207
    .end local v5           #ImageX:F
    .end local v7           #ImageY:F
    .end local v11           #canvas:Landroid/graphics/Canvas;
    .end local v12           #canvas2:Landroid/graphics/Canvas;
    .end local v13           #dest:Landroid/graphics/Rect;
    .end local v18           #mPointInCanVasCoordinate:Landroid/graphics/PointF;
    .end local v24           #rect:Landroid/graphics/Rect;
    .end local v25           #result:Landroid/graphics/Bitmap;
    .end local v26           #result2:Landroid/graphics/Bitmap;
    .end local v28           #values:[F
    :pswitch_5
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->type:I

    goto/16 :goto_1

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public setInsampleSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 65
    iput p1, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->insampleSize:I

    .line 66
    return-void
.end method

.method public setVisibleLisenter(Lcom/mediatek/gallery3d/pq/SetViewVisible;)V
    .locals 0
    .parameter "lisenter"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mSetVisibleLisenter:Lcom/mediatek/gallery3d/pq/SetViewVisible;

    .line 289
    return-void
.end method

.method public setXYAxisLisenter(Lcom/mediatek/gallery3d/pq/SetXYAxisIndex;)V
    .locals 0
    .parameter "lisenter"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->mSetXYAxisLisenter:Lcom/mediatek/gallery3d/pq/SetXYAxisIndex;

    .line 293
    return-void
.end method
