.class public Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
.super Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;
.source "PenTrace.java"


# static fields
.field private static final DEFAULT_PEN_WIDTH:F = 20.0f

.field private static final TAG:Ljava/lang/String; = "PenTrace"


# instance fields
.field public mPaint:Landroid/graphics/Paint;

.field public mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/high16 v0, 0x41a0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;-><init>(F)V

    .line 23
    return-void
.end method

.method public constructor <init>(F)V
    .locals 3
    .parameter "width"

    .prologue
    const/4 v2, 0x1

    .line 25
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPath:Landroid/graphics/Path;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    .line 29
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 33
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 35
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 36
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public continueTrace(FF)V
    .locals 6
    .parameter "fx"
    .parameter "fy"

    .prologue
    const/high16 v5, 0x4000

    .line 41
    const-string v0, "PenTrace"

    const-string v1, "pen tool continue trace called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-super {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;->continueTrace(FF)V

    .line 43
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->getLastX()F

    move-result v1

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->getLastY()F

    move-result v2

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->getLastX()F

    move-result v3

    add-float/2addr v3, p1

    div-float/2addr v3, v5

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->getLastY()F

    move-result v4

    add-float/2addr v4, p2

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 44
    return-void
.end method

.method public bridge synthetic copy()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->copy()Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;-><init>()V

    .line 49
    .local v0, penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPath:Landroid/graphics/Path;

    .line 51
    return-object v0
.end method

.method public drawTrace(Landroid/graphics/Canvas;F)V
    .locals 4
    .parameter "canvas"
    .parameter "scale"

    .prologue
    const/4 v3, 0x1

    .line 56
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v2, v3, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 57
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 58
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 59
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 60
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    .line 61
    .local v1, width:F
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    mul-float v3, v1, p2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 63
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 68
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .parameter "w"

    .prologue
    .line 73
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    return-void
.end method

.method public startTrace(FF)V
    .locals 2
    .parameter "fx"
    .parameter "fy"

    .prologue
    .line 78
    const-string v0, "PenTrace"

    const-string v1, "pen tool start trace called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;->startTrace(FF)V

    .line 80
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 81
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 82
    return-void
.end method
