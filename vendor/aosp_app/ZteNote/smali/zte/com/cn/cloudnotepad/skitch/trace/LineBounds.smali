.class public Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;
.super Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;
.source "LineBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds$LineAnchorType;
    }
.end annotation


# instance fields
.field private mInAnchorType:I

.field private mPointEnd:Landroid/graphics/PointF;

.field private mPointStart:Landroid/graphics/PointF;

.field private mRectEnd:Landroid/graphics/RectF;

.field private mRectStart:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 19
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mRectStart:Landroid/graphics/RectF;

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mRectEnd:Landroid/graphics/RectF;

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mInAnchorType:I

    .line 20
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    .line 21
    iput-object p2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    .line 22
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mRectStart:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->setAnchorRect(Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 23
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mRectEnd:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->setAnchorRect(Landroid/graphics/RectF;FF)V

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mRectStart:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mRectEnd:Landroid/graphics/RectF;

    .line 27
    return-void
.end method

.method private checkMinLen(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/high16 v10, 0x4000

    const/high16 v9, 0x42c8

    .line 87
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    .line 88
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    .line 87
    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    .line 89
    .local v2, length:F
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->getDegree()D

    move-result-wide v0

    .line 90
    .local v0, degree:D
    cmpg-float v5, v2, v9

    if-gez v5, :cond_0

    .line 91
    sub-float v5, v9, v2

    div-float/2addr v5, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v3, v5, v6

    .line 92
    .local v3, x_offset:F
    sub-float v5, v9, v2

    div-float/2addr v5, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v4, v5, v6

    .line 93
    .local v4, y_offset:F
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/PointF;->offset(FF)V

    .line 94
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    neg-float v6, v3

    neg-float v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->offset(FF)V

    .line 96
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    invoke-direct {p0, v5, p1}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->setValidPointF(Landroid/graphics/PointF;Landroid/graphics/Canvas;)V

    .line 97
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    invoke-direct {p0, v5, p1}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->setValidPointF(Landroid/graphics/PointF;Landroid/graphics/Canvas;)V

    .line 99
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mRectEnd:Landroid/graphics/RectF;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    invoke-direct {p0, v5, v6}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->setAnchorRect(Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 100
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mRectStart:Landroid/graphics/RectF;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    invoke-direct {p0, v5, v6}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->setAnchorRect(Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 102
    .end local v3           #x_offset:F
    .end local v4           #y_offset:F
    :cond_0
    return-void
.end method

.method private findAnchorType(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 200
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mRectStart:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->isInRect(Landroid/graphics/RectF;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mInAnchorType:I

    .line 207
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mRectEnd:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->isInRect(Landroid/graphics/RectF;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    const/4 v0, 0x2

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mInAnchorType:I

    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mInAnchorType:I

    goto :goto_0
.end method

.method private getDegree()D
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private isInRect(Landroid/graphics/RectF;FF)Z
    .locals 6
    .parameter "rect"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v5, 0x4000

    .line 168
    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    div-float v0, v3, v5

    .line 169
    .local v0, center_x:F
    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    div-float v1, v3, v5

    .line 170
    .local v1, center_y:F
    sub-float v3, p3, v1

    sub-float v4, p3, v1

    mul-float/2addr v3, v4

    sub-float v4, p2, v0

    sub-float v5, p2, v0

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v2, v3

    .line 171
    .local v2, length:F
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in isInRect(), length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    const/high16 v3, 0x4220

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 173
    const/4 v3, 0x1

    .line 175
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private rotateAnchorRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 4
    .parameter "canvas"
    .parameter "rect"
    .parameter "degree"

    .prologue
    const/high16 v3, 0x4000

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 130
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-virtual {p1, p3, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 131
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mAnchorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 133
    return-void
.end method

.method private rotateRect(Landroid/graphics/RectF;)V
    .locals 7
    .parameter "rect"

    .prologue
    const/high16 v6, 0x4000

    .line 60
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->getDegree()D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 61
    .local v0, degree:F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 62
    .local v1, matrix:Landroid/graphics/Matrix;
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    div-float/2addr v3, v6

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 63
    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 64
    return-void
.end method

.method private setAnchorRect(Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 2
    .parameter "rect"
    .parameter "point"

    .prologue
    .line 54
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v0, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->setAnchorRect(Landroid/graphics/RectF;FF)V

    .line 55
    return-void
.end method

.method private setValidPointF(Landroid/graphics/PointF;Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "p"
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 69
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->getDegree()D

    move-result-wide v0

    .line 70
    .local v0, degree:D
    iget v2, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_0

    .line 71
    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 73
    :cond_0
    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 74
    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 77
    :cond_1
    iget v2, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_2

    .line 78
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 80
    :cond_2
    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 81
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 83
    :cond_3
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->checkMinLen(Landroid/graphics/Canvas;)V

    .line 115
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->drawLinePath(Landroid/graphics/Canvas;FFFF)V

    .line 121
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->getDegree()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    double-to-float v6, v0

    .line 122
    .local v6, degree:F
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "in draw(), degree = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mRectStart:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0, v6}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->rotateAnchorRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 124
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mRectEnd:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0, v6}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->rotateAnchorRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 125
    return-void
.end method

.method public isInside4Drag(FF)Z
    .locals 14
    .parameter "x"
    .parameter "y"

    .prologue
    .line 138
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    iget-object v9, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    .line 139
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    iget-object v10, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    .line 138
    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 140
    .local v5, line_length:F
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float v0, v8, v9

    .line 141
    .local v0, center_x:F
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float v1, v8, v9

    .line 143
    .local v1, center_y:F
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->getDegree()D

    move-result-wide v8

    sub-float v10, p2, v1

    float-to-double v10, v10

    sub-float v12, p1, v0

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 144
    .local v2, degree:D
    const-wide v8, 0x3ff921fb54442d18L

    cmpl-double v8, v2, v8

    if-lez v8, :cond_0

    .line 145
    const-wide v8, 0x400921fb54442d18L

    sub-double v2, v8, v2

    .line 147
    :cond_0
    sub-float v8, p2, v1

    sub-float v9, p2, v1

    mul-float/2addr v8, v9

    sub-float v9, p1, v0

    sub-float v10, p1, v0

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v4, v8

    .line 148
    .local v4, length:F
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v6, v4, v8

    .line 149
    .local v6, x_offset:F
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v7, v4, v8

    .line 150
    .local v7, y_offset:F
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "x_offset = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", y_offset = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "length = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", line_length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "degree = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    const/high16 v8, 0x4000

    div-float v8, v5, v8

    const/high16 v9, 0x4220

    sub-float/2addr v8, v9

    cmpl-float v8, v6, v8

    if-gtz v8, :cond_1

    const/high16 v8, 0x4220

    cmpl-float v8, v7, v8

    if-lez v8, :cond_2

    .line 155
    :cond_1
    const/4 v8, 0x0

    .line 157
    :goto_0
    return v8

    :cond_2
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public isOnAnchor4Drag(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 163
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mRectStart:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->isInRect(Landroid/graphics/RectF;FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mRectEnd:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->isInRect(Landroid/graphics/RectF;FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

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
    .line 181
    invoke-super {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->onDownEvent(FF)V

    .line 182
    invoke-virtual {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->isInside4Drag(FF)Z

    move-result v0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mIsInside:Z

    .line 184
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mIsInside:Z

    if-nez v0, :cond_0

    .line 185
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->findAnchorType(FF)V

    .line 186
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mInAnchorType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mIsOnAnchor:Z

    .line 189
    :cond_0
    return-void

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMoveEvent(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 212
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v2

    .line 213
    .local v0, offset_x:F
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v1, p2, v2

    .line 214
    .local v1, offset_y:F
    invoke-super {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->onMoveEvent(FF)V

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in onMoveEvent(),  mIsInside = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mIsInside:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mIsInside:Z

    if-eqz v2, :cond_1

    .line 217
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->offset(FF)V

    .line 218
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->offset(FF)V

    .line 220
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->calcBounds()V

    .line 221
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

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in onMoveEvent(), mTracePath = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->getShapeTracePath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mIsOnAnchor:Z

    if-eqz v2, :cond_0

    .line 226
    iget v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mInAnchorType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 227
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->offset(FF)V

    .line 231
    :cond_2
    :goto_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->calcBounds()V

    goto :goto_0

    .line 228
    :cond_3
    iget v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mInAnchorType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 229
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mTrace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_1
.end method

.method public onUpEvent()V
    .locals 0

    .prologue
    .line 238
    invoke-super {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->onUpEvent()V

    .line 239
    return-void
.end method

.method public setPointEnd(Landroid/graphics/PointF;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 42
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 43
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mRectEnd:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointEnd:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->setAnchorRect(Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 44
    return-void
.end method

.method public setPointStart(Landroid/graphics/PointF;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 36
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 37
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mRectStart:Landroid/graphics/RectF;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->mPointStart:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->setAnchorRect(Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 38
    return-void
.end method

.method public setPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0
    .parameter "ps"
    .parameter "pe"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->setPointStart(Landroid/graphics/PointF;)V

    .line 49
    invoke-virtual {p0, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;->setPointEnd(Landroid/graphics/PointF;)V

    .line 50
    return-void
.end method
