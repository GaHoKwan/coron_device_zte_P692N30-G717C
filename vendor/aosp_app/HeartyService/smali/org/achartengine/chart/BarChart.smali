.class public Lorg/achartengine/chart/BarChart;
.super Lorg/achartengine/chart/XYChart;
.source "BarChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/achartengine/chart/BarChart$Type;
    }
.end annotation


# static fields
.field private static final SHAPE_WIDTH:I = 0xc

.field public static final TYPE:Ljava/lang/String; = "Bar"

.field private static count:I


# instance fields
.field protected mType:Lorg/achartengine/chart/BarChart$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lorg/achartengine/chart/BarChart;->count:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/achartengine/chart/XYChart;-><init>()V

    .line 43
    sget-object v0, Lorg/achartengine/chart/BarChart$Type;->DEFAULT:Lorg/achartengine/chart/BarChart$Type;

    iput-object v0, p0, Lorg/achartengine/chart/BarChart;->mType:Lorg/achartengine/chart/BarChart$Type;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)V
    .locals 2
    .parameter "dataset"
    .parameter "dataset1"
    .parameter "renderer"
    .parameter "type"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lorg/achartengine/chart/XYChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 43
    sget-object v0, Lorg/achartengine/chart/BarChart$Type;->DEFAULT:Lorg/achartengine/chart/BarChart$Type;

    iput-object v0, p0, Lorg/achartengine/chart/BarChart;->mType:Lorg/achartengine/chart/BarChart$Type;

    .line 70
    iput-object p4, p0, Lorg/achartengine/chart/BarChart;->mType:Lorg/achartengine/chart/BarChart$Type;

    .line 71
    const-string v0, "ChartView"

    const-string v1, "BarChart created..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method private belongWhichSection(DDD)Z
    .locals 6
    .parameter "number"
    .parameter "from"
    .parameter "to"

    .prologue
    const-wide/high16 v4, 0x4014

    const-wide/high16 v2, 0x4010

    .line 188
    mul-double v0, p1, v4

    div-double/2addr v0, v2

    cmpl-double v0, v0, p3

    if-ltz v0, :cond_0

    mul-double v0, p1, v4

    div-double/2addr v0, v2

    cmpg-double v0, v0, p5

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawBar(Landroid/graphics/Canvas;FFFFIILandroid/graphics/Paint;)V
    .locals 18
    .parameter "canvas"
    .parameter "xMin"
    .parameter "yMin"
    .parameter "xMax"
    .parameter "yMax"
    .parameter "scale"
    .parameter "seriesIndex"
    .parameter "paint"

    .prologue
    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/BarChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v17

    .line 252
    .local v17, renderer:Lorg/achartengine/renderer/SimpleSeriesRenderer;
    invoke-virtual/range {v17 .. v17}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->isGradientEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {v17 .. v17}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getGradientStopValue()D

    move-result-wide v4

    aput-wide v4, v2, v3

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v2, v1}, Lorg/achartengine/chart/BarChart;->toScreenPoint([DI)[D

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    double-to-float v0, v2

    move/from16 v16, v0

    .line 255
    .local v16, minY:F
    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {v17 .. v17}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getGradientStartValue()D

    move-result-wide v4

    aput-wide v4, v2, v3

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v2, v1}, Lorg/achartengine/chart/BarChart;->toScreenPoint([DI)[D

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    double-to-float v15, v2

    .line 257
    .local v15, maxY:F
    move/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 258
    .local v12, gradientMinY:F
    move/from16 v0, p5

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 259
    .local v10, gradientMaxY:F
    invoke-virtual/range {v17 .. v17}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getGradientStopColor()I

    move-result v11

    .line 260
    .local v11, gradientMinColor:I
    invoke-virtual/range {v17 .. v17}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getGradientStartColor()I

    move-result v9

    .line 261
    .local v9, gradientMaxColor:I
    move v13, v9

    .line 262
    .local v13, gradientStartColor:I
    move v14, v11

    .line 264
    .local v14, gradientStopColor:I
    cmpg-float v2, p3, v16

    if-gez v2, :cond_0

    .line 265
    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v4, v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v5, v2

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v2, p1

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 272
    :goto_0
    cmpl-float v2, p5, v15

    if-lez v2, :cond_1

    .line 273
    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v4, v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v5, v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v2, p1

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 280
    :goto_1
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v13, v3, v4

    const/4 v4, 0x1

    aput v14, v3, v4

    invoke-direct {v8, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 283
    .local v8, gradient:Landroid/graphics/drawable/GradientDrawable;
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 285
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 299
    .end local v8           #gradient:Landroid/graphics/drawable/GradientDrawable;
    .end local v9           #gradientMaxColor:I
    .end local v10           #gradientMaxY:F
    .end local v11           #gradientMinColor:I
    .end local v12           #gradientMinY:F
    .end local v13           #gradientStartColor:I
    .end local v14           #gradientStopColor:I
    .end local v15           #maxY:F
    .end local v16           #minY:F
    :goto_2
    return-void

    .line 269
    .restart local v9       #gradientMaxColor:I
    .restart local v10       #gradientMaxY:F
    .restart local v11       #gradientMinColor:I
    .restart local v12       #gradientMinY:F
    .restart local v13       #gradientStartColor:I
    .restart local v14       #gradientStopColor:I
    .restart local v15       #maxY:F
    .restart local v16       #minY:F
    :cond_0
    sub-float v2, v15, v12

    sub-float v3, v15, v16

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v2}, Lorg/achartengine/chart/BarChart;->getGradientPartialColor(IIF)I

    move-result v14

    goto :goto_0

    .line 277
    :cond_1
    sub-float v2, v10, v16

    sub-float v3, v15, v16

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11, v2}, Lorg/achartengine/chart/BarChart;->getGradientPartialColor(IIF)I

    move-result v13

    goto :goto_1

    .line 287
    .end local v9           #gradientMaxColor:I
    .end local v10           #gradientMaxY:F
    .end local v11           #gradientMinColor:I
    .end local v12           #gradientMinY:F
    .end local v13           #gradientStartColor:I
    .end local v14           #gradientStopColor:I
    .end local v15           #maxY:F
    .end local v16           #minY:F
    :cond_2
    const-string v2, "suzaiqiang"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "yMin:::: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    yMax::: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sub-float v2, p3, p5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f80

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 289
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p5

    move/from16 p3, p5

    .line 291
    :cond_3
    const-string v2, "suzaiqiang"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canvas.drawRect:::: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/BarChart;->yCoorBottomOffset:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v6, v0, Lorg/achartengine/chart/BarChart;->yCoorBottomOffset:I

    sub-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v2, p1

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method private drawBarforWifi(Landroid/graphics/Canvas;FFFFIILandroid/graphics/Paint;)V
    .locals 18
    .parameter "canvas"
    .parameter "xMin"
    .parameter "yMin"
    .parameter "xMax"
    .parameter "yMax"
    .parameter "scale"
    .parameter "seriesIndex"
    .parameter "paint"

    .prologue
    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/BarChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v17

    .line 306
    .local v17, renderer:Lorg/achartengine/renderer/SimpleSeriesRenderer;
    invoke-virtual/range {v17 .. v17}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->isGradientEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {v17 .. v17}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getGradientStopValue()D

    move-result-wide v4

    aput-wide v4, v2, v3

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v2, v1}, Lorg/achartengine/chart/BarChart;->toScreenPoint([DI)[D

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    double-to-float v0, v2

    move/from16 v16, v0

    .line 309
    .local v16, minY:F
    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {v17 .. v17}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getGradientStartValue()D

    move-result-wide v4

    aput-wide v4, v2, v3

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v2, v1}, Lorg/achartengine/chart/BarChart;->toScreenPoint([DI)[D

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    double-to-float v15, v2

    .line 311
    .local v15, maxY:F
    move/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 312
    .local v12, gradientMinY:F
    move/from16 v0, p5

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 313
    .local v10, gradientMaxY:F
    invoke-virtual/range {v17 .. v17}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getGradientStopColor()I

    move-result v11

    .line 314
    .local v11, gradientMinColor:I
    invoke-virtual/range {v17 .. v17}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getGradientStartColor()I

    move-result v9

    .line 315
    .local v9, gradientMaxColor:I
    move v13, v9

    .line 316
    .local v13, gradientStartColor:I
    move v14, v11

    .line 318
    .local v14, gradientStopColor:I
    cmpg-float v2, p3, v16

    if-gez v2, :cond_0

    .line 319
    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v4, v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v5, v2

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v2, p1

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 326
    :goto_0
    cmpl-float v2, p5, v15

    if-lez v2, :cond_1

    .line 327
    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v4, v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v5, v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v2, p1

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 334
    :goto_1
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v13, v3, v4

    const/4 v4, 0x1

    aput v14, v3, v4

    invoke-direct {v8, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 337
    .local v8, gradient:Landroid/graphics/drawable/GradientDrawable;
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 339
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 354
    .end local v8           #gradient:Landroid/graphics/drawable/GradientDrawable;
    .end local v9           #gradientMaxColor:I
    .end local v10           #gradientMaxY:F
    .end local v11           #gradientMinColor:I
    .end local v12           #gradientMinY:F
    .end local v13           #gradientStartColor:I
    .end local v14           #gradientStopColor:I
    .end local v15           #maxY:F
    .end local v16           #minY:F
    :goto_2
    return-void

    .line 323
    .restart local v9       #gradientMaxColor:I
    .restart local v10       #gradientMaxY:F
    .restart local v11       #gradientMinColor:I
    .restart local v12       #gradientMinY:F
    .restart local v13       #gradientStartColor:I
    .restart local v14       #gradientStopColor:I
    .restart local v15       #maxY:F
    .restart local v16       #minY:F
    :cond_0
    sub-float v2, v15, v12

    sub-float v3, v15, v16

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v2}, Lorg/achartengine/chart/BarChart;->getGradientPartialColor(IIF)I

    move-result v14

    goto :goto_0

    .line 331
    :cond_1
    sub-float v2, v10, v16

    sub-float v3, v15, v16

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11, v2}, Lorg/achartengine/chart/BarChart;->getGradientPartialColor(IIF)I

    move-result v13

    goto :goto_1

    .line 341
    .end local v9           #gradientMaxColor:I
    .end local v10           #gradientMaxY:F
    .end local v11           #gradientMinColor:I
    .end local v12           #gradientMinY:F
    .end local v13           #gradientStartColor:I
    .end local v14           #gradientStopColor:I
    .end local v15           #maxY:F
    .end local v16           #minY:F
    :cond_2
    const-string v2, "suzaiqiang"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "yMin:::: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    yMax::: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sub-float v2, p3, p5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f80

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 343
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p5

    move/from16 p3, p5

    .line 345
    :cond_3
    const-string v2, "suzaiqiang"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dddddddddddddddd   canvas.drawRect:::: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const v2, -0xcc4a1b

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/BarChart;->yCoorBottomOffset:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v6, v0, Lorg/achartengine/chart/BarChart;->yCoorBottomOffset:I

    sub-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v2, p1

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method private getGradientPartialColor(IIF)I
    .locals 8
    .parameter "minColor"
    .parameter "maxColor"
    .parameter "fraction"

    .prologue
    const/high16 v7, 0x3f80

    .line 374
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    sub-float v5, v7, p3

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 376
    .local v0, alpha:I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    sub-float v5, v7, p3

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 378
    .local v3, r:I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    sub-float v5, v7, p3

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 380
    .local v2, g:I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    sub-float v5, v7, p3

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 382
    .local v1, b:I
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method


# virtual methods
.method protected clickableAreasForPoints([F[DFII)[Lorg/achartengine/chart/ClickableArea;
    .locals 17
    .parameter "points"
    .parameter "values"
    .parameter "yAxisValue"
    .parameter "seriesIndex"
    .parameter "startIndex"

    .prologue
    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/BarChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v2}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v12

    .line 78
    .local v12, seriesNr:I
    move-object/from16 v0, p1

    array-length v10, v0

    .line 79
    .local v10, length:I
    div-int/lit8 v2, v10, 0x2

    new-array v11, v2, [Lorg/achartengine/chart/ClickableArea;

    .line 80
    .local v11, ret:[Lorg/achartengine/chart/ClickableArea;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v12}, Lorg/achartengine/chart/BarChart;->getHalfDiffX([FII)F

    move-result v8

    .line 81
    .local v8, halfDiffX:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_1

    .line 82
    aget v14, p1, v9

    .line 83
    .local v14, x:F
    add-int/lit8 v2, v9, 0x1

    aget v15, p1, v2

    .line 84
    .local v15, y:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/BarChart;->mType:Lorg/achartengine/chart/BarChart$Type;

    sget-object v3, Lorg/achartengine/chart/BarChart$Type;->STACKED:Lorg/achartengine/chart/BarChart$Type;

    if-ne v2, v3, :cond_0

    .line 85
    div-int/lit8 v16, v9, 0x2

    new-instance v2, Lorg/achartengine/chart/ClickableArea;

    new-instance v3, Landroid/graphics/RectF;

    sub-float v4, v14, v8

    add-float v5, v14, v8

    move/from16 v0, p3

    invoke-direct {v3, v4, v15, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    aget-wide v4, p2, v9

    add-int/lit8 v6, v9, 0x1

    aget-wide v6, p2, v6

    invoke-direct/range {v2 .. v7}, Lorg/achartengine/chart/ClickableArea;-><init>(Landroid/graphics/RectF;DD)V

    aput-object v2, v11, v16

    .line 81
    :goto_1
    add-int/lit8 v9, v9, 0x2

    goto :goto_0

    .line 88
    :cond_0
    int-to-float v2, v12

    mul-float/2addr v2, v8

    sub-float v2, v14, v2

    mul-int/lit8 v3, p4, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v8

    add-float v13, v2, v3

    .line 90
    .local v13, startX:F
    div-int/lit8 v16, v9, 0x2

    new-instance v2, Lorg/achartengine/chart/ClickableArea;

    new-instance v3, Landroid/graphics/RectF;

    const/high16 v4, 0x4000

    mul-float/2addr v4, v8

    add-float/2addr v4, v13

    move/from16 v0, p3

    invoke-direct {v3, v13, v15, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    aget-wide v4, p2, v9

    add-int/lit8 v6, v9, 0x1

    aget-wide v6, p2, v6

    invoke-direct/range {v2 .. v7}, Lorg/achartengine/chart/ClickableArea;-><init>(Landroid/graphics/RectF;DD)V

    aput-object v2, v11, v16

    goto :goto_1

    .line 94
    .end local v13           #startX:F
    .end local v14           #x:F
    .end local v15           #y:F
    :cond_1
    return-object v11
.end method

.method protected drawBar(Landroid/graphics/Canvas;FFFFFIILandroid/graphics/Paint;)V
    .locals 10
    .parameter "canvas"
    .parameter "xMin"
    .parameter "yMin"
    .parameter "xMax"
    .parameter "yMax"
    .parameter "halfDiffX"
    .parameter "seriesNr"
    .parameter "seriesIndex"
    .parameter "paint"

    .prologue
    .line 216
    iget-object v1, p0, Lorg/achartengine/chart/BarChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    move/from16 v0, p8

    invoke-virtual {v1, v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v1

    invoke-virtual {v1}, Lorg/achartengine/model/XYSeries;->getScaleNumber()I

    move-result v7

    .line 217
    .local v7, scale:I
    iget-object v1, p0, Lorg/achartengine/chart/BarChart;->mType:Lorg/achartengine/chart/BarChart$Type;

    sget-object v2, Lorg/achartengine/chart/BarChart$Type;->STACKED:Lorg/achartengine/chart/BarChart$Type;

    if-ne v1, v2, :cond_0

    .line 218
    sub-float v3, p2, p6

    add-float v5, p4, p6

    move-object v1, p0

    move-object v2, p1

    move v4, p5

    move v6, p3

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lorg/achartengine/chart/BarChart;->drawBar(Landroid/graphics/Canvas;FFFFIILandroid/graphics/Paint;)V

    .line 226
    :goto_0
    return-void

    .line 221
    :cond_0
    move/from16 v0, p7

    int-to-float v1, v0

    mul-float v1, v1, p6

    sub-float v1, p2, v1

    mul-int/lit8 v2, p8, 0x2

    int-to-float v2, v2

    mul-float v2, v2, p6

    add-float v3, v1, v2

    .line 223
    .local v3, startX:F
    const/high16 v1, 0x4000

    mul-float v1, v1, p6

    add-float v5, v3, v1

    move-object v1, p0

    move-object v2, p1

    move v4, p5

    move v6, p3

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lorg/achartengine/chart/BarChart;->drawBar(Landroid/graphics/Canvas;FFFFIILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawBarforWifi(Landroid/graphics/Canvas;FFFFFIILandroid/graphics/Paint;)V
    .locals 10
    .parameter "canvas"
    .parameter "xMin"
    .parameter "yMin"
    .parameter "xMax"
    .parameter "yMax"
    .parameter "halfDiffX"
    .parameter "seriesNr"
    .parameter "seriesIndex"
    .parameter "paint"

    .prologue
    .line 359
    iget-object v1, p0, Lorg/achartengine/chart/BarChart;->mDataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;

    move/from16 v0, p8

    invoke-virtual {v1, v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v1

    invoke-virtual {v1}, Lorg/achartengine/model/XYSeries;->getScaleNumber()I

    move-result v7

    .line 360
    .local v7, scale:I
    iget-object v1, p0, Lorg/achartengine/chart/BarChart;->mType:Lorg/achartengine/chart/BarChart$Type;

    sget-object v2, Lorg/achartengine/chart/BarChart$Type;->STACKED:Lorg/achartengine/chart/BarChart$Type;

    if-ne v1, v2, :cond_0

    .line 361
    sub-float v3, p2, p6

    add-float v5, p4, p6

    move-object v1, p0

    move-object v2, p1

    move v4, p5

    move v6, p3

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lorg/achartengine/chart/BarChart;->drawBarforWifi(Landroid/graphics/Canvas;FFFFIILandroid/graphics/Paint;)V

    .line 369
    :goto_0
    return-void

    .line 364
    :cond_0
    move/from16 v0, p7

    int-to-float v1, v0

    mul-float v1, v1, p6

    sub-float v1, p2, v1

    mul-int/lit8 v2, p8, 0x2

    int-to-float v2, v2

    mul-float v2, v2, p6

    add-float v3, v1, v2

    .line 366
    .local v3, startX:F
    const/high16 v1, 0x4000

    mul-float v1, v1, p6

    add-float v5, v3, v1

    move-object v1, p0

    move-object v2, p1

    move v4, p5

    move v6, p3

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lorg/achartengine/chart/BarChart;->drawBarforWifi(Landroid/graphics/Canvas;FFFFIILandroid/graphics/Paint;)V

    goto :goto_0
.end method

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
    .line 407
    iget-object v1, p0, Lorg/achartengine/chart/BarChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v1}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v11

    .line 408
    .local v11, seriesNr:I
    move-object/from16 v0, p5

    array-length v1, v0

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v1, v11}, Lorg/achartengine/chart/BarChart;->getHalfDiffX([FII)F

    move-result v8

    .line 409
    .local v8, halfDiffX:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p5

    array-length v1, v0

    if-ge v9, v1, :cond_3

    .line 410
    div-int/lit8 v1, v9, 0x2

    add-int v10, p7, v1

    .line 411
    .local v10, index:I
    invoke-virtual {p2, v10}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/achartengine/chart/BarChart;->isNullValue(D)Z

    move-result v1

    if-nez v1, :cond_1

    .line 412
    aget v12, p5, v9

    .line 413
    .local v12, x:F
    iget-object v1, p0, Lorg/achartengine/chart/BarChart;->mType:Lorg/achartengine/chart/BarChart$Type;

    sget-object v2, Lorg/achartengine/chart/BarChart$Type;->DEFAULT:Lorg/achartengine/chart/BarChart$Type;

    if-ne v1, v2, :cond_0

    .line 414
    mul-int/lit8 v1, p6, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v8

    int-to-float v2, v11

    const/high16 v3, 0x3fc0

    sub-float/2addr v2, v3

    mul-float/2addr v2, v8

    sub-float/2addr v1, v2

    add-float/2addr v12, v1

    .line 417
    :cond_0
    add-int/lit8 v1, v9, 0x1

    aget v1, p5, v1

    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesSpacing()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/achartengine/chart/BarChart;->yCoorBottomOffset:I

    int-to-float v2, v2

    sub-float v5, v1, v2

    .line 419
    .local v5, yCoor:F
    iget-boolean v1, p0, Lorg/achartengine/chart/BarChart;->mWifi:Z

    if-eqz v1, :cond_2

    .line 420
    invoke-virtual {p2, v10}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x4

    int-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lorg/achartengine/chart/BarChart;->getUnitLabel(D)Ljava/lang/String;

    move-result-object v3

    const/high16 v1, 0x41c8

    add-float v4, v12, v1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/achartengine/chart/BarChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 409
    .end local v5           #yCoor:F
    .end local v12           #x:F
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x2

    goto :goto_0

    .line 424
    .restart local v5       #yCoor:F
    .restart local v12       #x:F
    :cond_2
    invoke-virtual {p2, v10}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x4

    int-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lorg/achartengine/chart/BarChart;->getUnitLabel(D)Ljava/lang/String;

    move-result-object v3

    const/high16 v1, 0x4248

    sub-float v4, v12, v1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/achartengine/chart/BarChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_1

    .line 429
    .end local v5           #yCoor:F
    .end local v10           #index:I
    .end local v12           #x:F
    :cond_3
    return-void
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
    .line 460
    const/high16 v6, 0x40c0

    .line 461
    .local v6, halfShapeWidth:F
    sub-float v2, p4, v6

    const/high16 v0, 0x4140

    add-float v3, p3, v0

    add-float v4, p4, v6

    move-object v0, p1

    move v1, p3

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 463
    return-void
.end method

.method public drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FLorg/achartengine/renderer/SimpleSeriesRenderer;FIILjava/util/List;)V
    .locals 33
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
    .line 118
    .local p8, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/achartengine/chart/BarChart;->mWifi:Z

    if-nez v4, :cond_3

    .line 119
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/BarChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v4}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v11

    .line 120
    .local v11, seriesNr:I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v31, v0

    .line 121
    .local v31, length:I
    invoke-virtual/range {p4 .. p4}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/BarChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getBarChartSections()Ljava/util/List;

    move-result-object v23

    .line 125
    .local v23, barChartSections:Ljava/util/List;,"Ljava/util/List<Lorg/achartengine/chart/BarChartSection;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v11}, Lorg/achartengine/chart/BarChart;->getHalfDiffX([FII)F

    move-result v26

    .line 126
    .local v26, halfDiffX:F
    const/16 v29, 0x0

    .line 127
    .local v29, k:I
    const/16 v27, 0x0

    .local v27, i:I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v31

    if-ge v0, v1, :cond_2

    .line 128
    aget v14, p3, v27

    .line 129
    .local v14, x:F
    add-int/lit8 v4, v27, 0x1

    aget v17, p3, v4

    .line 130
    .local v17, y:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getColor()I

    move-result v25

    .line 135
    .local v25, color:I
    if-eqz v23, :cond_1

    .line 136
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/achartengine/chart/BarChartSection;

    .line 137
    .local v22, barChartSection:Lorg/achartengine/chart/BarChartSection;
    move-object/from16 v0, p8

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual/range {v22 .. v22}, Lorg/achartengine/chart/BarChartSection;->getFrom()D

    move-result-wide v7

    invoke-virtual/range {v22 .. v22}, Lorg/achartengine/chart/BarChartSection;->getTo()D

    move-result-wide v9

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lorg/achartengine/chart/BarChart;->belongWhichSection(DDD)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    invoke-virtual/range {v22 .. v22}, Lorg/achartengine/chart/BarChartSection;->getColor()I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    .end local v22           #barChartSection:Lorg/achartengine/chart/BarChartSection;
    .end local v28           #i$:Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v29, v29, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v14

    move/from16 v7, p5

    move v8, v14

    move/from16 v9, v17

    move/from16 v10, v26

    move/from16 v12, p6

    move-object/from16 v13, p2

    .line 145
    invoke-virtual/range {v4 .. v13}, Lorg/achartengine/chart/BarChart;->drawBar(Landroid/graphics/Canvas;FFFFFIILandroid/graphics/Paint;)V

    .line 147
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    add-int/lit8 v27, v27, 0x2

    goto :goto_0

    .line 149
    .end local v14           #x:F
    .end local v17           #y:F
    .end local v25           #color:I
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    .end local v11           #seriesNr:I
    .end local v23           #barChartSections:Ljava/util/List;,"Ljava/util/List<Lorg/achartengine/chart/BarChartSection;>;"
    .end local v26           #halfDiffX:F
    .end local v29           #k:I
    .end local v31           #length:I
    :goto_1
    return-void

    .line 152
    .end local v27           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/BarChart;->mDataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v4}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v19

    .line 153
    .local v19, seriesNr1:I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    .line 154
    .local v32, length1:I
    invoke-virtual/range {p4 .. p4}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/BarChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getBarChartSections()Ljava/util/List;

    move-result-object v24

    .line 158
    .local v24, barChartSections1:Ljava/util/List;,"Ljava/util/List<Lorg/achartengine/chart/BarChartSection;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v32

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/achartengine/chart/BarChart;->getHalfDiffX([FII)F

    move-result v18

    .line 159
    .local v18, halfDiffX1:F
    const/16 v30, 0x0

    .line 160
    .local v30, k1:I
    const/16 v27, 0x0

    .restart local v27       #i:I
    :goto_2
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_6

    .line 161
    aget v14, p3, v27

    .line 162
    .restart local v14       #x:F
    add-int/lit8 v4, v27, 0x1

    aget v17, p3, v4

    .line 163
    .restart local v17       #y:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getColor()I

    move-result v25

    .line 168
    .restart local v25       #color:I
    if-eqz v24, :cond_5

    .line 169
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/achartengine/chart/BarChartSection;

    .line 170
    .restart local v22       #barChartSection:Lorg/achartengine/chart/BarChartSection;
    move-object/from16 v0, p8

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual/range {v22 .. v22}, Lorg/achartengine/chart/BarChartSection;->getFrom()D

    move-result-wide v7

    invoke-virtual/range {v22 .. v22}, Lorg/achartengine/chart/BarChartSection;->getTo()D

    move-result-wide v9

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lorg/achartengine/chart/BarChart;->belongWhichSection(DDD)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 172
    invoke-virtual/range {v22 .. v22}, Lorg/achartengine/chart/BarChartSection;->getColor()I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    .end local v22           #barChartSection:Lorg/achartengine/chart/BarChartSection;
    .end local v28           #i$:Ljava/util/Iterator;
    :cond_5
    add-int/lit8 v30, v30, 0x1

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v15, p5

    move/from16 v16, v14

    move/from16 v20, p6

    move-object/from16 v21, p2

    .line 178
    invoke-virtual/range {v12 .. v21}, Lorg/achartengine/chart/BarChart;->drawBarforWifi(Landroid/graphics/Canvas;FFFFFIILandroid/graphics/Paint;)V

    .line 180
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    add-int/lit8 v27, v27, 0x2

    goto :goto_2

    .line 182
    .end local v14           #x:F
    .end local v17           #y:F
    .end local v25           #color:I
    :cond_6
    invoke-virtual/range {p4 .. p4}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1
.end method

.method public getChartType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    const-string v0, "Bar"

    return-object v0
.end method

.method protected getCoeficient()F
    .locals 1

    .prologue
    .line 500
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getDefaultMinimum()D
    .locals 2

    .prologue
    .line 518
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getHalfDiffX([FII)F
    .locals 10
    .parameter "points"
    .parameter "length"
    .parameter "seriesNr"

    .prologue
    .line 478
    move v0, p2

    .line 479
    .local v0, div:I
    const/4 v2, 0x2

    if-le p2, v2, :cond_0

    .line 480
    add-int/lit8 v0, p2, -0x2

    .line 482
    :cond_0
    add-int/lit8 v2, p2, -0x2

    aget v2, p1, v2

    const/4 v3, 0x0

    aget v3, p1, v3

    sub-float/2addr v2, v3

    int-to-float v3, v0

    div-float v1, v2, v3

    .line 483
    .local v1, halfDiffX:F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    .line 484
    const/high16 v1, 0x4120

    .line 487
    :cond_1
    iget-object v2, p0, Lorg/achartengine/chart/BarChart;->mType:Lorg/achartengine/chart/BarChart$Type;

    sget-object v3, Lorg/achartengine/chart/BarChart$Type;->STACKED:Lorg/achartengine/chart/BarChart$Type;

    if-eq v2, v3, :cond_2

    .line 488
    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 490
    :cond_2
    float-to-double v2, v1

    invoke-virtual {p0}, Lorg/achartengine/chart/BarChart;->getCoeficient()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    iget-object v8, p0, Lorg/achartengine/chart/BarChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v8}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getBarSpacing()D

    move-result-wide v8

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method public getLegendShapeWidth(I)I
    .locals 1
    .parameter "seriesIndex"

    .prologue
    .line 439
    const/16 v0, 0xc

    return v0
.end method

.method protected isRenderNullValues()Z
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x1

    return v0
.end method
