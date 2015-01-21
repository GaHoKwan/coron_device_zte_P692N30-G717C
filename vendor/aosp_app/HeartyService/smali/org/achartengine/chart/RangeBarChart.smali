.class public Lorg/achartengine/chart/RangeBarChart;
.super Lorg/achartengine/chart/BarChart;
.source "RangeBarChart.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "RangeBar"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/achartengine/chart/BarChart;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)V
    .locals 1
    .parameter "dataset"
    .parameter "renderer"
    .parameter "type"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/achartengine/chart/BarChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected drawChartValuesText(Landroid/graphics/Canvas;Lorg/achartengine/model/XYSeries;Lorg/achartengine/renderer/SimpleSeriesRenderer;Landroid/graphics/Paint;[FII)V
    .locals 13
    .parameter "canvas"
    .parameter "series"
    .parameter "renderer"
    .parameter "paint"
    .parameter "points"
    .parameter "seriesIndex"
    .parameter "startIndex"

    .prologue
    .line 96
    iget-object v1, p0, Lorg/achartengine/chart/RangeBarChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v1}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v11

    .line 97
    .local v11, seriesNr:I
    move-object/from16 v0, p5

    array-length v1, v0

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v1, v11}, Lorg/achartengine/chart/RangeBarChart;->getHalfDiffX([FII)F

    move-result v8

    .line 98
    .local v8, halfDiffX:F
    const/4 v12, 0x0

    .line 99
    .local v12, start:I
    if-lez p7, :cond_0

    .line 100
    const/4 v12, 0x2

    .line 102
    :cond_0
    move v9, v12

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p5

    array-length v1, v0

    if-ge v9, v1, :cond_4

    .line 103
    div-int/lit8 v1, v9, 0x2

    add-int v10, p7, v1

    .line 104
    .local v10, index:I
    aget v4, p5, v9

    .line 105
    .local v4, x:F
    iget-object v1, p0, Lorg/achartengine/chart/RangeBarChart;->mType:Lorg/achartengine/chart/BarChart$Type;

    sget-object v2, Lorg/achartengine/chart/BarChart$Type;->DEFAULT:Lorg/achartengine/chart/BarChart$Type;

    if-ne v1, v2, :cond_1

    .line 106
    mul-int/lit8 v1, p6, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v8

    int-to-float v2, v11

    const/high16 v3, 0x3fc0

    sub-float/2addr v2, v3

    mul-float/2addr v2, v8

    sub-float/2addr v1, v2

    add-float/2addr v4, v1

    .line 109
    :cond_1
    add-int/lit8 v1, v10, 0x1

    invoke-virtual {p2, v1}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/achartengine/chart/RangeBarChart;->isNullValue(D)Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p5

    array-length v1, v0

    add-int/lit8 v2, v9, 0x3

    if-le v1, v2, :cond_2

    .line 111
    add-int/lit8 v1, v10, 0x1

    invoke-virtual {p2, v1}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/achartengine/chart/RangeBarChart;->getLabel(D)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v9, 0x3

    aget v1, p5, v1

    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesSpacing()F

    move-result v2

    sub-float v5, v1, v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/achartengine/chart/RangeBarChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 114
    :cond_2
    invoke-virtual {p2, v10}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/achartengine/chart/RangeBarChart;->isNullValue(D)Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p5

    array-length v1, v0

    add-int/lit8 v2, v9, 0x1

    if-le v1, v2, :cond_3

    .line 116
    invoke-virtual {p2, v10}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/achartengine/chart/RangeBarChart;->getLabel(D)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v9, 0x1

    aget v1, p5, v1

    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesTextSize()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesSpacing()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x4040

    sub-float v5, v1, v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/achartengine/chart/RangeBarChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 102
    :cond_3
    add-int/lit8 v9, v9, 0x4

    goto :goto_0

    .line 121
    .end local v4           #x:F
    .end local v10           #index:I
    :cond_4
    return-void
.end method

.method public drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FLorg/achartengine/renderer/SimpleSeriesRenderer;FII)V
    .locals 14
    .parameter "canvas"
    .parameter "paint"
    .parameter "points"
    .parameter "seriesRenderer"
    .parameter "yAxisValue"
    .parameter "seriesIndex"
    .parameter "startIndex"

    .prologue
    .line 61
    iget-object v1, p0, Lorg/achartengine/chart/RangeBarChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v1}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v8

    .line 62
    .local v8, seriesNr:I
    move-object/from16 v0, p3

    array-length v12, v0

    .line 63
    .local v12, length:I
    invoke-virtual/range {p4 .. p4}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v12, v8}, Lorg/achartengine/chart/RangeBarChart;->getHalfDiffX([FII)F

    move-result v7

    .line 66
    .local v7, halfDiffX:F
    const/4 v13, 0x0

    .line 67
    .local v13, start:I
    if-lez p7, :cond_0

    .line 68
    const/4 v13, 0x2

    .line 70
    :cond_0
    move v11, v13

    .local v11, i:I
    :goto_0
    if-ge v11, v12, :cond_2

    .line 71
    move-object/from16 v0, p3

    array-length v1, v0

    add-int/lit8 v2, v11, 0x3

    if-le v1, v2, :cond_1

    .line 72
    aget v3, p3, v11

    .line 73
    .local v3, xMin:F
    add-int/lit8 v1, v11, 0x1

    aget v4, p3, v1

    .line 75
    .local v4, yMin:F
    add-int/lit8 v1, v11, 0x2

    aget v5, p3, v1

    .line 76
    .local v5, xMax:F
    add-int/lit8 v1, v11, 0x3

    aget v6, p3, v1

    .local v6, yMax:F
    move-object v1, p0

    move-object v2, p1

    move/from16 v9, p6

    move-object/from16 v10, p2

    .line 77
    invoke-virtual/range {v1 .. v10}, Lorg/achartengine/chart/RangeBarChart;->drawBar(Landroid/graphics/Canvas;FFFFFIILandroid/graphics/Paint;)V

    .line 70
    .end local v3           #xMin:F
    .end local v4           #yMin:F
    .end local v5           #xMax:F
    .end local v6           #yMax:F
    :cond_1
    add-int/lit8 v11, v11, 0x4

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    return-void
.end method

.method public getChartType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "RangeBar"

    return-object v0
.end method

.method protected getCoeficient()F
    .locals 1

    .prologue
    .line 129
    const/high16 v0, 0x3f00

    return v0
.end method
