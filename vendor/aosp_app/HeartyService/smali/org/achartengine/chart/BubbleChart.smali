.class public Lorg/achartengine/chart/BubbleChart;
.super Lorg/achartengine/chart/XYChart;
.source "BubbleChart.java"


# static fields
.field private static final MAX_BUBBLE_SIZE:I = 0x14

.field private static final MIN_BUBBLE_SIZE:I = 0x2

.field private static final SHAPE_WIDTH:I = 0xa

.field public static final TYPE:Ljava/lang/String; = "Bubble"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/achartengine/chart/XYChart;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 1
    .parameter "dataset"
    .parameter "renderer"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/achartengine/chart/XYChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 55
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V
    .locals 0
    .parameter "canvas"
    .parameter "paint"
    .parameter "x"
    .parameter "y"
    .parameter "radius"

    .prologue
    .line 136
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 137
    return-void
.end method


# virtual methods
.method protected clickableAreasForPoints([F[DFII)[Lorg/achartengine/chart/ClickableArea;
    .locals 19
    .parameter "points"
    .parameter "values"
    .parameter "yAxisValue"
    .parameter "seriesIndex"
    .parameter "startIndex"

    .prologue
    .line 86
    move-object/from16 v0, p1

    array-length v10, v0

    .line 87
    .local v10, length:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/BubbleChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v14

    check-cast v14, Lorg/achartengine/model/XYValueSeries;

    .line 88
    .local v14, series:Lorg/achartengine/model/XYValueSeries;
    invoke-virtual {v14}, Lorg/achartengine/model/XYValueSeries;->getMaxValue()D

    move-result-wide v11

    .line 89
    .local v11, max:D
    const-wide/high16 v1, 0x4034

    div-double v7, v1, v11

    .line 90
    .local v7, coef:D
    div-int/lit8 v1, v10, 0x2

    new-array v13, v1, [Lorg/achartengine/chart/ClickableArea;

    .line 91
    .local v13, ret:[Lorg/achartengine/chart/ClickableArea;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 92
    div-int/lit8 v1, v9, 0x2

    add-int v1, v1, p5

    invoke-virtual {v14, v1}, Lorg/achartengine/model/XYValueSeries;->getValue(I)D

    move-result-wide v1

    mul-double/2addr v1, v7

    const-wide/high16 v3, 0x4000

    add-double v15, v1, v3

    .line 93
    .local v15, size:D
    div-int/lit8 v17, v9, 0x2

    new-instance v1, Lorg/achartengine/chart/ClickableArea;

    new-instance v2, Landroid/graphics/RectF;

    aget v3, p1, v9

    double-to-float v4, v15

    sub-float/2addr v3, v4

    add-int/lit8 v4, v9, 0x1

    aget v4, p1, v4

    double-to-float v5, v15

    sub-float/2addr v4, v5

    aget v5, p1, v9

    double-to-float v6, v15

    add-float/2addr v5, v6

    add-int/lit8 v6, v9, 0x1

    aget v6, p1, v6

    double-to-float v0, v15

    move/from16 v18, v0

    add-float v6, v6, v18

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aget-wide v3, p2, v9

    add-int/lit8 v5, v9, 0x1

    aget-wide v5, p2, v5

    invoke-direct/range {v1 .. v6}, Lorg/achartengine/chart/ClickableArea;-><init>(Landroid/graphics/RectF;DD)V

    aput-object v1, v13, v17

    .line 91
    add-int/lit8 v9, v9, 0x2

    goto :goto_0

    .line 97
    .end local v15           #size:D
    :cond_0
    return-object v13
.end method

.method public drawLegendShape(Landroid/graphics/Canvas;Lorg/achartengine/renderer/SimpleSeriesRenderer;FFILandroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "renderer"
    .parameter "x"
    .parameter "y"
    .parameter "seriesIndex"
    .parameter "paint"

    .prologue
    .line 122
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    const/high16 v0, 0x4120

    add-float v3, p3, v0

    const/high16 v5, 0x4040

    move-object v0, p0

    move-object v1, p1

    move-object v2, p6

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/achartengine/chart/BubbleChart;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    .line 124
    return-void
.end method

.method public drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FLorg/achartengine/renderer/SimpleSeriesRenderer;FIILjava/util/List;)V
    .locals 17
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
    .line 70
    .local p8, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    move-object/from16 v13, p4

    check-cast v13, Lorg/achartengine/renderer/XYSeriesRenderer;

    .line 71
    .local v13, renderer:Lorg/achartengine/renderer/XYSeriesRenderer;
    invoke-virtual {v13}, Lorg/achartengine/renderer/XYSeriesRenderer;->getColor()I

    move-result v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    move-object/from16 v0, p3

    array-length v10, v0

    .line 74
    .local v10, length:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/BubbleChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v14

    check-cast v14, Lorg/achartengine/model/XYValueSeries;

    .line 75
    .local v14, series:Lorg/achartengine/model/XYValueSeries;
    invoke-virtual {v14}, Lorg/achartengine/model/XYValueSeries;->getMaxValue()D

    move-result-wide v11

    .line 76
    .local v11, max:D
    const-wide/high16 v1, 0x4034

    div-double v7, v1, v11

    .line 77
    .local v7, coef:D
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 78
    div-int/lit8 v1, v9, 0x2

    add-int v1, v1, p7

    invoke-virtual {v14, v1}, Lorg/achartengine/model/XYValueSeries;->getValue(I)D

    move-result-wide v1

    mul-double/2addr v1, v7

    const-wide/high16 v3, 0x4000

    add-double v15, v1, v3

    .line 79
    .local v15, size:D
    aget v4, p3, v9

    add-int/lit8 v1, v9, 0x1

    aget v5, p3, v1

    double-to-float v6, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/achartengine/chart/BubbleChart;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    .line 77
    add-int/lit8 v9, v9, 0x2

    goto :goto_0

    .line 81
    .end local v15           #size:D
    :cond_0
    return-void
.end method

.method public getChartType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string v0, "Bubble"

    return-object v0
.end method

.method public getLegendShapeWidth(I)I
    .locals 1
    .parameter "seriesIndex"

    .prologue
    .line 107
    const/16 v0, 0xa

    return v0
.end method
