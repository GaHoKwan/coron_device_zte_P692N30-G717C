.class public Lorg/achartengine/chart/LineChart;
.super Lorg/achartengine/chart/XYChart;
.source "LineChart.java"


# static fields
.field private static final SHAPE_WIDTH:I = 0x1e

.field public static final TYPE:Ljava/lang/String; = "Line"


# instance fields
.field private pointsChart:Lorg/achartengine/chart/ScatterChart;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/achartengine/chart/XYChart;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 1
    .parameter "dataset"
    .parameter "renderer"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/achartengine/chart/XYChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 52
    new-instance v0, Lorg/achartengine/chart/ScatterChart;

    invoke-direct {v0, p1, p2}, Lorg/achartengine/chart/ScatterChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    iput-object v0, p0, Lorg/achartengine/chart/LineChart;->pointsChart:Lorg/achartengine/chart/ScatterChart;

    .line 53
    return-void
.end method


# virtual methods
.method protected clickableAreasForPoints([F[DFII)[Lorg/achartengine/chart/ClickableArea;
    .locals 12
    .parameter "points"
    .parameter "values"
    .parameter "yAxisValue"
    .parameter "seriesIndex"
    .parameter "startIndex"

    .prologue
    .line 104
    array-length v7, p1

    .line 105
    .local v7, length:I
    div-int/lit8 v0, v7, 0x2

    new-array v8, v0, [Lorg/achartengine/chart/ClickableArea;

    .line 106
    .local v8, ret:[Lorg/achartengine/chart/ClickableArea;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 107
    iget-object v0, p0, Lorg/achartengine/chart/LineChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSelectableBuffer()I

    move-result v9

    .line 108
    .local v9, selectableBuffer:I
    div-int/lit8 v10, v6, 0x2

    new-instance v0, Lorg/achartengine/chart/ClickableArea;

    new-instance v1, Landroid/graphics/RectF;

    aget v2, p1, v6

    int-to-float v3, v9

    sub-float/2addr v2, v3

    add-int/lit8 v3, v6, 0x1

    aget v3, p1, v3

    int-to-float v4, v9

    sub-float/2addr v3, v4

    aget v4, p1, v6

    int-to-float v5, v9

    add-float/2addr v4, v5

    add-int/lit8 v5, v6, 0x1

    aget v5, p1, v5

    int-to-float v11, v9

    add-float/2addr v5, v11

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    aget-wide v2, p2, v6

    add-int/lit8 v4, v6, 0x1

    aget-wide v4, p2, v4

    invoke-direct/range {v0 .. v5}, Lorg/achartengine/chart/ClickableArea;-><init>(Landroid/graphics/RectF;DD)V

    aput-object v0, v8, v10

    .line 106
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 111
    .end local v9           #selectableBuffer:I
    :cond_0
    return-object v8
.end method

.method public drawLegendShape(Landroid/graphics/Canvas;Lorg/achartengine/renderer/SimpleSeriesRenderer;FFILandroid/graphics/Paint;)V
    .locals 7
    .parameter "canvas"
    .parameter "renderer"
    .parameter "x"
    .parameter "y"
    .parameter "seriesIndex"
    .parameter "paint"

    .prologue
    .line 135
    const/high16 v0, 0x41f0

    add-float v3, p3, v0

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 136
    invoke-virtual {p0, p2}, Lorg/achartengine/chart/LineChart;->isRenderPoints(Lorg/achartengine/renderer/SimpleSeriesRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/achartengine/chart/LineChart;->pointsChart:Lorg/achartengine/chart/ScatterChart;

    const/high16 v1, 0x40a0

    add-float v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/chart/ScatterChart;->drawLegendShape(Landroid/graphics/Canvas;Lorg/achartengine/renderer/SimpleSeriesRenderer;FFILandroid/graphics/Paint;)V

    .line 139
    :cond_0
    return-void
.end method

.method public drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FLorg/achartengine/renderer/SimpleSeriesRenderer;FIILjava/util/List;)V
    .locals 8
    .parameter "canvas"
    .parameter "paint"
    .parameter "points"
    .parameter "seriesRenderer"
    .parameter "yAxisValue"
    .parameter "seriesIndex"
    .parameter "startIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "[F",
            "Lorg/achartengine/renderer/SimpleSeriesRenderer;",
            "FII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p8, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    array-length v1, p3

    .local v1, length:I
    move-object v4, p4

    .line 80
    check-cast v4, Lorg/achartengine/renderer/XYSeriesRenderer;

    .line 81
    .local v4, renderer:Lorg/achartengine/renderer/XYSeriesRenderer;
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    .line 82
    .local v2, lineWidth:F
    invoke-virtual {v4}, Lorg/achartengine/renderer/XYSeriesRenderer;->getLineWidth()F

    move-result v5

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    invoke-virtual {v4}, Lorg/achartengine/renderer/XYSeriesRenderer;->isFillBelowLine()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    invoke-virtual {v4}, Lorg/achartengine/renderer/XYSeriesRenderer;->getFillBelowLineColor()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    array-length v3, p3

    .line 86
    .local v3, pLength:I
    add-int/lit8 v5, v3, 0x4

    new-array v0, v5, [F

    .line 87
    .local v0, fillPoints:[F
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p3, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, p3, v6

    const/high16 v7, 0x3f80

    add-float/2addr v6, v7

    aput v6, v0, v5

    .line 89
    add-int/lit8 v5, v1, -0x2

    aget v5, v0, v5

    aput v5, v0, v1

    .line 90
    add-int/lit8 v5, v1, 0x1

    aput p5, v0, v5

    .line 91
    add-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    aget v6, v0, v6

    aput v6, v0, v5

    .line 92
    add-int/lit8 v5, v1, 0x3

    add-int/lit8 v6, v1, 0x1

    aget v6, v0, v6

    aput v6, v0, v5

    .line 93
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v0, p2, v5}, Lorg/achartengine/chart/LineChart;->drawPath(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;Z)V

    .line 96
    .end local v0           #fillPoints:[F
    .end local v3           #pLength:I
    :cond_0
    invoke-virtual {p4}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    const/4 v5, 0x0

    invoke-virtual {p0, p1, p3, p2, v5}, Lorg/achartengine/chart/LineChart;->drawPath(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;Z)V

    .line 99
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    return-void
.end method

.method public getChartType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-string v0, "Line"

    return-object v0
.end method

.method public getLegendShapeWidth(I)I
    .locals 1
    .parameter "seriesIndex"

    .prologue
    .line 121
    const/16 v0, 0x1e

    return v0
.end method

.method public getPointsChart()Lorg/achartengine/chart/ScatterChart;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/achartengine/chart/LineChart;->pointsChart:Lorg/achartengine/chart/ScatterChart;

    return-object v0
.end method

.method public isRenderPoints(Lorg/achartengine/renderer/SimpleSeriesRenderer;)Z
    .locals 2
    .parameter "renderer"

    .prologue
    .line 147
    check-cast p1, Lorg/achartengine/renderer/XYSeriesRenderer;

    .end local p1
    invoke-virtual {p1}, Lorg/achartengine/renderer/XYSeriesRenderer;->getPointStyle()Lorg/achartengine/chart/PointStyle;

    move-result-object v0

    sget-object v1, Lorg/achartengine/chart/PointStyle;->POINT:Lorg/achartengine/chart/PointStyle;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setDatasetRenderer(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 1
    .parameter "dataset"
    .parameter "renderer"

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lorg/achartengine/chart/XYChart;->setDatasetRenderer(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 63
    new-instance v0, Lorg/achartengine/chart/ScatterChart;

    invoke-direct {v0, p1, p2}, Lorg/achartengine/chart/ScatterChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    iput-object v0, p0, Lorg/achartengine/chart/LineChart;->pointsChart:Lorg/achartengine/chart/ScatterChart;

    .line 64
    return-void
.end method
