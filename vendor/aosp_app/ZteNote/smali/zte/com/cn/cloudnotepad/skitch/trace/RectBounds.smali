.class public Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;
.super Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;
.source "RectBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds$RectAnchorType;
    }
.end annotation


# instance fields
.field private mAnchorTouchRect:Landroid/graphics/RectF;

.field private mBRPoint:Landroid/graphics/PointF;

.field private mBottomCenter:Landroid/graphics/RectF;

.field private mBottomLeft:Landroid/graphics/RectF;

.field private mBottomRight:Landroid/graphics/RectF;

.field private mCenterRect:Landroid/graphics/RectF;

.field private mInAnchorType:I

.field private mLeftCenter:Landroid/graphics/RectF;

.field private mRect:Landroid/graphics/RectF;

.field private mRightCenter:Landroid/graphics/RectF;

.field private mTLPoint:Landroid/graphics/PointF;

.field private mTopCenter:Landroid/graphics/RectF;

.field private mTopLeft:Landroid/graphics/RectF;

.field private mTopRight:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;-><init>(Landroid/graphics/RectF;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 2
    .parameter "bounds"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;-><init>()V

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopLeft:Landroid/graphics/RectF;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopRight:Landroid/graphics/RectF;

    .line 13
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomLeft:Landroid/graphics/RectF;

    .line 14
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomRight:Landroid/graphics/RectF;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mLeftCenter:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopCenter:Landroid/graphics/RectF;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRightCenter:Landroid/graphics/RectF;

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomCenter:Landroid/graphics/RectF;

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mInAnchorType:I

    .line 128
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mCenterRect:Landroid/graphics/RectF;

    .line 162
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mAnchorTouchRect:Landroid/graphics/RectF;

    .line 218
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTLPoint:Landroid/graphics/PointF;

    .line 219
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBRPoint:Landroid/graphics/PointF;

    .line 25
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    .line 26
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->setAllAnchorRect()V

    .line 27
    return-void
.end method

.method private checkMinLen(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/high16 v7, 0x42c8

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    const/high16 v4, 0x4348

    .line 58
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    .local v0, offset:F
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 63
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v6

    sub-float v0, v7, v1

    .line 64
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 65
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 67
    :cond_1
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    .line 68
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v6

    sub-float v0, v7, v1

    .line 69
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 70
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 74
    :cond_2
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->setAllAnchorRect()V

    goto :goto_0
.end method

.method private findAnchorType(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->setAnchorTouchRect(FF)V

    .line 173
    const/16 v2, 0x8

    new-array v1, v2, [Landroid/graphics/RectF;

    const/4 v2, 0x0

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopLeft:Landroid/graphics/RectF;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopRight:Landroid/graphics/RectF;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomLeft:Landroid/graphics/RectF;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomRight:Landroid/graphics/RectF;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 174
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mLeftCenter:Landroid/graphics/RectF;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRightCenter:Landroid/graphics/RectF;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopCenter:Landroid/graphics/RectF;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomCenter:Landroid/graphics/RectF;

    aput-object v3, v1, v2

    .line 175
    .local v1, rects:[Landroid/graphics/RectF;
    const/4 v0, 0x0

    .line 176
    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 181
    :cond_0
    array-length v2, v1

    if-ne v0, v2, :cond_2

    .line 182
    const/4 v2, -0x1

    iput v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mInAnchorType:I

    .line 186
    :goto_1
    return-void

    .line 177
    :cond_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mAnchorTouchRect:Landroid/graphics/RectF;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_2
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mInAnchorType:I

    goto :goto_1
.end method

.method private getDegree(FF)D
    .locals 4
    .parameter "x_offset"
    .parameter "y_offset"

    .prologue
    .line 214
    float-to-double v0, p2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-wide v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->degree:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private moveAnchor(FF)V
    .locals 7
    .parameter "x_offset"
    .parameter "y_offset"

    .prologue
    .line 269
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTLPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 270
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v5, v5, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 269
    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 271
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBRPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 272
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v5, v5, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 271
    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 274
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->getDegree(FF)D

    move-result-wide v0

    .line 275
    .local v0, degree:D
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in moveAnchor(), degree = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide v3, 0x4066800000000000L

    mul-double/2addr v3, v0

    const-wide v5, 0x400921fb54442d18L

    div-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mInAnchorType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mInAnchorType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iget v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mInAnchorType:I

    packed-switch v2, :pswitch_data_0

    .line 322
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 280
    :pswitch_1
    const-wide v2, -0x4006de04abbbd2e8L

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_1

    const-wide v2, 0x3ff921fb54442d18L

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 281
    :cond_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTLPoint:Landroid/graphics/PointF;

    invoke-direct {p0, v2, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->offsetPoint(Landroid/graphics/PointF;FF)V

    goto :goto_0

    .line 288
    :pswitch_2
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    const-wide v2, -0x4006de04abbbd2e8L

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_3

    :cond_2
    const-wide v2, 0x3ff921fb54442d18L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 289
    :cond_3
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTLPoint:Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->offsetPoint(Landroid/graphics/PointF;FF)V

    .line 290
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBRPoint:Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->offsetPoint(Landroid/graphics/PointF;FF)V

    goto :goto_0

    .line 294
    :pswitch_3
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_4

    const-wide v2, -0x4006de04abbbd2e8L

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_5

    :cond_4
    const-wide v2, 0x3ff921fb54442d18L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 295
    :cond_5
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTLPoint:Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->offsetPoint(Landroid/graphics/PointF;FF)V

    .line 296
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBRPoint:Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->offsetPoint(Landroid/graphics/PointF;FF)V

    goto :goto_0

    .line 300
    :pswitch_4
    const-wide v2, -0x4006de04abbbd2e8L

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_6

    const-wide v2, 0x3ff921fb54442d18L

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 301
    :cond_6
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBRPoint:Landroid/graphics/PointF;

    invoke-direct {p0, v2, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->offsetPoint(Landroid/graphics/PointF;FF)V

    goto/16 :goto_0

    .line 306
    :pswitch_5
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTLPoint:Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->offsetPoint(Landroid/graphics/PointF;FF)V

    goto/16 :goto_0

    .line 309
    :pswitch_6
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBRPoint:Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->offsetPoint(Landroid/graphics/PointF;FF)V

    goto/16 :goto_0

    .line 312
    :pswitch_7
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTLPoint:Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->offsetPoint(Landroid/graphics/PointF;FF)V

    goto/16 :goto_0

    .line 315
    :pswitch_8
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBRPoint:Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->offsetPoint(Landroid/graphics/PointF;FF)V

    goto/16 :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private offsetPoint(Landroid/graphics/PointF;FF)V
    .locals 4
    .parameter "p"
    .parameter "x_offset"
    .parameter "y_offset"

    .prologue
    const/4 v3, 0x0

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, isTlPoint:Z
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTLPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTLPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 226
    const/4 v0, 0x1

    .line 231
    :goto_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTLPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTLPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 233
    if-eqz v0, :cond_2

    .line 234
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    invoke-virtual {v1, p2, p3}, Landroid/graphics/PointF;->offset(FF)V

    .line 264
    :cond_0
    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->offset(FF)V

    .line 265
    return-void

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 236
    :cond_2
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    invoke-virtual {v1, p2, p3}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_1

    .line 238
    :cond_3
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTLPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTLPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    .line 240
    if-eqz v0, :cond_4

    .line 241
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    invoke-virtual {v1, p2, p3}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_1

    .line 243
    :cond_4
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    invoke-virtual {v1, p2, p3}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_1

    .line 245
    :cond_5
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTLPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTLPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    .line 247
    if-eqz v0, :cond_6

    .line 248
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    invoke-virtual {v1, p2, v3}, Landroid/graphics/PointF;->offset(FF)V

    .line 249
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    invoke-virtual {v1, v3, p3}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_1

    .line 251
    :cond_6
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    invoke-virtual {v1, p2, v3}, Landroid/graphics/PointF;->offset(FF)V

    .line 252
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    invoke-virtual {v1, v3, p3}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_1

    .line 254
    :cond_7
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTLPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTLPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 256
    if-eqz v0, :cond_8

    .line 257
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    invoke-virtual {v1, p2, v3}, Landroid/graphics/PointF;->offset(FF)V

    .line 258
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    invoke-virtual {v1, v3, p3}, Landroid/graphics/PointF;->offset(FF)V

    goto/16 :goto_1

    .line 260
    :cond_8
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    invoke-virtual {v1, p2, v3}, Landroid/graphics/PointF;->offset(FF)V

    .line 261
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    invoke-virtual {v1, v3, p3}, Landroid/graphics/PointF;->offset(FF)V

    goto/16 :goto_1
.end method

.method private setAnchorTouchRect(FF)V
    .locals 3
    .parameter "cx"
    .parameter "cy"

    .prologue
    const/high16 v2, 0x4220

    .line 165
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mAnchorTouchRect:Landroid/graphics/RectF;

    sub-float v1, p1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 166
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mAnchorTouchRect:Landroid/graphics/RectF;

    add-float v1, p1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 167
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mAnchorTouchRect:Landroid/graphics/RectF;

    sub-float v1, p2, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 168
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mAnchorTouchRect:Landroid/graphics/RectF;

    add-float v1, p2, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 169
    return-void
.end method

.method private setCenterRect()V
    .locals 3

    .prologue
    const/high16 v2, 0x4220

    .line 132
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mCenterRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 133
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mCenterRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 134
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mCenterRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 135
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mCenterRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 136
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x4000

    .line 79
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->checkMinLen(Landroid/graphics/Canvas;)V

    .line 81
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopLeft:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopLeft:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopLeft:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float v3, v0, v6

    .line 82
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopCenter:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopCenter:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopCenter:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float v5, v0, v6

    move-object v0, p0

    move-object v1, p1

    .line 81
    invoke-virtual/range {v0 .. v5}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->drawLinePath(Landroid/graphics/Canvas;FFFF)V

    .line 83
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopCenter:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopCenter:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopCenter:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float v3, v0, v6

    .line 84
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopRight:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopRight:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopRight:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float v5, v0, v6

    move-object v0, p0

    move-object v1, p1

    .line 83
    invoke-virtual/range {v0 .. v5}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->drawLinePath(Landroid/graphics/Canvas;FFFF)V

    .line 86
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopRight:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopRight:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float v2, v0, v6

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopRight:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 87
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRightCenter:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRightCenter:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float v4, v0, v6

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRightCenter:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v1, p1

    .line 86
    invoke-virtual/range {v0 .. v5}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->drawLinePath(Landroid/graphics/Canvas;FFFF)V

    .line 88
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRightCenter:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRightCenter:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float v2, v0, v6

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRightCenter:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 89
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomRight:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomRight:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float v4, v0, v6

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomRight:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v1, p1

    .line 88
    invoke-virtual/range {v0 .. v5}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->drawLinePath(Landroid/graphics/Canvas;FFFF)V

    .line 92
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomLeft:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomLeft:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomLeft:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float v3, v0, v6

    .line 93
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomCenter:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomCenter:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomCenter:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float v5, v0, v6

    move-object v0, p0

    move-object v1, p1

    .line 92
    invoke-virtual/range {v0 .. v5}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->drawLinePath(Landroid/graphics/Canvas;FFFF)V

    .line 94
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomCenter:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomCenter:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomCenter:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float v3, v0, v6

    .line 95
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomRight:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomRight:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomRight:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float v5, v0, v6

    move-object v0, p0

    move-object v1, p1

    .line 94
    invoke-virtual/range {v0 .. v5}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->drawLinePath(Landroid/graphics/Canvas;FFFF)V

    .line 97
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopLeft:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopLeft:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float v2, v0, v6

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopLeft:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 98
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mLeftCenter:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mLeftCenter:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float v4, v0, v6

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mLeftCenter:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v1, p1

    .line 97
    invoke-virtual/range {v0 .. v5}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->drawLinePath(Landroid/graphics/Canvas;FFFF)V

    .line 99
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mLeftCenter:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mLeftCenter:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float v2, v0, v6

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mLeftCenter:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 100
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomLeft:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomLeft:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float v4, v0, v6

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomLeft:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v1, p1

    .line 99
    invoke-virtual/range {v0 .. v5}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->drawLinePath(Landroid/graphics/Canvas;FFFF)V

    .line 103
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopCenter:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->drawAnchorRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 104
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomCenter:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->drawAnchorRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 105
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mLeftCenter:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->drawAnchorRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 106
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRightCenter:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->drawAnchorRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 108
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopLeft:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->drawAnchorRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 109
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomLeft:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->drawAnchorRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 110
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopRight:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->drawAnchorRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 111
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomRight:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->drawAnchorRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 112
    return-void
.end method

.method public isInside4Drag(FF)Z
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 141
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopRight:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopLeft:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    sub-float v3, v7, v8

    .line 142
    .local v3, offset_x:F
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopRight:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopLeft:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float v4, v7, v8

    .line 144
    .local v4, offset_y:F
    float-to-double v7, v4

    float-to-double v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    iget-object v9, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    sub-float v9, p2, v9

    float-to-double v9, v9

    iget-object v11, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    sub-float v11, p1, v11

    float-to-double v11, v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 145
    .local v0, degree:D
    const-wide v7, 0x3ff921fb54442d18L

    cmpl-double v7, v0, v7

    if-lez v7, :cond_0

    .line 146
    const-wide v7, 0x400921fb54442d18L

    sub-double v0, v7, v0

    .line 148
    :cond_0
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float v7, p2, v7

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float v8, p2, v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    sub-float v8, p1, v8

    iget-object v9, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    sub-float v9, p1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    .line 149
    .local v2, length:F
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v5, v2, v7

    .line 150
    .local v5, x_offset:F
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v6, v2, v7

    .line 151
    .local v6, y_offset:F
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mCenterRect = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "x_offset = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", y_offset = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "length = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "degree = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    cmpl-float v7, v5, v7

    if-gtz v7, :cond_1

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    cmpl-float v7, v6, v7

    if-lez v7, :cond_2

    .line 157
    :cond_1
    const/4 v7, 0x0

    .line 159
    :goto_0
    return v7

    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public isOnAnchor4Drag(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->findAnchorType(FF)V

    .line 193
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mInAnchorType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDownEvent(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 202
    invoke-super {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->onDownEvent(FF)V

    .line 203
    invoke-virtual {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->isInside4Drag(FF)Z

    move-result v0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mIsInside:Z

    .line 205
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mIsInside:Z

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->findAnchorType(FF)V

    .line 207
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mInAnchorType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mIsOnAnchor:Z

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mInAnchorType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mInAnchorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void

    .line 207
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMoveEvent(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 327
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v2

    .line 328
    .local v0, offset_x:F
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v1, p2, v2

    .line 329
    .local v1, offset_y:F
    invoke-super {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->onMoveEvent(FF)V

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in onMoveEvent(),  mIsInside = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mIsInside:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mIsInside:Z

    if-eqz v2, :cond_1

    .line 332
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->offset(FF)V

    .line 333
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->offset(FF)V

    .line 334
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->calcBounds()V

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in onMoveEvent(),  offset_x = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offset_y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in onMoveEvent(), mTracePath = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->getShapeTracePath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mIsOnAnchor:Z

    if-eqz v2, :cond_0

    .line 340
    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->moveAnchor(FF)V

    .line 341
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->calcBounds()V

    goto :goto_0
.end method

.method public onUpEvent()V
    .locals 0

    .prologue
    .line 348
    invoke-super {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->onUpEvent()V

    .line 349
    return-void
.end method

.method public setAllAnchorRect()V
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    .line 42
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopCenter:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->setAnchorRect(Landroid/graphics/RectF;FF)V

    .line 43
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomCenter:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->setAnchorRect(Landroid/graphics/RectF;FF)V

    .line 44
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mLeftCenter:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->setAnchorRect(Landroid/graphics/RectF;FF)V

    .line 45
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRightCenter:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->setAnchorRect(Landroid/graphics/RectF;FF)V

    .line 47
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopLeft:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->setAnchorRect(Landroid/graphics/RectF;FF)V

    .line 48
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mTopRight:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->setAnchorRect(Landroid/graphics/RectF;FF)V

    .line 49
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomLeft:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->setAnchorRect(Landroid/graphics/RectF;FF)V

    .line 50
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mBottomRight:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->setAnchorRect(Landroid/graphics/RectF;FF)V

    .line 52
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->setCenterRect()V

    .line 53
    return-void
.end method

.method public setRect(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 36
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 37
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;->setAllAnchorRect()V

    .line 38
    return-void
.end method
