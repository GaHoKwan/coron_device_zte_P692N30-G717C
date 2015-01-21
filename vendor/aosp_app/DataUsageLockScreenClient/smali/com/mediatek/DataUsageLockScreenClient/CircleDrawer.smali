.class public Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;
.super Lcom/mediatek/ngin3d/Canvas2d;
.source "CircleDrawer.java"


# instance fields
.field private mCanvasH:F

.field private mCanvasW:F

.field private mInCircle:Landroid/graphics/Paint;

.field private mInCircleRadius:F

.field private mOutCircle:Landroid/graphics/Paint;

.field private mOutCircleRadius:F


# direct methods
.method public constructor <init>(FI)V
    .locals 5
    .parameter "radius"
    .parameter "color"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x4040

    const/high16 v2, 0x4000

    .line 19
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Canvas2d;-><init>()V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Canvas2d;->setDirtyRect(Lcom/mediatek/ngin3d/Box;)V

    .line 22
    add-float v0, p1, v3

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mCanvasW:F

    .line 23
    add-float v0, p1, v3

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mCanvasH:F

    .line 24
    iput p1, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mInCircleRadius:F

    .line 25
    add-float v0, p1, v2

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mOutCircleRadius:F

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mInCircle:Landroid/graphics/Paint;

    .line 28
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mInCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mInCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mInCircle:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mInCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mOutCircle:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mOutCircle:Landroid/graphics/Paint;

    sget v1, Lcom/mediatek/DataUsageLockScreenClient/Constants;->OUT_CIRCLE_COLOR_ALPHA_NORMAL:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mOutCircle:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    return-void
.end method


# virtual methods
.method protected drawRect(Lcom/mediatek/ngin3d/Box;Lcom/mediatek/ngin3d/presentation/Graphics2d;)V
    .locals 6
    .parameter "rect"
    .parameter "g2d"

    .prologue
    const/high16 v5, 0x4000

    .line 42
    invoke-super {p0, p1, p2}, Lcom/mediatek/ngin3d/Canvas2d;->drawRect(Lcom/mediatek/ngin3d/Box;Lcom/mediatek/ngin3d/presentation/Graphics2d;)V

    .line 43
    iget v1, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mCanvasW:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mCanvasH:F

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-interface {p2, v1, v2, v3}, Lcom/mediatek/ngin3d/presentation/Graphics2d;->beginDraw(III)Landroid/graphics/Canvas;

    move-result-object v0

    .line 44
    .local v0, canvas:Landroid/graphics/Canvas;
    iget v1, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mCanvasW:F

    div-float/2addr v1, v5

    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mCanvasH:F

    div-float/2addr v2, v5

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mInCircleRadius:F

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mInCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 45
    iget v1, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mCanvasW:F

    div-float/2addr v1, v5

    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mCanvasH:F

    div-float/2addr v2, v5

    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mOutCircleRadius:F

    iget-object v4, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 46
    invoke-interface {p2}, Lcom/mediatek/ngin3d/presentation/Graphics2d;->endDraw()V

    .line 47
    return-void
.end method

.method public setOutCircleColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    return-void
.end method
