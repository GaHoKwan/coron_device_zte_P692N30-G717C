.class public Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;
.super Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
.source "HandWriteTrace.java"


# static fields
.field private static final DEFAULT_HANDWRITE_WIDTH:F = 15.0f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/high16 v0, 0x4170

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;-><init>(F)V

    .line 18
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .parameter "width"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;-><init>(F)V

    .line 23
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;->copy()Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;-><init>()V

    .line 29
    .local v0, hwTrace:Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;->mPaint:Landroid/graphics/Paint;

    .line 30
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;->mPath:Landroid/graphics/Path;

    .line 31
    return-object v0
.end method

.method public bridge synthetic copy()Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;->copy()Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;

    move-result-object v0

    return-object v0
.end method

.method public drawTrace(Landroid/graphics/Canvas;F)V
    .locals 3
    .parameter "canvas"
    .parameter "scale"

    .prologue
    const/4 v2, 0x1

    .line 36
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 37
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 38
    .local v0, width:F
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;->mPaint:Landroid/graphics/Paint;

    mul-float v2, v0, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 40
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/HandWriteTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    return-void
.end method
