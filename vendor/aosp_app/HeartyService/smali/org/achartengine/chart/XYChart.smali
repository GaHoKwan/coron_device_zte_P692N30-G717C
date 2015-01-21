.class public abstract Lorg/achartengine/chart/XYChart;
.super Lorg/achartengine/chart/AbstractChart;
.source "XYChart.java"


# instance fields
.field private clickableAreas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lorg/achartengine/chart/ClickableArea;",
            ">;>;"
        }
    .end annotation
.end field

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private final mCalcRange:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[D>;"
        }
    .end annotation
.end field

.field private mCenter:Lorg/achartengine/model/Point;

.field protected mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

.field protected mDataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;

.field protected mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

.field private mScale:F

.field private mScreenR:Landroid/graphics/Rect;

.field private mTranslate:F

.field protected mWifi:Z

.field private weekDays:[Ljava/lang/String;

.field protected yCoorBottomOffset:I

.field protected yCoorMarginBottom:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/achartengine/chart/AbstractChart;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/achartengine/chart/XYChart;->mWifi:Z

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->decimalFormat:Ljava/text/DecimalFormat;

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->weekDays:[Ljava/lang/String;

    .line 85
    const/16 v0, 0xa

    iput v0, p0, Lorg/achartengine/chart/XYChart;->yCoorBottomOffset:I

    .line 87
    const/4 v0, 0x5

    iput v0, p0, Lorg/achartengine/chart/XYChart;->yCoorMarginBottom:I

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    .line 95
    invoke-direct {p0}, Lorg/achartengine/chart/XYChart;->initParas()V

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 2
    .parameter "dataset"
    .parameter "dataset1"
    .parameter "renderer"

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/achartengine/chart/AbstractChart;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/achartengine/chart/XYChart;->mWifi:Z

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->decimalFormat:Ljava/text/DecimalFormat;

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->weekDays:[Ljava/lang/String;

    .line 85
    const/16 v0, 0xa

    iput v0, p0, Lorg/achartengine/chart/XYChart;->yCoorBottomOffset:I

    .line 87
    const/4 v0, 0x5

    iput v0, p0, Lorg/achartengine/chart/XYChart;->yCoorMarginBottom:I

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    .line 107
    iput-object p1, p0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 108
    iput-object p2, p0, Lorg/achartengine/chart/XYChart;->mDataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 109
    iput-object p3, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 110
    invoke-direct {p0}, Lorg/achartengine/chart/XYChart;->initParas()V

    .line 111
    return-void
.end method

.method private getLabelLinePos(Landroid/graphics/Paint$Align;)I
    .locals 2
    .parameter "align"

    .prologue
    .line 959
    const/4 v0, 0x4

    .line 960
    .local v0, pos:I
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne p1, v1, :cond_0

    .line 961
    neg-int v0, v0

    .line 963
    :cond_0
    return v0
.end method

.method private getValidLabels(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, labels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 548
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 549
    .local v1, label:Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 550
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 553
    .end local v1           #label:Ljava/lang/Double;
    :cond_1
    return-object v2
.end method

.method private initParas()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->weekDays:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0292

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 115
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->weekDays:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0293

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 116
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x12

    iput v0, p0, Lorg/achartengine/chart/XYChart;->yCoorBottomOffset:I

    .line 118
    iget v0, p0, Lorg/achartengine/chart/XYChart;->yCoorBottomOffset:I

    iput v0, p0, Lorg/achartengine/chart/XYChart;->yCoorMarginBottom:I

    .line 119
    return-void
.end method

.method private setStroke(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "cap"
    .parameter "join"
    .parameter "miter"
    .parameter "style"
    .parameter "pathEffect"
    .parameter "paint"

    .prologue
    .line 622
    invoke-virtual {p6, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 623
    invoke-virtual {p6, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 624
    invoke-virtual {p6, p3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 625
    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 626
    invoke-virtual {p6, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 627
    return-void
.end method

.method private transform(Landroid/graphics/Canvas;FZ)V
    .locals 3
    .parameter "canvas"
    .parameter "angle"
    .parameter "inverse"

    .prologue
    const/high16 v2, 0x3f80

    .line 695
    if-eqz p3, :cond_0

    .line 696
    iget v0, p0, Lorg/achartengine/chart/XYChart;->mScale:F

    div-float v0, v2, v0

    iget v1, p0, Lorg/achartengine/chart/XYChart;->mScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 697
    iget v0, p0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    iget v1, p0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 698
    neg-float v0, p2

    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mCenter:Lorg/achartengine/model/Point;

    invoke-virtual {v1}, Lorg/achartengine/model/Point;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/achartengine/chart/XYChart;->mCenter:Lorg/achartengine/model/Point;

    invoke-virtual {v2}, Lorg/achartengine/model/Point;->getY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 704
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mCenter:Lorg/achartengine/model/Point;

    invoke-virtual {v0}, Lorg/achartengine/model/Point;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mCenter:Lorg/achartengine/model/Point;

    invoke-virtual {v1}, Lorg/achartengine/model/Point;->getY()F

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 701
    iget v0, p0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    neg-float v0, v0

    iget v1, p0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 702
    iget v0, p0, Lorg/achartengine/chart/XYChart;->mScale:F

    iget v1, p0, Lorg/achartengine/chart/XYChart;->mScale:F

    div-float v1, v2, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract clickableAreasForPoints([F[DFII)[Lorg/achartengine/chart/ClickableArea;
.end method

.method public draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 104
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "paint"

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isAntialiasing()Z

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    div-int/lit8 v5, p5, 0x5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getAxisTitleTextSize()F

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lorg/achartengine/chart/XYChart;->getLegendSize(Lorg/achartengine/renderer/DefaultRenderer;IF)I

    move-result v13

    .line 145
    .local v13, legendSize:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMargins()[I

    move-result-object v72

    .line 146
    .local v72, margins:[I
    const/4 v4, 0x1

    aget v4, v72, v4

    add-int v8, p2, v4

    .line 147
    .local v8, left:I
    const/4 v4, 0x0

    aget v4, v72, v4

    add-int v95, p3, v4

    .line 148
    .local v95, top:I
    add-int v4, p2, p4

    const/4 v5, 0x3

    aget v5, v72, v5

    sub-int v9, v4, v5

    .line 149
    .local v9, right:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v4}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v89

    .line 150
    .local v89, sLength:I
    move/from16 v0, v89

    new-array v7, v0, [Ljava/lang/String;

    .line 151
    .local v7, titles:[Ljava/lang/String;
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v89

    if-ge v0, v1, :cond_0

    .line 152
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v4

    invoke-virtual {v4}, Lorg/achartengine/model/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v22

    .line 151
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 154
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isFitLegend()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLegend()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    const/4 v15, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v4 .. v15}, Lorg/achartengine/chart/XYChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-result v13

    .line 157
    :cond_1
    add-int v4, p3, p5

    const/4 v5, 0x2

    aget v5, v72, v5

    sub-int/2addr v4, v5

    sub-int v61, v4, v13

    .line 158
    .local v61, bottom:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    .line 159
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    .line 161
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    move/from16 v0, v95

    move/from16 v1, v61

    invoke-virtual {v4, v8, v0, v9, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 162
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v14, p0

    move-object/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, p3

    move/from16 v19, p4

    move/from16 v20, p5

    move-object/from16 v21, p6

    invoke-virtual/range {v14 .. v23}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 164
    .end local v22           #i:I
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceStyle()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 166
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceStyle()I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 168
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getOrientation()Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-result-object v23

    .line 169
    .local v23, or:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_5

    .line 170
    sub-int/2addr v9, v13

    .line 171
    add-int/lit8 v4, v13, -0x14

    add-int v61, v61, v4

    .line 173
    :cond_5
    invoke-virtual/range {v23 .. v23}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->getAngle()I

    move-result v58

    .line 174
    .local v58, angle:I
    const/16 v4, 0x5a

    move/from16 v0, v58

    if-ne v0, v4, :cond_8

    const/16 v88, 0x1

    .line 175
    .local v88, rotate:Z
    :goto_1
    move/from16 v0, p5

    int-to-float v4, v0

    move/from16 v0, p4

    int-to-float v5, v0

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/achartengine/chart/XYChart;->mScale:F

    .line 176
    sub-int v4, p4, p5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    .line 177
    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/XYChart;->mScale:F

    const/high16 v5, 0x3f80

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    .line 178
    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    const/high16 v5, -0x4080

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    .line 180
    :cond_6
    new-instance v4, Lorg/achartengine/model/Point;

    add-int v5, p2, p4

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-int v6, p3, p5

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lorg/achartengine/model/Point;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/achartengine/chart/XYChart;->mCenter:Lorg/achartengine/model/Point;

    .line 181
    if-eqz v88, :cond_7

    .line 182
    move/from16 v0, v58

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lorg/achartengine/chart/XYChart;->transform(Landroid/graphics/Canvas;FZ)V

    .line 185
    :cond_7
    const v73, -0x7fffffff

    .line 186
    .local v73, maxScaleNumber:I
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v89

    if-ge v0, v1, :cond_9

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v4

    invoke-virtual {v4}, Lorg/achartengine/model/XYSeries;->getScaleNumber()I

    move-result v4

    move/from16 v0, v73

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v73

    .line 186
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 174
    .end local v22           #i:I
    .end local v73           #maxScaleNumber:I
    .end local v88           #rotate:Z
    :cond_8
    const/16 v88, 0x0

    goto :goto_1

    .line 189
    .restart local v22       #i:I
    .restart local v73       #maxScaleNumber:I
    .restart local v88       #rotate:Z
    :cond_9
    add-int/lit8 v73, v73, 0x1

    .line 190
    if-gez v73, :cond_b

    .line 524
    :cond_a
    :goto_3
    return-void

    .line 193
    :cond_b
    move/from16 v0, v73

    new-array v0, v0, [D

    move-object/from16 v80, v0

    .line 194
    .local v80, minX:[D
    move/from16 v0, v73

    new-array v0, v0, [D

    move-object/from16 v74, v0

    .line 195
    .local v74, maxX:[D
    move/from16 v0, v73

    new-array v0, v0, [D

    move-object/from16 v41, v0

    .line 196
    .local v41, minY:[D
    move/from16 v0, v73

    new-array v0, v0, [D

    move-object/from16 v75, v0

    .line 197
    .local v75, maxY:[D
    move/from16 v0, v73

    new-array v0, v0, [Z

    move-object/from16 v68, v0

    .line 198
    .local v68, isMinXSet:[Z
    move/from16 v0, v73

    new-array v0, v0, [Z

    move-object/from16 v66, v0

    .line 199
    .local v66, isMaxXSet:[Z
    move/from16 v0, v73

    new-array v0, v0, [Z

    move-object/from16 v69, v0

    .line 200
    .local v69, isMinYSet:[Z
    move/from16 v0, v73

    new-array v0, v0, [Z

    move-object/from16 v67, v0

    .line 202
    .local v67, isMaxYSet:[Z
    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, v73

    if-ge v0, v1, :cond_d

    .line 203
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin(I)D

    move-result-wide v4

    aput-wide v4, v80, v22

    .line 204
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax(I)D

    move-result-wide v4

    aput-wide v4, v74, v22

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin(I)D

    move-result-wide v4

    aput-wide v4, v41, v22

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax(I)D

    move-result-wide v4

    aput-wide v4, v75, v22

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet(I)Z

    move-result v4

    aput-boolean v4, v68, v22

    .line 208
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxXSet(I)Z

    move-result v4

    aput-boolean v4, v66, v22

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinYSet(I)Z

    move-result v4

    aput-boolean v4, v69, v22

    .line 210
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxYSet(I)Z

    move-result v4

    aput-boolean v4, v67, v22

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_c

    .line 212
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [D

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_c
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 215
    :cond_d
    move/from16 v0, v73

    new-array v0, v0, [D

    move-object/from16 v98, v0

    .line 216
    .local v98, xPixelsPerUnit:[D
    move/from16 v0, v73

    new-array v0, v0, [D

    move-object/from16 v40, v0

    .line 217
    .local v40, yPixelsPerUnit:[D
    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    move/from16 v1, v89

    if-ge v0, v1, :cond_13

    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v14

    .line 219
    .local v14, series:Lorg/achartengine/model/XYSeries;
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getScaleNumber()I

    move-result v90

    .line 220
    .local v90, scale:I
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getItemCount()I

    move-result v4

    if-nez v4, :cond_f

    .line 217
    :cond_e
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 223
    :cond_f
    aget-boolean v4, v68, v90

    if-nez v4, :cond_10

    .line 224
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getMinX()D

    move-result-wide v81

    .line 225
    .local v81, minimumX:D
    aget-wide v4, v80, v90

    move-wide/from16 v0, v81

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    aput-wide v4, v80, v90

    .line 226
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static/range {v90 .. v90}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v5, 0x0

    aget-wide v10, v80, v90

    aput-wide v10, v4, v5

    .line 228
    .end local v81           #minimumX:D
    :cond_10
    aget-boolean v4, v66, v90

    if-nez v4, :cond_11

    .line 229
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getMaxX()D

    move-result-wide v76

    .line 230
    .local v76, maximumX:D
    aget-wide v4, v74, v90

    move-wide/from16 v0, v76

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    aput-wide v4, v74, v90

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static/range {v90 .. v90}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v5, 0x1

    aget-wide v10, v74, v90

    aput-wide v10, v4, v5

    .line 233
    .end local v76           #maximumX:D
    :cond_11
    aget-boolean v4, v69, v90

    if-nez v4, :cond_12

    .line 234
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getMinY()D

    move-result-wide v83

    .line 235
    .local v83, minimumY:D
    aget-wide v4, v41, v90

    move-wide/from16 v0, v83

    double-to-float v6, v0

    float-to-double v10, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    aput-wide v4, v41, v90

    .line 236
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static/range {v90 .. v90}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v5, 0x2

    aget-wide v10, v41, v90

    aput-wide v10, v4, v5

    .line 238
    .end local v83           #minimumY:D
    :cond_12
    aget-boolean v4, v67, v90

    if-nez v4, :cond_e

    .line 239
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getMaxY()D

    move-result-wide v78

    .line 240
    .local v78, maximumY:D
    aget-wide v4, v75, v90

    move-wide/from16 v0, v78

    double-to-float v6, v0

    float-to-double v10, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    aput-wide v4, v75, v90

    .line 241
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static/range {v90 .. v90}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v5, 0x3

    aget-wide v10, v75, v90

    aput-wide v10, v4, v5

    goto/16 :goto_6

    .line 244
    .end local v14           #series:Lorg/achartengine/model/XYSeries;
    .end local v78           #maximumY:D
    .end local v90           #scale:I
    :cond_13
    const/16 v22, 0x0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, v73

    if-ge v0, v1, :cond_16

    .line 245
    aget-wide v4, v74, v22

    aget-wide v10, v80, v22

    sub-double/2addr v4, v10

    const-wide/16 v10, 0x0

    cmpl-double v4, v4, v10

    if-eqz v4, :cond_14

    .line 246
    sub-int v4, v9, v8

    int-to-double v4, v4

    aget-wide v10, v74, v22

    aget-wide v15, v80, v22

    sub-double/2addr v10, v15

    div-double/2addr v4, v10

    aput-wide v4, v98, v22

    .line 248
    :cond_14
    aget-wide v4, v75, v22

    aget-wide v10, v41, v22

    sub-double/2addr v4, v10

    const-wide/16 v10, 0x0

    cmpl-double v4, v4, v10

    if-eqz v4, :cond_15

    .line 249
    sub-int v4, v61, v95

    int-to-double v4, v4

    aget-wide v10, v75, v22

    aget-wide v15, v41, v22

    sub-double/2addr v10, v15

    div-double/2addr v4, v10

    double-to-float v4, v4

    float-to-double v4, v4

    aput-wide v4, v40, v22

    .line 244
    :cond_15
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 254
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/achartengine/chart/XYChart;->mWifi:Z

    .line 256
    const/16 v64, 0x0

    .line 261
    .local v64, hasValues:Z
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    .line 262
    const/16 v22, 0x0

    :goto_8
    move/from16 v0, v22

    move/from16 v1, v89

    if-ge v0, v1, :cond_1e

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v14

    .line 264
    .restart local v14       #series:Lorg/achartengine/model/XYSeries;
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getScaleNumber()I

    move-result v90

    .line 265
    .restart local v90       #scale:I
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getItemCount()I

    move-result v4

    if-nez v4, :cond_18

    .line 262
    :cond_17
    :goto_9
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 269
    :cond_18
    const/16 v64, 0x1

    .line 270
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v20

    .line 276
    .local v20, seriesRenderer:Lorg/achartengine/renderer/SimpleSeriesRenderer;
    new-instance v85, Ljava/util/ArrayList;

    invoke-direct/range {v85 .. v85}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v85, points:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v97, Ljava/util/ArrayList;

    invoke-direct/range {v97 .. v97}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v97, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v25, yValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    move/from16 v0, v61

    int-to-float v4, v0

    move/from16 v0, v61

    int-to-double v5, v0

    aget-wide v10, v40, v90

    aget-wide v15, v41, v90

    mul-double/2addr v10, v15

    add-double/2addr v5, v10

    double-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 280
    .local v21, yAxisValue:F
    const-string v4, "su"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " yAxisValue::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v62, Ljava/util/LinkedList;

    invoke-direct/range {v62 .. v62}, Ljava/util/LinkedList;-><init>()V

    .line 283
    .local v62, clickableArea:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v62

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    aget-wide v15, v80, v90

    aget-wide v17, v74, v90

    const/16 v19, 0x1

    invoke-virtual/range {v14 .. v19}, Lorg/achartengine/model/XYSeries;->getRange(DDI)Ljava/util/SortedMap;

    move-result-object v86

    .line 286
    .local v86, range:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    const/16 v24, -0x1

    .line 287
    .local v24, startIndex:I
    invoke-interface/range {v86 .. v86}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .local v65, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v96

    check-cast v96, Ljava/util/Map$Entry;

    .line 289
    .local v96, value:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-interface/range {v96 .. v96}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v99

    .line 290
    .local v99, xValue:D
    invoke-interface/range {v96 .. v96}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v102

    .line 291
    .local v102, yValue:D
    invoke-static/range {v102 .. v103}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    if-gez v24, :cond_19

    .line 293
    move-wide/from16 v0, v99

    invoke-virtual {v14, v0, v1}, Lorg/achartengine/model/XYSeries;->getIndexForKey(D)I

    move-result v24

    .line 300
    :cond_19
    invoke-interface/range {v96 .. v96}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v97

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-interface/range {v96 .. v96}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v97

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    const-string v4, "su"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " xValue::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v99

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  yValue:::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v102

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " startIndex:::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    move-object/from16 v0, p0

    move-wide/from16 v1, v102

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/chart/XYChart;->isNullValue(D)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 304
    int-to-double v4, v8

    aget-wide v10, v98, v90

    aget-wide v15, v80, v90

    sub-double v15, v99, v15

    mul-double/2addr v10, v15

    add-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v85

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    move/from16 v0, v61

    int-to-double v4, v0

    aget-wide v10, v40, v90

    aget-wide v15, v41, v90

    sub-double v15, v102, v15

    mul-double/2addr v10, v15

    sub-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v85

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 306
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/achartengine/chart/XYChart;->isRenderNullValues()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 307
    int-to-double v4, v8

    aget-wide v10, v98, v90

    aget-wide v15, v80, v90

    sub-double v15, v99, v15

    mul-double/2addr v10, v15

    add-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v85

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    move/from16 v0, v61

    int-to-double v4, v0

    aget-wide v10, v40, v90

    aget-wide v15, v41, v90

    neg-double v15, v15

    mul-double/2addr v10, v15

    sub-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v85

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 310
    :cond_1b
    invoke-interface/range {v85 .. v85}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1c

    move-object/from16 v15, p0

    move-object/from16 v16, v14

    move-object/from16 v17, p1

    move-object/from16 v18, p6

    move-object/from16 v19, v85

    .line 311
    invoke-virtual/range {v15 .. v25}, Lorg/achartengine/chart/XYChart;->drawSeries(Lorg/achartengine/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FILorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;ILjava/util/List;)V

    .line 313
    invoke-static/range {v85 .. v85}, Lorg/achartengine/util/MathHelper;->getFloats(Ljava/util/List;)[F

    move-result-object v27

    invoke-static/range {v97 .. v97}, Lorg/achartengine/util/MathHelper;->getDoubles(Ljava/util/List;)[D

    move-result-object v28

    move-object/from16 v26, p0

    move/from16 v29, v21

    move/from16 v30, v22

    move/from16 v31, v24

    invoke-virtual/range {v26 .. v31}, Lorg/achartengine/chart/XYChart;->clickableAreasForPoints([F[DFII)[Lorg/achartengine/chart/ClickableArea;

    move-result-object v63

    .line 315
    .local v63, clickableAreasForSubSeries:[Lorg/achartengine/chart/ClickableArea;
    invoke-static/range {v63 .. v63}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 316
    invoke-interface/range {v85 .. v85}, Ljava/util/List;->clear()V

    .line 317
    invoke-interface/range {v97 .. v97}, Ljava/util/List;->clear()V

    .line 319
    .end local v63           #clickableAreasForSubSeries:[Lorg/achartengine/chart/ClickableArea;
    :cond_1c
    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 323
    .end local v96           #value:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v99           #xValue:D
    .end local v102           #yValue:D
    :cond_1d
    invoke-interface/range {v85 .. v85}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_17

    move-object/from16 v15, p0

    move-object/from16 v16, v14

    move-object/from16 v17, p1

    move-object/from16 v18, p6

    move-object/from16 v19, v85

    .line 328
    invoke-virtual/range {v15 .. v25}, Lorg/achartengine/chart/XYChart;->drawSeries(Lorg/achartengine/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FILorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;ILjava/util/List;)V

    .line 329
    invoke-static/range {v85 .. v85}, Lorg/achartengine/util/MathHelper;->getFloats(Ljava/util/List;)[F

    move-result-object v27

    invoke-static/range {v97 .. v97}, Lorg/achartengine/util/MathHelper;->getDoubles(Ljava/util/List;)[D

    move-result-object v28

    move-object/from16 v26, p0

    move/from16 v29, v21

    move/from16 v30, v22

    move/from16 v31, v24

    invoke-virtual/range {v26 .. v31}, Lorg/achartengine/chart/XYChart;->clickableAreasForPoints([F[DFII)[Lorg/achartengine/chart/ClickableArea;

    move-result-object v63

    .line 331
    .restart local v63       #clickableAreasForSubSeries:[Lorg/achartengine/chart/ClickableArea;
    invoke-static/range {v63 .. v63}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9

    .line 335
    .end local v14           #series:Lorg/achartengine/model/XYSeries;
    .end local v20           #seriesRenderer:Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v21           #yAxisValue:F
    .end local v24           #startIndex:I
    .end local v25           #yValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    .end local v62           #clickableArea:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .end local v63           #clickableAreasForSubSeries:[Lorg/achartengine/chart/ClickableArea;
    .end local v65           #i$:Ljava/util/Iterator;
    .end local v85           #points:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .end local v86           #range:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v90           #scale:I
    .end local v97           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    :cond_1e
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/achartengine/chart/XYChart;->mWifi:Z

    .line 336
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    .line 337
    const/16 v22, 0x0

    :goto_b
    move/from16 v0, v22

    move/from16 v1, v89

    if-ge v0, v1, :cond_26

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mDataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v14

    .line 339
    .restart local v14       #series:Lorg/achartengine/model/XYSeries;
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getScaleNumber()I

    move-result v90

    .line 340
    .restart local v90       #scale:I
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getItemCount()I

    move-result v4

    if-nez v4, :cond_20

    .line 337
    :cond_1f
    :goto_c
    add-int/lit8 v22, v22, 0x1

    goto :goto_b

    .line 344
    :cond_20
    const/16 v64, 0x1

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v20

    .line 347
    .restart local v20       #seriesRenderer:Lorg/achartengine/renderer/SimpleSeriesRenderer;
    new-instance v85, Ljava/util/ArrayList;

    invoke-direct/range {v85 .. v85}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .restart local v85       #points:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v97, Ljava/util/ArrayList;

    invoke-direct/range {v97 .. v97}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .restart local v97       #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .restart local v25       #yValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    move/from16 v0, v61

    int-to-float v4, v0

    move/from16 v0, v61

    int-to-double v5, v0

    aget-wide v10, v40, v90

    aget-wide v15, v41, v90

    mul-double/2addr v10, v15

    add-double/2addr v5, v10

    double-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 351
    .restart local v21       #yAxisValue:F
    const-string v4, "su"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " yAxisValue::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v62, Ljava/util/LinkedList;

    invoke-direct/range {v62 .. v62}, Ljava/util/LinkedList;-><init>()V

    .line 354
    .restart local v62       #clickableArea:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v62

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    aget-wide v15, v80, v90

    aget-wide v17, v74, v90

    const/16 v19, 0x1

    invoke-virtual/range {v14 .. v19}, Lorg/achartengine/model/XYSeries;->getRange(DDI)Ljava/util/SortedMap;

    move-result-object v86

    .line 357
    .restart local v86       #range:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    const/16 v24, -0x1

    .line 358
    .restart local v24       #startIndex:I
    invoke-interface/range {v86 .. v86}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .restart local v65       #i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v96

    check-cast v96, Ljava/util/Map$Entry;

    .line 360
    .restart local v96       #value:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-interface/range {v96 .. v96}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v99

    .line 361
    .restart local v99       #xValue:D
    invoke-interface/range {v96 .. v96}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v102

    .line 362
    .restart local v102       #yValue:D
    invoke-static/range {v102 .. v103}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    if-gez v24, :cond_21

    .line 364
    move-wide/from16 v0, v99

    invoke-virtual {v14, v0, v1}, Lorg/achartengine/model/XYSeries;->getIndexForKey(D)I

    move-result v24

    .line 367
    :cond_21
    invoke-interface/range {v96 .. v96}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v97

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-interface/range {v96 .. v96}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v97

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    const-string v4, "su"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " xValue::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v99

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  yValue:::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v102

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " startIndex:::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    move-object/from16 v0, p0

    move-wide/from16 v1, v102

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/chart/XYChart;->isNullValue(D)Z

    move-result v4

    if-nez v4, :cond_22

    .line 371
    int-to-double v4, v8

    aget-wide v10, v98, v90

    aget-wide v15, v80, v90

    sub-double v15, v99, v15

    mul-double/2addr v10, v15

    add-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v85

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    move/from16 v0, v61

    int-to-double v4, v0

    aget-wide v10, v40, v90

    aget-wide v15, v41, v90

    sub-double v15, v102, v15

    mul-double/2addr v10, v15

    sub-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v85

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 373
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lorg/achartengine/chart/XYChart;->isRenderNullValues()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 374
    int-to-double v4, v8

    aget-wide v10, v98, v90

    aget-wide v15, v80, v90

    sub-double v15, v99, v15

    mul-double/2addr v10, v15

    add-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v85

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    move/from16 v0, v61

    int-to-double v4, v0

    aget-wide v10, v40, v90

    aget-wide v15, v41, v90

    neg-double v15, v15

    mul-double/2addr v10, v15

    sub-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v85

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 377
    :cond_23
    invoke-interface/range {v85 .. v85}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_24

    move-object/from16 v15, p0

    move-object/from16 v16, v14

    move-object/from16 v17, p1

    move-object/from16 v18, p6

    move-object/from16 v19, v85

    .line 378
    invoke-virtual/range {v15 .. v25}, Lorg/achartengine/chart/XYChart;->drawSeries(Lorg/achartengine/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FILorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;ILjava/util/List;)V

    .line 380
    invoke-static/range {v85 .. v85}, Lorg/achartengine/util/MathHelper;->getFloats(Ljava/util/List;)[F

    move-result-object v27

    invoke-static/range {v97 .. v97}, Lorg/achartengine/util/MathHelper;->getDoubles(Ljava/util/List;)[D

    move-result-object v28

    move-object/from16 v26, p0

    move/from16 v29, v21

    move/from16 v30, v22

    move/from16 v31, v24

    invoke-virtual/range {v26 .. v31}, Lorg/achartengine/chart/XYChart;->clickableAreasForPoints([F[DFII)[Lorg/achartengine/chart/ClickableArea;

    move-result-object v63

    .line 382
    .restart local v63       #clickableAreasForSubSeries:[Lorg/achartengine/chart/ClickableArea;
    invoke-static/range {v63 .. v63}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 383
    invoke-interface/range {v85 .. v85}, Ljava/util/List;->clear()V

    .line 384
    invoke-interface/range {v97 .. v97}, Ljava/util/List;->clear()V

    .line 386
    .end local v63           #clickableAreasForSubSeries:[Lorg/achartengine/chart/ClickableArea;
    :cond_24
    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 390
    .end local v96           #value:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v99           #xValue:D
    .end local v102           #yValue:D
    :cond_25
    invoke-interface/range {v85 .. v85}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1f

    move-object/from16 v15, p0

    move-object/from16 v16, v14

    move-object/from16 v17, p1

    move-object/from16 v18, p6

    move-object/from16 v19, v85

    .line 391
    invoke-virtual/range {v15 .. v25}, Lorg/achartengine/chart/XYChart;->drawSeries(Lorg/achartengine/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FILorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;ILjava/util/List;)V

    .line 392
    invoke-static/range {v85 .. v85}, Lorg/achartengine/util/MathHelper;->getFloats(Ljava/util/List;)[F

    move-result-object v27

    invoke-static/range {v97 .. v97}, Lorg/achartengine/util/MathHelper;->getDoubles(Ljava/util/List;)[D

    move-result-object v28

    move-object/from16 v26, p0

    move/from16 v29, v21

    move/from16 v30, v22

    move/from16 v31, v24

    invoke-virtual/range {v26 .. v31}, Lorg/achartengine/chart/XYChart;->clickableAreasForPoints([F[DFII)[Lorg/achartengine/chart/ClickableArea;

    move-result-object v63

    .line 394
    .restart local v63       #clickableAreasForSubSeries:[Lorg/achartengine/chart/ClickableArea;
    invoke-static/range {v63 .. v63}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_c

    .line 400
    .end local v14           #series:Lorg/achartengine/model/XYSeries;
    .end local v20           #seriesRenderer:Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v21           #yAxisValue:F
    .end local v24           #startIndex:I
    .end local v25           #yValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    .end local v62           #clickableArea:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .end local v63           #clickableAreasForSubSeries:[Lorg/achartengine/chart/ClickableArea;
    .end local v65           #i$:Ljava/util/Iterator;
    .end local v85           #points:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .end local v86           #range:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v90           #scale:I
    .end local v97           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/XYChart;->yCoorBottomOffset:I

    sub-int v30, v61, v4

    sub-int v4, p5, v61

    move-object/from16 v0, p0

    iget v5, v0, Lorg/achartengine/chart/XYChart;->yCoorMarginBottom:I

    add-int v32, v4, v5

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v35

    move-object/from16 v26, p0

    move-object/from16 v28, p1

    move/from16 v29, p2

    move/from16 v31, p4

    move-object/from16 v33, p6

    invoke-virtual/range {v26 .. v35}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/XYChart;->yCoorBottomOffset:I

    sub-int v30, p3, v4

    const/4 v4, 0x0

    aget v4, v72, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/achartengine/chart/XYChart;->yCoorMarginBottom:I

    add-int v32, v4, v5

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v35

    move-object/from16 v26, p0

    move-object/from16 v28, p1

    move/from16 v29, p2

    move/from16 v31, p4

    move-object/from16 v33, p6

    invoke-virtual/range {v26 .. v35}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 403
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_2b

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v27, v0

    sub-int v31, v8, p2

    sub-int v32, p5, p3

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v35

    move-object/from16 v26, p0

    move-object/from16 v28, p1

    move/from16 v29, p2

    move/from16 v30, p3

    move-object/from16 v33, p6

    invoke-virtual/range {v26 .. v35}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v27, v0

    const/4 v4, 0x3

    aget v31, v72, v4

    sub-int v32, p5, p3

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v35

    move-object/from16 v26, p0

    move-object/from16 v28, p1

    move/from16 v29, v9

    move/from16 v30, p3

    move-object/from16 v33, p6

    invoke-virtual/range {v26 .. v35}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 413
    :cond_27
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v4

    if-eqz v4, :cond_2c

    if-eqz v64, :cond_2c

    const/16 v93, 0x1

    .line 414
    .local v93, showLabels:Z
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowGridX()Z

    move-result v92

    .line 415
    .local v92, showGridX:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowCustomTextGrid()Z

    move-result v91

    .line 416
    .local v91, showCustomTextGrid:Z
    if-nez v93, :cond_28

    if-eqz v92, :cond_33

    .line 417
    :cond_28
    const/4 v4, 0x0

    aget-wide v27, v80, v4

    const/4 v4, 0x0

    aget-wide v29, v74, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabels()I

    move-result v31

    move-object/from16 v26, p0

    invoke-virtual/range {v26 .. v31}, Lorg/achartengine/chart/XYChart;->getXLabels(DDI)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/achartengine/chart/XYChart;->getValidLabels(Ljava/util/List;)Ljava/util/List;

    move-result-object v27

    .line 418
    .local v27, xLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v75

    move/from16 v3, v73

    invoke-virtual {v0, v1, v2, v3}, Lorg/achartengine/chart/XYChart;->getYLabels([D[DI)Ljava/util/Map;

    move-result-object v57

    .line 420
    .local v57, allYLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    move/from16 v31, v8

    .line 421
    .local v31, xLabelsLeft:I
    if-eqz v93, :cond_29

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v4, v5, :cond_29

    .line 426
    move/from16 v0, v31

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v5

    const/high16 v6, 0x4080

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v31, v0

    .line 430
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTextLabelLocations()[Ljava/lang/Double;

    move-result-object v28

    const/4 v4, 0x0

    aget-wide v34, v98, v4

    const/4 v4, 0x0

    aget-wide v36, v80, v4

    const/4 v4, 0x0

    aget-wide v38, v74, v4

    move-object/from16 v26, p0

    move-object/from16 v29, p1

    move-object/from16 v30, p6

    move/from16 v32, v95

    move/from16 v33, v61

    invoke-virtual/range {v26 .. v39}, Lorg/achartengine/chart/XYChart;->drawXLabels(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V

    move-object/from16 v32, p0

    move-object/from16 v33, v57

    move-object/from16 v34, p1

    move-object/from16 v35, p6

    move/from16 v36, v73

    move/from16 v37, v8

    move/from16 v38, v9

    move/from16 v39, v61

    .line 432
    invoke-virtual/range {v32 .. v41}, Lorg/achartengine/chart/XYChart;->drawYLabels(Ljava/util/Map;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII[D[D)V

    .line 433
    const-string v4, "xxxx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "###### showLabels::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v93

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    if-eqz v93, :cond_30

    .line 435
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    const/16 v22, 0x0

    :goto_10
    move/from16 v0, v22

    move/from16 v1, v73

    if-ge v0, v1, :cond_30

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v60

    .line 438
    .local v60, axisAlign:Landroid/graphics/Paint$Align;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTextLabelLocations(I)[Ljava/lang/Double;

    move-result-object v101

    .line 439
    .local v101, yTextLabelLocations:[Ljava/lang/Double;
    move-object/from16 v59, v101

    .local v59, arr$:[Ljava/lang/Double;
    move-object/from16 v0, v59

    array-length v0, v0

    move/from16 v70, v0

    .local v70, len$:I
    const/16 v65, 0x0

    .local v65, i$:I
    :goto_11
    move/from16 v0, v65

    move/from16 v1, v70

    if-ge v0, v1, :cond_2f

    aget-object v71, v59, v65

    .line 440
    .local v71, location:Ljava/lang/Double;
    aget-wide v4, v41, v22

    invoke-virtual/range {v71 .. v71}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpg-double v4, v4, v10

    if-gtz v4, :cond_2a

    invoke-virtual/range {v71 .. v71}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aget-wide v10, v75, v22

    cmpg-double v4, v4, v10

    if-gtz v4, :cond_2a

    .line 441
    move/from16 v0, v61

    int-to-double v4, v0

    aget-wide v10, v40, v22

    invoke-virtual/range {v71 .. v71}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    aget-wide v17, v41, v22

    sub-double v15, v15, v17

    mul-double/2addr v10, v15

    sub-double/2addr v4, v10

    double-to-float v0, v4

    move/from16 v34, v0

    .line 442
    .local v34, yLabel:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v0, v71

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTextLabel(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v44

    .line 443
    .local v44, label:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsColor(I)I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 444
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 445
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_2e

    .line 446
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v60

    if-ne v0, v4, :cond_2d

    .line 447
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v4

    add-int/2addr v4, v8

    int-to-float v0, v4

    move/from16 v33, v0

    int-to-float v0, v8

    move/from16 v35, v0

    move-object/from16 v32, p1

    move/from16 v36, v34

    move-object/from16 v37, p6

    invoke-virtual/range {v32 .. v37}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 448
    int-to-float v0, v8

    move/from16 v45, v0

    const/high16 v4, 0x4000

    sub-float v46, v34, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v48

    move-object/from16 v42, p0

    move-object/from16 v43, p1

    move-object/from16 v47, p6

    invoke-virtual/range {v42 .. v48}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 454
    :goto_12
    if-eqz v91, :cond_2a

    .line 455
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 456
    int-to-float v0, v8

    move/from16 v33, v0

    int-to-float v0, v9

    move/from16 v35, v0

    move-object/from16 v32, p1

    move/from16 v36, v34

    move-object/from16 v37, p6

    invoke-virtual/range {v32 .. v37}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 439
    .end local v34           #yLabel:F
    .end local v44           #label:Ljava/lang/String;
    :cond_2a
    :goto_13
    add-int/lit8 v65, v65, 0x1

    goto/16 :goto_11

    .line 407
    .end local v27           #xLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    .end local v31           #xLabelsLeft:I
    .end local v57           #allYLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    .end local v59           #arr$:[Ljava/lang/Double;
    .end local v60           #axisAlign:Landroid/graphics/Paint$Align;
    .end local v65           #i$:I
    .end local v70           #len$:I
    .end local v71           #location:Ljava/lang/Double;
    .end local v91           #showCustomTextGrid:Z
    .end local v92           #showGridX:Z
    .end local v93           #showLabels:Z
    .end local v101           #yTextLabelLocations:[Ljava/lang/Double;
    :cond_2b
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_27

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v27, v0

    sub-int v31, p4, v9

    sub-int v32, p5, p3

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v35

    move-object/from16 v26, p0

    move-object/from16 v28, p1

    move/from16 v29, v9

    move/from16 v30, p3

    move-object/from16 v33, p6

    invoke-virtual/range {v26 .. v35}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v27, v0

    sub-int v31, v8, p2

    sub-int v32, p5, p3

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v35

    move-object/from16 v26, p0

    move-object/from16 v28, p1

    move/from16 v29, p2

    move/from16 v30, p3

    move-object/from16 v33, p6

    invoke-virtual/range {v26 .. v35}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    goto/16 :goto_e

    .line 413
    :cond_2c
    const/16 v93, 0x0

    goto/16 :goto_f

    .line 450
    .restart local v27       #xLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v31       #xLabelsLeft:I
    .restart local v34       #yLabel:F
    .restart local v44       #label:Ljava/lang/String;
    .restart local v57       #allYLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    .restart local v59       #arr$:[Ljava/lang/Double;
    .restart local v60       #axisAlign:Landroid/graphics/Paint$Align;
    .restart local v65       #i$:I
    .restart local v70       #len$:I
    .restart local v71       #location:Ljava/lang/Double;
    .restart local v91       #showCustomTextGrid:Z
    .restart local v92       #showGridX:Z
    .restart local v93       #showLabels:Z
    .restart local v101       #yTextLabelLocations:[Ljava/lang/Double;
    :cond_2d
    int-to-float v0, v9

    move/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v4

    add-int/2addr v4, v9

    int-to-float v0, v4

    move/from16 v35, v0

    move-object/from16 v32, p1

    move/from16 v36, v34

    move-object/from16 v37, p6

    invoke-virtual/range {v32 .. v37}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 451
    int-to-float v0, v9

    move/from16 v45, v0

    const/high16 v4, 0x4000

    sub-float v46, v34, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v48

    move-object/from16 v42, p0

    move-object/from16 v43, p1

    move-object/from16 v47, p6

    invoke-virtual/range {v42 .. v48}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto/16 :goto_12

    .line 459
    :cond_2e
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v4

    sub-int v4, v9, v4

    int-to-float v0, v4

    move/from16 v33, v0

    int-to-float v0, v9

    move/from16 v35, v0

    move-object/from16 v32, p1

    move/from16 v36, v34

    move-object/from16 v37, p6

    invoke-virtual/range {v32 .. v37}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 460
    add-int/lit8 v4, v9, 0xa

    int-to-float v0, v4

    move/from16 v45, v0

    const/high16 v4, 0x4000

    sub-float v46, v34, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v48

    move-object/from16 v42, p0

    move-object/from16 v43, p1

    move-object/from16 v47, p6

    invoke-virtual/range {v42 .. v48}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 461
    if-eqz v91, :cond_2a

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 463
    int-to-float v0, v9

    move/from16 v33, v0

    int-to-float v0, v8

    move/from16 v35, v0

    move-object/from16 v32, p1

    move/from16 v36, v34

    move-object/from16 v37, p6

    invoke-virtual/range {v32 .. v37}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_13

    .line 436
    .end local v34           #yLabel:F
    .end local v44           #label:Ljava/lang/String;
    .end local v71           #location:Ljava/lang/Double;
    :cond_2f
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_10

    .line 471
    .end local v59           #arr$:[Ljava/lang/Double;
    .end local v60           #axisAlign:Landroid/graphics/Paint$Align;
    .end local v65           #i$:I
    .end local v70           #len$:I
    .end local v101           #yTextLabelLocations:[Ljava/lang/Double;
    :cond_30
    if-eqz v93, :cond_33

    .line 472
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 473
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getAxisTitleTextSize()F

    move-result v94

    .line 474
    .local v94, size:F
    move-object/from16 v0, p6

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 475
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 476
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_35

    .line 477
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTitle()Ljava/lang/String;

    move-result-object v47

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v0, v4

    move/from16 v48, v0

    move/from16 v0, v61

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v5

    const/high16 v6, 0x4080

    mul-float/2addr v5, v6

    const/high16 v6, 0x4040

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float v49, v4, v94

    const/16 v51, 0x0

    move-object/from16 v45, p0

    move-object/from16 v46, p1

    move-object/from16 v50, p6

    invoke-virtual/range {v45 .. v51}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 479
    const/16 v22, 0x0

    :goto_14
    move/from16 v0, v22

    move/from16 v1, v73

    if-ge v0, v1, :cond_32

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v60

    .line 481
    .restart local v60       #axisAlign:Landroid/graphics/Paint$Align;
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v60

    if-ne v0, v4, :cond_31

    .line 482
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTitle(I)Ljava/lang/String;

    move-result-object v47

    move/from16 v0, p2

    int-to-float v4, v0

    add-float v48, v4, v94

    div-int/lit8 v4, p5, 0x2

    add-int v4, v4, p3

    int-to-float v0, v4

    move/from16 v49, v0

    const/high16 v51, -0x3d4c

    move-object/from16 v45, p0

    move-object/from16 v46, p1

    move-object/from16 v50, p6

    invoke-virtual/range {v45 .. v51}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 479
    :goto_15
    add-int/lit8 v22, v22, 0x1

    goto :goto_14

    .line 484
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTitle(I)Ljava/lang/String;

    move-result-object v47

    add-int v4, p2, p4

    int-to-float v0, v4

    move/from16 v48, v0

    div-int/lit8 v4, p5, 0x2

    add-int v4, v4, p3

    int-to-float v0, v4

    move/from16 v49, v0

    const/high16 v51, -0x3d4c

    move-object/from16 v45, p0

    move-object/from16 v46, p1

    move-object/from16 v50, p6

    invoke-virtual/range {v45 .. v51}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_15

    .line 487
    .end local v60           #axisAlign:Landroid/graphics/Paint$Align;
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitle()Ljava/lang/String;

    move-result-object v47

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v0, v4

    move/from16 v48, v0

    move/from16 v0, p3

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v5

    add-float v49, v4, v5

    const/16 v51, 0x0

    move-object/from16 v45, p0

    move-object/from16 v46, p1

    move-object/from16 v50, p6

    invoke-virtual/range {v45 .. v51}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 498
    .end local v27           #xLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    .end local v31           #xLabelsLeft:I
    .end local v57           #allYLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    .end local v94           #size:F
    :cond_33
    :goto_16
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_36

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v47, v0

    const/16 v56, 0x0

    move-object/from16 v45, p0

    move-object/from16 v46, p1

    move-object/from16 v48, v7

    move/from16 v49, v8

    move/from16 v50, v9

    move/from16 v51, p3

    move/from16 v52, p4

    move/from16 v53, p5

    move/from16 v54, v13

    move-object/from16 v55, p6

    invoke-virtual/range {v45 .. v56}, Lorg/achartengine/chart/XYChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    .line 505
    :cond_34
    :goto_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowAxes()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 506
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getAxesColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 507
    int-to-float v0, v8

    move/from16 v46, v0

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v47, v0

    int-to-float v0, v9

    move/from16 v48, v0

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v49, v0

    move-object/from16 v45, p1

    move-object/from16 v50, p6

    invoke-virtual/range {v45 .. v50}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 508
    const/16 v87, 0x0

    .line 509
    .local v87, rightAxis:Z
    const/16 v22, 0x0

    :goto_18
    move/from16 v0, v22

    move/from16 v1, v73

    if-ge v0, v1, :cond_38

    if-nez v87, :cond_38

    .line 510
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v4, v5, :cond_37

    const/16 v87, 0x1

    .line 509
    :goto_19
    add-int/lit8 v22, v22, 0x1

    goto :goto_18

    .line 490
    .end local v87           #rightAxis:Z
    .restart local v27       #xLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v31       #xLabelsLeft:I
    .restart local v57       #allYLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    .restart local v94       #size:F
    :cond_35
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_33

    .line 491
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTitle()Ljava/lang/String;

    move-result-object v47

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v0, v4

    move/from16 v48, v0

    add-int v4, p3, p5

    int-to-float v4, v4

    sub-float v49, v4, v94

    const/high16 v51, -0x3d4c

    move-object/from16 v45, p0

    move-object/from16 v46, p1

    move-object/from16 v50, p6

    invoke-virtual/range {v45 .. v51}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTitle()Ljava/lang/String;

    move-result-object v47

    add-int/lit8 v4, v9, 0x14

    int-to-float v0, v4

    move/from16 v48, v0

    div-int/lit8 v4, p5, 0x2

    add-int v4, v4, p3

    int-to-float v0, v4

    move/from16 v49, v0

    const/16 v51, 0x0

    move-object/from16 v45, p0

    move-object/from16 v46, p1

    move-object/from16 v50, p6

    invoke-virtual/range {v45 .. v51}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 493
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 494
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitle()Ljava/lang/String;

    move-result-object v47

    move/from16 v0, p2

    int-to-float v4, v0

    add-float v48, v4, v94

    div-int/lit8 v4, p5, 0x2

    add-int v4, v4, v95

    int-to-float v0, v4

    move/from16 v49, v0

    const/16 v51, 0x0

    move-object/from16 v45, p0

    move-object/from16 v46, p1

    move-object/from16 v50, p6

    invoke-virtual/range {v45 .. v51}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto/16 :goto_16

    .line 500
    .end local v27           #xLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    .end local v31           #xLabelsLeft:I
    .end local v57           #allYLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    .end local v94           #size:F
    :cond_36
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_34

    .line 501
    move/from16 v0, v58

    int-to-float v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lorg/achartengine/chart/XYChart;->transform(Landroid/graphics/Canvas;FZ)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v47, v0

    const/16 v56, 0x0

    move-object/from16 v45, p0

    move-object/from16 v46, p1

    move-object/from16 v48, v7

    move/from16 v49, v8

    move/from16 v50, v9

    move/from16 v51, p3

    move/from16 v52, p4

    move/from16 v53, p5

    move/from16 v54, v13

    move-object/from16 v55, p6

    invoke-virtual/range {v45 .. v56}, Lorg/achartengine/chart/XYChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    .line 503
    move/from16 v0, v58

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lorg/achartengine/chart/XYChart;->transform(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_17

    .line 510
    .restart local v87       #rightAxis:Z
    :cond_37
    const/16 v87, 0x0

    goto/16 :goto_19

    .line 512
    :cond_38
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_3a

    .line 513
    int-to-float v0, v8

    move/from16 v46, v0

    move/from16 v0, v95

    int-to-float v0, v0

    move/from16 v47, v0

    int-to-float v0, v8

    move/from16 v48, v0

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v49, v0

    move-object/from16 v45, p1

    move-object/from16 v50, p6

    invoke-virtual/range {v45 .. v50}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 514
    if-eqz v87, :cond_39

    .line 515
    int-to-float v0, v9

    move/from16 v46, v0

    move/from16 v0, v95

    int-to-float v0, v0

    move/from16 v47, v0

    int-to-float v0, v9

    move/from16 v48, v0

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v49, v0

    move-object/from16 v45, p1

    move-object/from16 v50, p6

    invoke-virtual/range {v45 .. v50}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 521
    .end local v87           #rightAxis:Z
    :cond_39
    :goto_1a
    if-eqz v88, :cond_a

    .line 522
    move/from16 v0, v58

    int-to-float v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lorg/achartengine/chart/XYChart;->transform(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_3

    .line 517
    .restart local v87       #rightAxis:Z
    :cond_3a
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_39

    .line 518
    int-to-float v0, v9

    move/from16 v46, v0

    move/from16 v0, v95

    int-to-float v0, v0

    move/from16 v47, v0

    int-to-float v0, v9

    move/from16 v48, v0

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v49, v0

    move-object/from16 v45, p1

    move-object/from16 v50, p6

    invoke-virtual/range {v45 .. v50}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1a
.end method

.method protected drawChartValuesText(Landroid/graphics/Canvas;Lorg/achartengine/model/XYSeries;Lorg/achartengine/renderer/SimpleSeriesRenderer;Landroid/graphics/Paint;[FII)V
    .locals 8
    .parameter "canvas"
    .parameter "series"
    .parameter "renderer"
    .parameter "paint"
    .parameter "points"
    .parameter "seriesIndex"
    .parameter "startIndex"

    .prologue
    .line 649
    const/4 v7, 0x0

    .local v7, k:I
    :goto_0
    array-length v0, p5

    if-ge v7, v0, :cond_0

    .line 650
    div-int/lit8 v0, v7, 0x2

    add-int/2addr v0, p7

    invoke-virtual {p2, v0}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/achartengine/chart/XYChart;->getLabel(D)Ljava/lang/String;

    move-result-object v2

    aget v3, p5, v7

    add-int/lit8 v0, v7, 0x1

    aget v0, p5, v0

    invoke-virtual {p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesSpacing()F

    move-result v1

    sub-float v4, v0, v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 649
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 653
    :cond_0
    return-void
.end method

.method public abstract drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FLorg/achartengine/renderer/SimpleSeriesRenderer;FIILjava/util/List;)V
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
.end method

.method protected drawSeries(Lorg/achartengine/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FILorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;ILjava/util/List;)V
    .locals 26
    .parameter "series"
    .parameter "canvas"
    .parameter "paint"
    .parameter
    .parameter "seriesRenderer"
    .parameter "yAxisValue"
    .parameter "seriesIndex"
    .parameter "or"
    .parameter "startIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/achartengine/model/XYSeries;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lorg/achartengine/renderer/SimpleSeriesRenderer;",
            "FI",
            "Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 581
    .local p4, pointsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .local p10, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getStroke()Lorg/achartengine/renderer/BasicStroke;

    move-result-object v24

    .line 582
    .local v24, stroke:Lorg/achartengine/renderer/BasicStroke;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v20

    .line 583
    .local v20, cap:Landroid/graphics/Paint$Cap;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v21

    .line 584
    .local v21, join:Landroid/graphics/Paint$Join;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result v22

    .line 585
    .local v22, miter:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v23

    .line 586
    .local v23, pathEffect:Landroid/graphics/PathEffect;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v25

    .line 587
    .local v25, style:Landroid/graphics/Paint$Style;
    if-eqz v24, :cond_1

    .line 588
    const/4 v7, 0x0

    .line 589
    .local v7, effect:Landroid/graphics/PathEffect;
    invoke-virtual/range {v24 .. v24}, Lorg/achartengine/renderer/BasicStroke;->getIntervals()[F

    move-result-object v2

    if-eqz v2, :cond_0

    .line 590
    new-instance v7, Landroid/graphics/DashPathEffect;

    .end local v7           #effect:Landroid/graphics/PathEffect;
    invoke-virtual/range {v24 .. v24}, Lorg/achartengine/renderer/BasicStroke;->getIntervals()[F

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Lorg/achartengine/renderer/BasicStroke;->getPhase()F

    move-result v3

    invoke-direct {v7, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 592
    .restart local v7       #effect:Landroid/graphics/PathEffect;
    :cond_0
    invoke-virtual/range {v24 .. v24}, Lorg/achartengine/renderer/BasicStroke;->getCap()Landroid/graphics/Paint$Cap;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Lorg/achartengine/renderer/BasicStroke;->getJoin()Landroid/graphics/Paint$Join;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lorg/achartengine/renderer/BasicStroke;->getMiter()F

    move-result v5

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v2, p0

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lorg/achartengine/chart/XYChart;->setStroke(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .line 594
    .end local v7           #effect:Landroid/graphics/PathEffect;
    :cond_1
    invoke-static/range {p4 .. p4}, Lorg/achartengine/util/MathHelper;->getFloats(Ljava/util/List;)[F

    move-result-object v11

    .line 595
    .local v11, points:[F
    const-string v2, "suzaiqiang"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pointsList:::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "__seriesRenderer.isDisplayChartValues():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->isDisplayChartValues()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p9

    move-object/from16 v16, p10

    .line 598
    invoke-virtual/range {v8 .. v16}, Lorg/achartengine/chart/XYChart;->drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FLorg/achartengine/renderer/SimpleSeriesRenderer;FIILjava/util/List;)V

    .line 599
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/achartengine/chart/XYChart;->isRenderPoints(Lorg/achartengine/renderer/SimpleSeriesRenderer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 600
    invoke-virtual/range {p0 .. p0}, Lorg/achartengine/chart/XYChart;->getPointsChart()Lorg/achartengine/chart/ScatterChart;

    move-result-object v8

    .line 601
    .local v8, pointsChart:Lorg/achartengine/chart/ScatterChart;
    if-eqz v8, :cond_2

    .line 602
    const/16 v16, 0x0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p9

    invoke-virtual/range {v8 .. v16}, Lorg/achartengine/chart/ScatterChart;->drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FLorg/achartengine/renderer/SimpleSeriesRenderer;FIILjava/util/List;)V

    .line 606
    .end local v8           #pointsChart:Lorg/achartengine/chart/ScatterChart;
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesTextSize()F

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 607
    sget-object v2, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, p8

    if-ne v0, v2, :cond_5

    .line 608
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 612
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->isDisplayChartValues()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 613
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p1

    move-object/from16 v15, p5

    move-object/from16 v16, p3

    move-object/from16 v17, v11

    move/from16 v18, p7

    move/from16 v19, p9

    .line 614
    invoke-virtual/range {v12 .. v19}, Lorg/achartengine/chart/XYChart;->drawChartValuesText(Landroid/graphics/Canvas;Lorg/achartengine/model/XYSeries;Lorg/achartengine/renderer/SimpleSeriesRenderer;Landroid/graphics/Paint;[FII)V

    .line 616
    :cond_3
    if-eqz v24, :cond_4

    move-object/from16 v12, p0

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move/from16 v15, v22

    move-object/from16 v16, v25

    move-object/from16 v17, v23

    move-object/from16 v18, p3

    .line 617
    invoke-direct/range {v12 .. v18}, Lorg/achartengine/chart/XYChart;->setStroke(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .line 619
    :cond_4
    return-void

    .line 610
    :cond_5
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0
.end method

.method protected drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V
    .locals 3
    .parameter "canvas"
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "paint"
    .parameter "extraAngle"

    .prologue
    const/4 v2, 0x0

    .line 672
    if-eqz p2, :cond_1

    .line 673
    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getOrientation()Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->getAngle()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    add-float v0, v1, p6

    .line 674
    .local v0, angle:F
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_0

    .line 675
    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 677
    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 678
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_1

    .line 679
    neg-float v1, v0

    invoke-virtual {p1, v1, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 682
    .end local v0           #angle:F
    :cond_1
    return-void
.end method

.method protected drawXLabels(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V
    .locals 25
    .parameter
    .parameter "xTextLabelLocations"
    .parameter "canvas"
    .parameter "paint"
    .parameter "left"
    .parameter "top"
    .parameter "bottom"
    .parameter "xPixelsPerUnit"
    .parameter "minX"
    .parameter "maxX"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;[",
            "Ljava/lang/Double;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "IIIDDD)V"
        }
    .end annotation

    .prologue
    .line 765
    .local p1, xLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    .line 766
    .local v22, length:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v24

    .line 767
    .local v24, showLabels:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowGridY()Z

    move-result v23

    .line 768
    .local v23, showGridY:Z
    const-string v3, "ChartView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "###### showLabels= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " showGridY= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "__length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 770
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    .line 771
    .local v20, label:D
    move/from16 v0, p5

    int-to-double v5, v0

    sub-double v7, v20, p10

    mul-double v7, v7, p8

    add-double/2addr v5, v7

    double-to-float v4, v5

    .line 772
    .local v4, xLabel:F
    if-eqz v24, :cond_0

    .line 773
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 774
    move/from16 v0, p7

    int-to-float v5, v0

    move/from16 v0, p7

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v6

    const/high16 v7, 0x4040

    div-float/2addr v6, v7

    add-float v7, v3, v6

    move-object/from16 v3, p3

    move v6, v4

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 775
    const-string v3, "ChartView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "###### i= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " label= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/chart/XYChart;->getLabel(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/chart/XYChart;->getLabel(D)Ljava/lang/String;

    move-result-object v7

    move/from16 v0, p7

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v5

    const/high16 v6, 0x4080

    mul-float/2addr v5, v6

    const/high16 v6, 0x4040

    div-float/2addr v5, v6

    add-float v9, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAngle()F

    move-result v11

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move v8, v4

    move-object/from16 v10, p4

    invoke-virtual/range {v5 .. v11}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 779
    :cond_0
    if-eqz v23, :cond_1

    .line 780
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 781
    move/from16 v0, p7

    int-to-float v5, v0

    move/from16 v0, p6

    int-to-float v7, v0

    move-object/from16 v3, p3

    move v6, v4

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 769
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .end local v4           #xLabel:F
    .end local v20           #label:D
    :cond_2
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, v24

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-wide/from16 v13, p8

    move-wide/from16 v15, p10

    move-wide/from16 v17, p12

    .line 784
    invoke-virtual/range {v5 .. v18}, Lorg/achartengine/chart/XYChart;->drawXTextLabels([Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;ZIIIDDD)V

    .line 785
    return-void
.end method

.method protected drawXTextLabels([Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;ZIIIDDD)V
    .locals 19
    .parameter "xTextLabelLocations"
    .parameter "canvas"
    .parameter "paint"
    .parameter "showLabels"
    .parameter "left"
    .parameter "top"
    .parameter "bottom"
    .parameter "xPixelsPerUnit"
    .parameter "minX"
    .parameter "maxX"

    .prologue
    .line 879
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowCustomTextGrid()Z

    move-result v18

    .line 882
    .local v18, showCustomTextGrid:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 883
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 884
    move-object/from16 v12, p1

    .local v12, arr$:[Ljava/lang/Double;
    array-length v0, v12

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    aget-object v17, v12, v15

    .line 885
    .local v17, location:Ljava/lang/Double;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v1, p10, v3

    if-gtz v1, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v1, v3, p12

    if-gtz v1, :cond_3

    .line 886
    move/from16 v0, p5

    int-to-double v3, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double v6, v6, p10

    mul-double v6, v6, p8

    add-double/2addr v3, v6

    double-to-float v2, v3

    .line 887
    .local v2, xLabel:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 889
    move-object/from16 v0, p0

    iget v1, v0, Lorg/achartengine/chart/XYChart;->yCoorBottomOffset:I

    sub-int v1, p7, v1

    int-to-float v3, v1

    move/from16 v0, p7

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v4

    const/high16 v6, 0x4040

    div-float/2addr v4, v6

    add-float/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/XYChart;->yCoorBottomOffset:I

    int-to-float v4, v4

    sub-float v5, v1, v4

    move-object/from16 v1, p2

    move v4, v2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 891
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTextLabel(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p7

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v3

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/achartengine/chart/XYChart;->yCoorBottomOffset:I

    int-to-float v3, v3

    sub-float v7, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAngle()F

    move-result v9

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move v6, v2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 893
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTextLabel(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 894
    .local v5, weekDay:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->weekDays:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->weekDays:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    :cond_0
    const-string v1, "#ffba0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 898
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTextLabel(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v14

    .line 899
    .local v14, drawDate:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 900
    .local v13, calendar:Ljava/util/Calendar;
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getMonthAndDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 902
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a0537

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 920
    :cond_2
    :goto_1
    move/from16 v0, p7

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v3

    const/high16 v4, 0x40e0

    mul-float/2addr v3, v4

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/achartengine/chart/XYChart;->yCoorBottomOffset:I

    int-to-float v3, v3

    sub-float v7, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAngle()F

    move-result v9

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move v6, v2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 923
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 924
    if-eqz v18, :cond_3

    .line 925
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 926
    move/from16 v0, p7

    int-to-float v8, v0

    move/from16 v0, p6

    int-to-float v10, v0

    move-object/from16 v6, p2

    move v7, v2

    move v9, v2

    move-object/from16 v11, p3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 884
    .end local v2           #xLabel:F
    .end local v5           #weekDay:Ljava/lang/String;
    .end local v13           #calendar:Ljava/util/Calendar;
    .end local v14           #drawDate:Ljava/lang/String;
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 905
    .restart local v2       #xLabel:F
    .restart local v5       #weekDay:Ljava/lang/String;
    .restart local v13       #calendar:Ljava/util/Calendar;
    .restart local v14       #drawDate:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x5

    const/4 v3, 0x1

    invoke-virtual {v13, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 906
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getMonthAndDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 908
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a0538

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 911
    :cond_5
    const/4 v1, 0x5

    const/4 v3, -0x2

    invoke-virtual {v13, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 912
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getMonthAndDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 914
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a0539

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 931
    .end local v2           #xLabel:F
    .end local v5           #weekDay:Ljava/lang/String;
    .end local v13           #calendar:Ljava/util/Calendar;
    .end local v14           #drawDate:Ljava/lang/String;
    .end local v17           #location:Ljava/lang/Double;
    :cond_6
    return-void
.end method

.method protected drawYLabels(Ljava/util/Map;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII[D[D)V
    .locals 22
    .parameter
    .parameter "canvas"
    .parameter "paint"
    .parameter "maxScaleNumber"
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "yPixelsPerUnit"
    .parameter "minY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "IIII[D[D)V"
        }
    .end annotation

    .prologue
    .line 813
    .local p1, allYLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getOrientation()Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-result-object v17

    .line 814
    .local v17, or:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowGridX()Z

    move-result v18

    .line 815
    .local v18, showGridX:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v19

    .line 816
    .local v19, showLabels:Z
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, p4

    if-ge v12, v0, :cond_7

    .line 817
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1, v12}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 818
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    .line 819
    .local v21, yLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v16

    .line 820
    .local v16, length:I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_6

    .line 821
    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 822
    .local v14, label:D
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1, v12}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v11

    .line 823
    .local v11, axisAlign:Landroid/graphics/Paint$Align;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2, v12}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTextLabel(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v20, 0x1

    .line 824
    .local v20, textLabel:Z
    :goto_2
    move/from16 v0, p7

    int-to-double v1, v0

    aget-wide v4, p8, v12

    aget-wide v6, p9, v12

    sub-double v6, v14, v6

    mul-double/2addr v4, v6

    sub-double/2addr v1, v4

    double-to-float v3, v1

    .line 825
    .local v3, yLabel:F
    sget-object v1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v17

    if-ne v0, v1, :cond_4

    .line 826
    if-eqz v19, :cond_0

    if-nez v20, :cond_0

    .line 827
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1, v12}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsColor(I)I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 828
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v11, v1, :cond_3

    .line 829
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v1

    add-int v1, v1, p5

    int-to-float v2, v1

    move/from16 v0, p5

    int-to-float v4, v0

    move-object/from16 v1, p2

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 830
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/achartengine/chart/XYChart;->getLabel(D)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p5

    int-to-float v7, v0

    const/high16 v1, 0x4000

    sub-float v8, v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v10

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v10}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 836
    :cond_0
    :goto_3
    if-eqz v18, :cond_1

    .line 837
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 838
    move/from16 v0, p5

    int-to-float v2, v0

    move/from16 v0, p6

    int-to-float v4, v0

    move-object/from16 v1, p2

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 820
    :cond_1
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 823
    .end local v3           #yLabel:F
    .end local v20           #textLabel:Z
    :cond_2
    const/16 v20, 0x0

    goto :goto_2

    .line 832
    .restart local v3       #yLabel:F
    .restart local v20       #textLabel:Z
    :cond_3
    move/from16 v0, p6

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v1

    add-int v1, v1, p6

    int-to-float v4, v1

    move-object/from16 v1, p2

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 833
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/achartengine/chart/XYChart;->getLabel(D)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p6

    int-to-float v7, v0

    const/high16 v1, 0x4000

    sub-float v8, v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v10

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v10}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_3

    .line 840
    :cond_4
    sget-object v1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v17

    if-ne v0, v1, :cond_1

    .line 841
    if-eqz v19, :cond_5

    if-nez v20, :cond_5

    .line 842
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1, v12}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsColor(I)I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 843
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v1

    sub-int v1, p6, v1

    int-to-float v2, v1

    move/from16 v0, p6

    int-to-float v4, v0

    move-object/from16 v1, p2

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 844
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/achartengine/chart/XYChart;->getLabel(D)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v1, p6, 0xa

    int-to-float v7, v1

    const/high16 v1, 0x4000

    sub-float v8, v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v10

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v10}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 846
    :cond_5
    if-eqz v18, :cond_1

    .line 847
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 848
    move/from16 v0, p6

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v4, v0

    move-object/from16 v1, p2

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 816
    .end local v3           #yLabel:F
    .end local v11           #axisAlign:Landroid/graphics/Paint$Align;
    .end local v14           #label:D
    .end local v20           #textLabel:Z
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 853
    .end local v13           #j:I
    .end local v16           #length:I
    .end local v21           #yLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    :cond_7
    return-void
.end method

.method public getCalcRange(I)[D
    .locals 2
    .parameter "scale"

    .prologue
    .line 943
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public abstract getChartType()Ljava/lang/String;
.end method

.method public getDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    return-object v0
.end method

.method public getDefaultMinimum()D
    .locals 2

    .prologue
    .line 1093
    const-wide v0, 0x7fefffffffffffffL

    return-wide v0
.end method

.method protected getLabel(D)Ljava/lang/String;
    .locals 4
    .parameter "label"

    .prologue
    .line 714
    const-string v0, ""

    .line 715
    .local v0, text:Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    cmpl-double v1, p1, v1

    if-nez v1, :cond_0

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    :goto_0
    return-object v0

    .line 718
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPointsChart()Lorg/achartengine/chart/ScatterChart;
    .locals 1

    .prologue
    .line 1102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    return-object v0
.end method

.method protected getScreenR()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSeriesAndPointForScreenCoordinate(Lorg/achartengine/model/Point;)Lorg/achartengine/model/SeriesSelection;
    .locals 10
    .parameter "screenPoint"

    .prologue
    .line 1006
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 1007
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local v1, seriesIndex:I
    :goto_0
    if-ltz v1, :cond_2

    .line 1014
    const/4 v2, 0x0

    .line 1015
    .local v2, pointIndex:I
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1017
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/achartengine/chart/ClickableArea;

    .line 1018
    .local v7, area:Lorg/achartengine/chart/ClickableArea;
    invoke-virtual {v7}, Lorg/achartengine/chart/ClickableArea;->getRect()Landroid/graphics/RectF;

    move-result-object v9

    .line 1019
    .local v9, rectangle:Landroid/graphics/RectF;
    if-eqz v9, :cond_0

    invoke-virtual {p1}, Lorg/achartengine/model/Point;->getX()F

    move-result v0

    invoke-virtual {p1}, Lorg/achartengine/model/Point;->getY()F

    move-result v3

    invoke-virtual {v9, v0, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    new-instance v0, Lorg/achartengine/model/SeriesSelection;

    invoke-virtual {v7}, Lorg/achartengine/chart/ClickableArea;->getX()D

    move-result-wide v3

    invoke-virtual {v7}, Lorg/achartengine/chart/ClickableArea;->getY()D

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lorg/achartengine/model/SeriesSelection;-><init>(IIDD)V

    .line 1026
    .end local v1           #seriesIndex:I
    .end local v2           #pointIndex:I
    .end local v7           #area:Lorg/achartengine/chart/ClickableArea;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #rectangle:Landroid/graphics/RectF;
    :goto_2
    return-object v0

    .line 1022
    .restart local v1       #seriesIndex:I
    .restart local v2       #pointIndex:I
    .restart local v7       #area:Lorg/achartengine/chart/ClickableArea;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #rectangle:Landroid/graphics/RectF;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1007
    .end local v7           #area:Lorg/achartengine/chart/ClickableArea;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #rectangle:Landroid/graphics/RectF;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1026
    .end local v1           #seriesIndex:I
    .end local v2           #pointIndex:I
    :cond_2
    invoke-super {p0, p1}, Lorg/achartengine/chart/AbstractChart;->getSeriesAndPointForScreenCoordinate(Lorg/achartengine/model/Point;)Lorg/achartengine/model/SeriesSelection;

    move-result-object v0

    goto :goto_2
.end method

.method protected getUnitLabel(D)Ljava/lang/String;
    .locals 5
    .parameter "label"

    .prologue
    const-wide/high16 v3, 0x4090

    .line 724
    const-string v0, ""

    .line 725
    .local v0, text:Ljava/lang/String;
    cmpg-double v1, p1, v3

    if-gez v1, :cond_0

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    :goto_0
    return-object v0

    .line 728
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/achartengine/chart/XYChart;->decimalFormat:Ljava/text/DecimalFormat;

    div-double v3, p1, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getXLabels(DDI)Ljava/util/List;
    .locals 1
    .parameter "min"
    .parameter "max"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    invoke-static {p1, p2, p3, p4, p5}, Lorg/achartengine/util/MathHelper;->getLabels(DDI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getYLabels([D[DI)Ljava/util/Map;
    .locals 8
    .parameter "minY"
    .parameter "maxY"
    .parameter "maxScaleNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D[DI)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 531
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 532
    .local v0, allYLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 533
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-wide v3, p1, v1

    aget-wide v5, p2, v1

    iget-object v7, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabels()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Lorg/achartengine/util/MathHelper;->getLabels(DDI)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/achartengine/chart/XYChart;->getValidLabels(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    :cond_0
    return-object v0
.end method

.method protected isRenderNullValues()Z
    .locals 1

    .prologue
    .line 1074
    const/4 v0, 0x0

    return v0
.end method

.method public isRenderPoints(Lorg/achartengine/renderer/SimpleSeriesRenderer;)Z
    .locals 1
    .parameter "renderer"

    .prologue
    .line 1084
    const/4 v0, 0x0

    return v0
.end method

.method public setCalcRange([DI)V
    .locals 2
    .parameter "range"
    .parameter "scale"

    .prologue
    .line 947
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    return-void
.end method

.method protected setDatasetRenderer(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 0
    .parameter "dataset"
    .parameter "renderer"

    .prologue
    .line 122
    iput-object p1, p0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 123
    iput-object p2, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 124
    return-void
.end method

.method protected setScreenR(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "screenR"

    .prologue
    .line 543
    iput-object p1, p0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    .line 544
    return-void
.end method

.method public toRealPoint(FF)[D
    .locals 1
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    .line 951
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/achartengine/chart/XYChart;->toRealPoint(FFI)[D

    move-result-object v0

    return-object v0
.end method

.method public toRealPoint(FFI)[D
    .locals 16
    .parameter "screenX"
    .parameter "screenY"
    .parameter "scale"

    .prologue
    .line 976
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin(I)D

    move-result-wide v6

    .line 977
    .local v6, realMinX:D
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax(I)D

    move-result-wide v2

    .line 978
    .local v2, realMaxX:D
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin(I)D

    move-result-wide v8

    .line 979
    .local v8, realMinY:D
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax(I)D

    move-result-wide v4

    .line 981
    .local v4, realMaxY:D
    const/4 v10, 0x2

    :try_start_0
    new-array v10, v10, [D

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float v12, p1, v12

    float-to-double v12, v12

    sub-double v14, v2, v6

    mul-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-double v14, v14

    div-double/2addr v12, v14

    add-double/2addr v12, v6

    aput-wide v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    sub-float v12, v12, p2

    float-to-double v12, v12

    sub-double v14, v4, v8

    mul-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-double v14, v14

    div-double/2addr v12, v14

    add-double/2addr v12, v8

    aput-wide v12, v10, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    :goto_0
    return-object v10

    .line 983
    :catch_0
    move-exception v1

    .line 984
    .local v1, e:Ljava/lang/Exception;
    const/4 v10, 0x2

    new-array v10, v10, [D

    fill-array-data v10, :array_0

    goto :goto_0

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public toScreenPoint([D)[D
    .locals 1
    .parameter "realPoint"

    .prologue
    .line 955
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/achartengine/chart/XYChart;->toScreenPoint([DI)[D

    move-result-object v0

    return-object v0
.end method

.method public toScreenPoint([DI)[D
    .locals 17
    .parameter "realPoint"
    .parameter "scale"

    .prologue
    .line 989
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin(I)D

    move-result-wide v7

    .line 990
    .local v7, realMinX:D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax(I)D

    move-result-wide v3

    .line 991
    .local v3, realMaxX:D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin(I)D

    move-result-wide v9

    .line 992
    .local v9, realMinY:D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax(I)D

    move-result-wide v5

    .line 993
    .local v5, realMaxY:D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxXSet(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxYSet(I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 995
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/achartengine/chart/XYChart;->getCalcRange(I)[D

    move-result-object v2

    .line 996
    .local v2, calcRange:[D
    const/4 v11, 0x0

    aget-wide v7, v2, v11

    .line 997
    const/4 v11, 0x1

    aget-wide v3, v2, v11

    .line 998
    const/4 v11, 0x2

    aget-wide v9, v2, v11

    .line 999
    const/4 v11, 0x3

    aget-wide v5, v2, v11

    .line 1001
    .end local v2           #calcRange:[D
    :cond_1
    const/4 v11, 0x2

    new-array v11, v11, [D

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-wide v13, p1, v13

    sub-double/2addr v13, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-double v15, v15

    mul-double/2addr v13, v15

    sub-double v15, v3, v7

    div-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-double v15, v15

    add-double/2addr v13, v15

    aput-wide v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-wide v13, p1, v13

    sub-double v13, v5, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-double v15, v15

    mul-double/2addr v13, v15

    sub-double v15, v5, v9

    div-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-double v15, v15

    add-double/2addr v13, v15

    aput-wide v13, v11, v12

    return-object v11
.end method
