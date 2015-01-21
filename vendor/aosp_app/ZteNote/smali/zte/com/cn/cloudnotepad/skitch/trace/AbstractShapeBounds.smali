.class public abstract Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;
.super Ljava/lang/Object;
.source "AbstractShapeBounds.java"


# instance fields
.field public final ANCHOR_RECT_LEN:F

.field public final ANCHOR_TOUCH_RADIUS:F

.field public final BOUNDS_MIN_LEN:F

.field public final EFFECT:Landroid/graphics/PathEffect;

.field private mAnchorLen:F

.field public mAnchorPaint:Landroid/graphics/Paint;

.field protected mFirstTouchPoint:Landroid/graphics/PointF;

.field protected mIsInside:Z

.field protected mIsOnAnchor:Z

.field protected mLastTouchPoint:Landroid/graphics/PointF;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field protected mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x41a0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->EFFECT:Landroid/graphics/PathEffect;

    .line 17
    iput v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->ANCHOR_RECT_LEN:F

    .line 20
    const/high16 v0, 0x4220

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->ANCHOR_TOUCH_RADIUS:F

    .line 23
    const/high16 v0, 0x42c8

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->BOUNDS_MIN_LEN:F

    .line 33
    iput v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mAnchorLen:F

    .line 97
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mFirstTouchPoint:Landroid/graphics/PointF;

    .line 98
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 100
    iput-boolean v4, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mIsInside:Z

    .line 101
    iput-boolean v4, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mIsOnAnchor:Z

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mPath:Landroid/graphics/Path;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mLinePaint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mAnchorPaint:Landroid/graphics/Paint;

    .line 40
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->init()V

    .line 41
    return-void

    .line 15
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 45
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 46
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->EFFECT:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 48
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mLinePaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mAnchorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 52
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mAnchorPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mAnchorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mAnchorPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public drawAnchorRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1
    .parameter "canvas"
    .parameter "rect"

    .prologue
    .line 87
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mAnchorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 88
    return-void
.end method

.method public drawLinePath(Landroid/graphics/Canvas;FFFF)V
    .locals 2
    .parameter "canvas"
    .parameter "sx"
    .parameter "sy"
    .parameter "ex"
    .parameter "ey"

    .prologue
    .line 79
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 80
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 81
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 83
    return-void
.end method

.method public abstract isInside4Drag(FF)Z
.end method

.method public abstract isOnAnchor4Drag(FF)Z
.end method

.method public onDownEvent(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDownEvent (x = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mFirstTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 106
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 107
    return-void
.end method

.method public onMoveEvent(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMoveEvent (x = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 112
    return-void
.end method

.method public onUpEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mFirstTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 116
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 117
    return-void
.end method

.method public setAnchorLen(F)V
    .locals 0
    .parameter "len"

    .prologue
    .line 64
    iput p1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mAnchorLen:F

    .line 65
    return-void
.end method

.method public setAnchorRect(Landroid/graphics/RectF;FF)V
    .locals 2
    .parameter "rect"
    .parameter "center_x"
    .parameter "center_y"

    .prologue
    const/high16 v1, 0x4000

    .line 71
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mAnchorLen:F

    div-float/2addr v0, v1

    sub-float v0, p2, v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 72
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mAnchorLen:F

    div-float/2addr v0, v1

    sub-float v0, p3, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 73
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mAnchorLen:F

    div-float/2addr v0, v1

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 74
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mAnchorLen:F

    div-float/2addr v0, v1

    add-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 75
    return-void
.end method

.method public setDoodleShapeTrace(Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;)V
    .locals 0
    .parameter "trace"

    .prologue
    .line 59
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    .line 60
    return-void
.end method
